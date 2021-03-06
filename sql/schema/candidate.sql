DROP TABLE IF EXISTS CandidateData;
CREATE TABLE IF NOT EXISTS CandidateData (
    recordType                     varchar(255),
    formTypeCd                     varchar(255),
    schedFormTypeCd                varchar(255),
    reportInfoIdent                bigint,
    receivedDt                     date,
    infoOnlyFlag                   varchar(255),
    filerIdent                     varchar(255),
    filerTypeCd                    varchar(255),
    filerName                      varchar(255),
    expendInfoId                   bigint,
    expendPersentId                bigint,
    expendDt                       date,
    expendAmount                   numeric(12,2),
    expendDescr                    varchar(255),
    expendCatCd                    varchar(255),
    expendCatDescr                 varchar(255),
    itemizeFlag                    varchar(255),
    politicalExpendCd              varchar(255),
    reimburseIntendedFlag          varchar(255),
    srcCorpContribFlag             varchar(255),
    capitalLivingexpFlag           varchar(255),
    candidatePersentTypeCd         varchar(255),
    candidateNameOrganization      varchar(255),
    candidateNameLast              varchar(255),
    candidateNameSuffixCd          varchar(255),
    candidateNameFirst             varchar(255),
    candidateNamePrefixCd          varchar(255),
    candidateNameShort             varchar(255),
    candidateHoldOfficeCd          varchar(255),
    candidateHoldOfficeDistrict    varchar(255),
    candidateHoldOfficePlace       varchar(255),
    candidateHoldOfficeDescr       varchar(255),
    candidateHoldOfficeCountyCd    varchar(255),
    candidateHoldOfficeCountyDescr varchar(255),
    candidateSeekOfficeCd          varchar(255),
    candidateSeekOfficeDistrict    varchar(255),
    candidateSeekOfficePlace       varchar(255),
    candidateSeekOfficeDescr       varchar(255),
    candidateSeekOfficeCountyCd    varchar(255),
    candidateSeekOfficeCountyDescr varchar(255)
);
