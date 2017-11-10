DROP TABLE IF EXISTS ExpendData;
CREATE TABLE IF NOT EXISTS ExpendData (
    recordType            varchar(255),
    formTypeCd            varchar(255),
    schedFormTypeCd       varchar(255),
    reportInfoIdent       bigint,
    receivedDt            date,
    infoOnlyFlag          varchar(255),
    filerIdent            varchar(255),
    filerTypeCd           varchar(255),
    filerName             varchar(255),
    expendInfoId          bigint,
    expendDt              date,
    expendAmount          numeric(12,2),
    expendDescr           varchar(255),
    expendCatCd           varchar(255),
    expendCatDescr        varchar(255),
    itemizeFlag           varchar(255),
    travelFlag            varchar(255),
    politicalExpendCd     varchar(255),
    reimburseIntendedFlag varchar(255),
    srcCorpContribFlag    varchar(255),
    capitalLivingexpFlag  varchar(255),
    payeePersentTypeCd    varchar(255),
    payeeNameOrganization varchar(255),
    payeeNameLast         varchar(255),
    payeeNameSuffixCd     varchar(255),
    payeeNameFirst        varchar(255),
    payeeNamePrefixCd     varchar(255),
    payeeNameShort        varchar(255),
    payeeStreetAddr1      varchar(255),
    payeeStreetAddr2      varchar(255),
    payeeStreetCity       varchar(255),
    payeeStreetStateCd    varchar(255),
    
    payeeStreetCountyCd   varchar(255),
    payeeStreetCountryCd  varchar(255),
    payeeStreetPostalCode varchar(255),
    payeeStreetRegion     varchar(255)
);

DROP TABLE IF EXISTS ExpendCategory;
CREATE TABLE IF NOT EXISTS ExpendCategory (
    recordType              varchar(255),
    expendCategoryCodeValue varchar(255),
    expendCategoryCodeLabel varchar(255)
);
