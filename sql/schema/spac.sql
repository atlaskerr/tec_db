DROP TABLE IF EXISTS SpacData;
CREATE TABLE IF NOT EXISTS SpacData (
    recordType                     varchar(255),
    spacFilerIdent                 varchar(255),
    spacFilerTypeCd                varchar(255),
    spacFilerName                  varchar(255),
    spacFilerNameShort             varchar(255),
    spacCommitteeStatusCd          varchar(255),
    spactreasEffStartDt            date,
    spactreasEffStopDt             date,
    spacPositionCd                 varchar(255),
    candidateFilerIdent            varchar(255),
    candidateFilerTypeCd           varchar(255),
    candidateFilerName             varchar(255),
    candidateFilerpersStatusCd     varchar(255),
    candidateEffStartDt            date,
    candidateEffStopDt             date,
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
    candidateSeekOfficeCountyDescr varchar(255),
    ctaSeekOfficeCd                varchar(255),
    ctaSeekOfficeDistrict          varchar(255),
    ctaSeekOfficePlace             varchar(255),
    ctaSeekOfficeDescr             varchar(255),
    ctaSeekOfficeCountyCd          varchar(255),
    ctaSeekOfficeCountyDescr       varchar(255),
    candtreasFilerpersStatusCd     varchar(255),
    candtreasEffStartDt            date,
    candtreasEffStopDt             date
);
