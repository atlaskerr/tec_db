DROP TABLE IF EXISTS FilerData;
CREATE TABLE IF NOT EXISTS FilerData (
    recordType                   varchar(255),
    filerIdent                   varchar(255),
    filerTypeCd                  varchar(255),
    filerName                    varchar(255),
    unexpendContribFilerFlag     varchar(255),
    modifiedElectCycleFlag       varchar(255),
    filerJdiCd                   varchar(255),
    committeeStatusCd            varchar(255),
    ctaSeekOfficeCd              varchar(255),
    ctaSeekOfficeDistrict        varchar(255),
    ctaSeekOfficePlace           varchar(255),
    ctaSeekOfficeDescr           varchar(255),
    ctaSeekOfficeCountyCd        varchar(255),
    ctaSeekOfficeCountyDescr     varchar(255),
    filerPersentTypeCd           varchar(255),
    filerNameOrganization        varchar(255),
    filerNameLast                varchar(255),
    filerNameSuffixCd            varchar(255),
    filerNameFirst               varchar(255),
    filerNamePrefixCd            varchar(255),
    filerNameShort               varchar(255),
    filerStreetAddr1             varchar(255),
    filerStreetAddr2             varchar(255),
    filerStreetCity              varchar(255),
    filerStreetStateCd           varchar(255),
    
    filerStreetCountyCd          varchar(255),
    filerStreetCountryCd         varchar(255),
    filerStreetPostalCode        varchar(255),
    filerStreetRegion            varchar(255),
    filerMailingAddr1            varchar(255),
    filerMailingAddr2            varchar(255),
    filerMailingCity             varchar(255),
    filerMailingStateCd          varchar(255),
    
    filerMailingCountyCd         varchar(255),
    filerMailingCountryCd        varchar(255),
    filerMailingPostalCode       varchar(255),
    filerMailingRegion           varchar(255),
    filerPrimaryUsaPhoneFlag     varchar(255),
    
    filerPrimaryPhoneNumber      varchar(255),
    filerPrimaryPhoneExt         varchar(255),
    filerHoldOfficeCd            varchar(255),
    filerHoldOfficeDistrict      varchar(255),
    filerHoldOfficePlace         varchar(255),
    filerHoldOfficeDescr         varchar(255),
    filerHoldOfficeCountyCd      varchar(255),
    filerHoldOfficeCountyDescr   varchar(255),
    filerFilerpersStatusCd       varchar(255),
    filerEffStartDt              date,
    filerEffStopDt               date,
    contestSeekOfficeCd          varchar(255),
    contestSeekOfficeDistrict    varchar(255),
    contestSeekOfficePlace       varchar(255),
    contestSeekOfficeDescr       varchar(255),
    contestSeekOfficeCountyCd    varchar(255),
    contestSeekOfficeCountyDescr varchar(255),
    treasPersentTypeCd           varchar(255),
    treasNameOrganization        varchar(255),
    treasNameLast                varchar(255),
    treasNameSuffixCd            varchar(255),
    treasNameFirst               varchar(255),
    treasNamePrefixCd            varchar(255),
    treasNameShort               varchar(255),
    treasStreetAddr1             varchar(255),
    treasStreetAddr2             varchar(255),
    treasStreetCity              varchar(255),
    treasStreetStateCd           varchar(255),
    
    treasStreetCountyCd          varchar(255),
    treasStreetCountryCd         varchar(255),
    treasStreetPostalCode        varchar(255),
    treasStreetRegion            varchar(255),
    treasMailingAddr1            varchar(255),
    treasMailingAddr2            varchar(255),
    treasMailingCity             varchar(255),
    treasMailingStateCd          varchar(255),
    
    treasMailingCountyCd         varchar(255),
    treasMailingCountryCd        varchar(255),
    treasMailingPostalCode       varchar(255),
    treasMailingRegion           varchar(255),
    treasPrimaryUsaPhoneFlag     varchar(255),
    
    treasPrimaryPhoneNumber      varchar(255),
    treasPrimaryPhoneExt         varchar(255),
    treasAppointorNameLast       varchar(255),
    treasAppointorNameFirst      varchar(255),
    treasFilerpersStatusCd       varchar(255),
    treasEffStartDt              date,
    treasEffStopDt               date,
    assttreasPersentTypeCd       varchar(255),
    assttreasNameOrganization    varchar(255),
    assttreasNameLast            varchar(255),
    assttreasNameSuffixCd        varchar(255),
    assttreasNameFirst           varchar(255),
    assttreasNamePrefixCd        varchar(255),
    assttreasNameShort           varchar(255),
    assttreasStreetAddr1         varchar(255),
    assttreasStreetAddr2         varchar(255),
    assttreasStreetCity          varchar(255),
    assttreasStreetStateCd       varchar(255),
    
    assttreasStreetCountyCd      varchar(255),
    assttreasStreetCountryCd     varchar(255),
    assttreasStreetPostalCode    varchar(255),
    
    assttreasStreetRegion        varchar(255),
    assttreasPrimaryUsaPhoneFlag varchar(255),
    
    assttreasPrimaryPhoneNumber  varchar(255),
    assttreasPrimaryPhoneExt     varchar(255),
    assttreasAppointorNameLast   varchar(255),
    assttreasAppointorNameFirst  varchar(255),
    chairPersentTypeCd           varchar(255),
    chairNameOrganization        varchar(255),
    chairNameLast                varchar(255),
    chairNameSuffixCd            varchar(255),
    chairNameFirst               varchar(255),
    chairNamePrefixCd            varchar(255),
    chairNameShort               varchar(255),
    chairStreetAddr1             varchar(255),
    chairStreetAddr2             varchar(255),
    chairStreetCity              varchar(255),
    chairStreetStateCd           varchar(255),
    
    chairStreetCountyCd          varchar(255),
    chairStreetCountryCd         varchar(255),
    chairStreetPostalCode        varchar(255),
    chairStreetRegion            varchar(255),
    chairMailingAddr1            varchar(255),
    chairMailingAddr2            varchar(255),
    chairMailingCity             varchar(255),
    chairMailingStateCd          varchar(255),
    
    chairMailingCountyCd         varchar(255),
    chairMailingCountryCd        varchar(255),
    chairMailingPostalCode       varchar(255),
    chairMailingRegion           varchar(255),
    chairPrimaryUsaPhoneFlag     varchar(255),
    
    chairPrimaryPhoneNumber      varchar(255),
    chairPrimaryPhoneExt         varchar(255)
);
