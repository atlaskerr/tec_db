DROP TABLE IF EXISTS CreditData;
CREATE TABLE IF NOT EXISTS CreditData (
    recordType            varchar(255),
    formTypeCd            varchar(255),
    schedFormTypeCd       varchar(255),
    reportInfoIdent       bigint,
    receivedDt            date,
    infoOnlyFlag          varchar(255),
    filerIdent            varchar(255),
    filerTypeCd           varchar(255),
    filerName             varchar(255),
    creditInfoId          bigint,
    creditDt              date,
    creditAmount          numeric(12,2),
    creditDescr           varchar(255),
    payorPersentTypeCd    varchar(255),
    payorNameOrganization varchar(255),
    payorNameLast         varchar(255),
    payorNameSuffixCd     varchar(255),
    payorNameFirst        varchar(255),
    payorNamePrefixCd     varchar(255),
    payorNameShort        varchar(255),
    payorStreetAddr1      varchar(255),
    payorStreetAddr2      varchar(255),
    payorStreetCity       varchar(255),
    payorStreetStateCd    varchar(255),
    
    payorStreetCountyCd   varchar(255),
    payorStreetCountryCd  varchar(255),
    payorStreetPostalCode varchar(255),
    payorStreetRegion     varchar(255)
);
