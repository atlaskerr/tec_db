DROP TABLE IF EXISTS FinalData;
CREATE TABLE IF NOT EXISTS FinalData (
    recordType               varchar(255),
    formTypeCd               varchar(255),
    reportInfoIdent          bigint,
    receivedDt               date,
    infoOnlyFlag             varchar(255),
    filerIdent               varchar(255),
    filerTypeCd              varchar(255),
    filerName                varchar(255),
    finalUnexpendContribFlag varchar(255),
    finalRetainedAssetsFlag  varchar(255),
    finalOfficeholderAckFlag varchar(255)
);
