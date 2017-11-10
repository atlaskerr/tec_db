-- Assets - Schedule M - Assets valued at $500 or more for judicial filers only.
DROP TABLE IF EXISTS AssetData;
CREATE TABLE IF NOT EXISTS AssetData (
    recordType      varchar(255),
    formTypeCd      varchar(255),
    schedFormTypeCd varchar(255),
    reportInfoIdent bigint,
    receivedDt      date,
    infoOnlyFlag    varchar(255),
    filerIdent      varchar(255),
    filerTypeCd     varchar(255),
    filerName       varchar(255),
    assetInfoId     bigint,
    assetDescr      varchar(255)
);
