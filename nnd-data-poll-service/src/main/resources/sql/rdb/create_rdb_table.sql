--Referenced Incremental_Refresh_SQL_RDB.sql and 6.0.16 DDL

/****** Object:  Table dbo.D_PATIENT    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.D_PATIENT
(
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_MPR_UID 
    bigint
    NULL, 
    PATIENT_RECORD_STATUS 
    varchar
(
    50
) NULL,
    PATIENT_LOCAL_ID varchar
(
    50
) NULL,
    PATIENT_GENERAL_COMMENTS varchar
(
    2000
) NULL,
    PATIENT_FIRST_NAME varchar
(
    50
) NULL,
    PATIENT_MIDDLE_NAME varchar
(
    50
) NULL,
    PATIENT_LAST_NAME varchar
(
    50
) NULL,
    PATIENT_NAME_SUFFIX varchar
(
    50
) NULL,
    PATIENT_ALIAS_NICKNAME varchar
(
    50
) NULL,
    PATIENT_STREET_ADDRESS_1 varchar
(
    50
) NULL,
    PATIENT_STREET_ADDRESS_2 varchar
(
    50
) NULL,
    PATIENT_CITY varchar
(
    50
) NULL,
    PATIENT_STATE varchar
(
    50
) NULL,
    PATIENT_STATE_CODE varchar
(
    50
) NULL,
    PATIENT_ZIP varchar
(
    50
) NULL,
    PATIENT_COUNTY varchar
(
    50
) NULL,
    PATIENT_COUNTY_CODE varchar
(
    50
) NULL,
    PATIENT_COUNTRY varchar
(
    50
) NULL,
    PATIENT_WITHIN_CITY_LIMITS varchar
(
    10
) NULL,
    PATIENT_PHONE_HOME varchar
(
    50
) NULL,
    PATIENT_PHONE_EXT_HOME varchar
(
    50
) NULL,
    PATIENT_PHONE_WORK varchar
(
    50
) NULL,
    PATIENT_PHONE_EXT_WORK varchar
(
    50
) NULL,
    PATIENT_PHONE_CELL varchar
(
    50
) NULL,
    PATIENT_EMAIL varchar
(
    100
) NULL,
    PATIENT_DOB datetime NULL,
    PATIENT_AGE_REPORTED numeric
(
    18,
    0
) NULL,
    PATIENT_AGE_REPORTED_UNIT varchar
(
    20
) NULL,
    PATIENT_BIRTH_SEX varchar
(
    50
) NULL,
    PATIENT_CURRENT_SEX varchar
(
    50
) NULL,
    PATIENT_DECEASED_INDICATOR varchar
(
    50
) NULL,
    PATIENT_DECEASED_DATE datetime NULL,
    PATIENT_MARITAL_STATUS varchar
(
    50
) NULL,
    PATIENT_SSN varchar
(
    50
) NULL,
    PATIENT_ETHNICITY varchar
(
    50
) NULL,
    PATIENT_RACE_CALCULATED varchar
(
    50
) NULL,
    PATIENT_RACE_CALC_DETAILS varchar
(
    4000
) NULL,
    PATIENT_RACE_AMER_IND_1 varchar
(
    50
) NULL,
    PATIENT_RACE_AMER_IND_2 varchar
(
    50
) NULL,
    PATIENT_RACE_AMER_IND_3 varchar
(
    50
) NULL,
    PATIENT_RACE_AMER_IND_GT3_IND varchar
(
    50
) NULL,
    PATIENT_RACE_AMER_IND_ALL varchar
(
    2000
) NULL,
    PATIENT_RACE_ASIAN_1 varchar
(
    50
) NULL,
    PATIENT_RACE_ASIAN_2 varchar
(
    50
) NULL,
    PATIENT_RACE_ASIAN_3 varchar
(
    50
) NULL,
    PATIENT_RACE_ASIAN_GT3_IND varchar
(
    50
) NULL,
    PATIENT_RACE_ASIAN_ALL varchar
(
    2000
) NULL,
    PATIENT_RACE_BLACK_1 varchar
(
    50
) NULL,
    PATIENT_RACE_BLACK_2 varchar
(
    50
) NULL,
    PATIENT_RACE_BLACK_3 varchar
(
    50
) NULL,
    PATIENT_RACE_BLACK_GT3_IND varchar
(
    50
) NULL,
    PATIENT_RACE_BLACK_ALL varchar
(
    2000
) NULL,
    PATIENT_RACE_NAT_HI_1 varchar
(
    50
) NULL,
    PATIENT_RACE_NAT_HI_2 varchar
(
    50
) NULL,
    PATIENT_RACE_NAT_HI_3 varchar
(
    50
) NULL,
    PATIENT_RACE_NAT_HI_GT3_IND varchar
(
    50
) NULL,
    PATIENT_RACE_NAT_HI_ALL varchar
(
    2000
) NULL,
    PATIENT_RACE_WHITE_1 varchar
(
    50
) NULL,
    PATIENT_RACE_WHITE_2 varchar
(
    50
) NULL,
    PATIENT_RACE_WHITE_3 varchar
(
    50
) NULL,
    PATIENT_RACE_WHITE_GT3_IND varchar
(
    50
) NULL,
    PATIENT_RACE_WHITE_ALL varchar
(
    2000
) NULL,
    PATIENT_NUMBER varchar
(
    50
) NULL,
    PATIENT_NUMBER_AUTH varchar
(
    199
) NULL,
    PATIENT_ENTRY_METHOD varchar
(
    50
) NULL,
    PATIENT_LAST_CHANGE_TIME datetime NULL,
    PATIENT_UID bigint NULL,
    PATIENT_ADD_TIME datetime NULL,
    PATIENT_ADDED_BY varchar
(
    50
) NULL,
    PATIENT_LAST_UPDATED_BY varchar
(
    50
) NULL,
    PATIENT_SPEAKS_ENGLISH varchar
(
    100
) NULL,
    PATIENT_UNK_ETHNIC_RSN varchar
(
    100
) NULL,
    PATIENT_CURR_SEX_UNK_RSN varchar
(
    100
) NULL,
    PATIENT_PREFERRED_GENDER varchar
(
    100
) NULL,
    PATIENT_ADDL_GENDER_INFO varchar
(
    100
) NULL,
    PATIENT_CENSUS_TRACT varchar
(
    100
) NULL,
    PATIENT_RACE_ALL varchar
(
    4000
) NULL,
    PATIENT_BIRTH_COUNTRY varchar
(
    50
) NULL,
    PATIENT_PRIMARY_OCCUPATION varchar
(
    50
) NULL,
    PATIENT_PRIMARY_LANGUAGE varchar
(
    50
) NULL,
    CONSTRAINT PK_D_PATIENT PRIMARY KEY CLUSTERED
(

    PATIENT_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.CONDITION    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.CONDITION
(
    
    CONDITION_CD 
    varchar
(
    50
) NULL,
    CONDITION_DESC varchar
(
    300
) NULL,
    CONDITION_SHORT_NM varchar
(
    50
) NULL,
    CONDITION_CD_EFF_DT datetime NULL,
    CONDITION_CD_END_DT datetime NULL,
    NND_IND varchar
(
    50
) NULL,
    CONDITION_KEY bigint NOT NULL,
    DISEASE_GRP_CD varchar
(
    50
) NULL,
    DISEASE_GRP_DESC varchar
(
    50
) NULL,
    PROGRAM_AREA_CD varchar
(
    20
) NULL,
    PROGRAM_AREA_DESC varchar
(
    100
) NULL,
    CONDITION_CD_SYS_CD_NM varchar
(
    100
) NULL,
    ASSIGNING_AUTHORITY_CD varchar
(
    199
) NULL,
    ASSIGNING_AUTHORITY_DESC varchar
(
    100
) NULL,
    CONDITION_CD_SYS_CD varchar
(
    50
) NULL,
    PRIMARY KEY CLUSTERED
(

    CONDITION_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.D_ORGANIZATION    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.D_ORGANIZATION
(
    
    ORGANIZATION_KEY 
    bigint
    NOT
    NULL, 
    ORGANIZATION_UID 
    bigint
    NULL, 
    ORGANIZATION_LOCAL_ID 
    varchar
(
    50
) NULL,
    ORGANIZATION_RECORD_STATUS varchar
(
    50
) NULL,
    ORGANIZATION_NAME varchar
(
    50
) NULL,
    ORGANIZATION_GENERAL_COMMENTS varchar
(
    2000
) NULL,
    ORGANIZATION_QUICK_CODE varchar
(
    50
) NULL,
    ORGANIZATION_STAND_IND_CLASS varchar
(
    50
) NULL,
    ORGANIZATION_FACILITY_ID varchar
(
    50
) NULL,
    ORGANIZATION_FACILITY_ID_AUTH varchar
(
    199
) NULL,
    ORGANIZATION_STREET_ADDRESS_1 varchar
(
    50
) NULL,
    ORGANIZATION_STREET_ADDRESS_2 varchar
(
    50
) NULL,
    ORGANIZATION_CITY varchar
(
    50
) NULL,
    ORGANIZATION_STATE varchar
(
    50
) NULL,
    ORGANIZATION_STATE_CODE varchar
(
    50
) NULL,
    ORGANIZATION_ZIP varchar
(
    10
) NULL,
    ORGANIZATION_COUNTY varchar
(
    50
) NULL,
    ORGANIZATION_COUNTY_CODE varchar
(
    50
) NULL,
    ORGANIZATION_COUNTRY varchar
(
    50
) NULL,
    ORGANIZATION_ADDRESS_COMMENTS varchar
(
    2000
) NULL,
    ORGANIZATION_PHONE_WORK varchar
(
    50
) NULL,
    ORGANIZATION_PHONE_EXT_WORK varchar
(
    50
) NULL,
    ORGANIZATION_EMAIL varchar
(
    50
) NULL,
    ORGANIZATION_PHONE_COMMENTS varchar
(
    2000
) NULL,
    ORGANIZATION_ENTRY_METHOD varchar
(
    50
) NULL,
    ORGANIZATION_LAST_CHANGE_TIME datetime NULL,
    ORGANIZATION_ADD_TIME datetime NULL,
    ORGANIZATION_ADDED_BY varchar
(
    50
) NULL,
    ORGANIZATION_LAST_UPDATED_BY varchar
(
    50
) NULL,
    ORGANIZATION_FAX varchar
(
    50
) NULL,
    CONSTRAINT PK_D_ORGANIZATION PRIMARY KEY CLUSTERED
(

    ORGANIZATION_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.D_PROVIDER    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.D_PROVIDER
(
    
    PROVIDER_UID 
    bigint
    NULL, 
    PROVIDER_KEY 
    bigint
    NOT
    NULL, 
    PROVIDER_LOCAL_ID 
    varchar
(
    50
) NULL,
    PROVIDER_RECORD_STATUS varchar
(
    50
) NULL,
    PROVIDER_NAME_PREFIX varchar
(
    50
) NULL,
    PROVIDER_FIRST_NAME varchar
(
    50
) NULL,
    PROVIDER_MIDDLE_NAME varchar
(
    50
) NULL,
    PROVIDER_LAST_NAME varchar
(
    50
) NULL,
    PROVIDER_NAME_SUFFIX varchar
(
    50
) NULL,
    PROVIDER_NAME_DEGREE varchar
(
    50
) NULL,
    PROVIDER_GENERAL_COMMENTS varchar
(
    2000
) NULL,
    PROVIDER_QUICK_CODE varchar
(
    50
) NULL,
    PROVIDER_REGISTRATION_NUM varchar
(
    50
) NULL,
    PROVIDER_REGISRATION_NUM_AUTH varchar
(
    199
) NULL,
    PROVIDER_STREET_ADDRESS_1 varchar
(
    50
) NULL,
    PROVIDER_STREET_ADDRESS_2 varchar
(
    50
) NULL,
    PROVIDER_CITY varchar
(
    50
) NULL,
    PROVIDER_STATE varchar
(
    50
) NULL,
    PROVIDER_STATE_CODE varchar
(
    50
) NULL,
    PROVIDER_ZIP varchar
(
    50
) NULL,
    PROVIDER_COUNTY varchar
(
    50
) NULL,
    PROVIDER_COUNTY_CODE varchar
(
    50
) NULL,
    PROVIDER_COUNTRY varchar
(
    50
) NULL,
    PROVIDER_ADDRESS_COMMENTS varchar
(
    2000
) NULL,
    PROVIDER_PHONE_WORK varchar
(
    50
) NULL,
    PROVIDER_PHONE_EXT_WORK varchar
(
    50
) NULL,
    PROVIDER_EMAIL_WORK varchar
(
    50
) NULL,
    PROVIDER_PHONE_COMMENTS varchar
(
    2000
) NULL,
    PROVIDER_PHONE_CELL varchar
(
    50
) NULL,
    PROVIDER_ENTRY_METHOD varchar
(
    50
) NULL,
    PROVIDER_LAST_CHANGE_TIME datetime NULL,
    PROVIDER_ADD_TIME datetime NULL,
    PROVIDER_ADDED_BY varchar
(
    50
) NULL,
    PROVIDER_LAST_UPDATED_BY varchar
(
    50
) NULL,
    CONSTRAINT PK_D_PROVIDER PRIMARY KEY CLUSTERED
(

    PROVIDER_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.INVESTIGATION    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.INVESTIGATION
(
    
    INVESTIGATION_KEY 
    bigint
    NOT
    NULL, 
    CASE_OID 
    bigint
    NULL, 
    CASE_UID 
    bigint
    NULL, 
    INV_LOCAL_ID 
    varchar
(
    50
) NULL,
    INV_SHARE_IND varchar
(
    50
) NULL,
    OUTBREAK_NAME varchar
(
    100
) NULL,
    INVESTIGATION_STATUS varchar
(
    50
) NULL,
    INV_CASE_STATUS varchar
(
    50
) NULL,
    CASE_TYPE varchar
(
    50
) NULL,
    INV_COMMENTS varchar
(
    2000
) NULL,
    JURISDICTION_CD varchar
(
    20
) NULL,
    JURISDICTION_NM varchar
(
    100
) NULL,
    EARLIEST_RPT_TO_PHD_DT datetime NULL,
    ILLNESS_ONSET_DT datetime NULL,
    ILLNESS_END_DT datetime NULL,
    INV_RPT_DT datetime NULL,
    INV_START_DT datetime NULL,
    RPT_SRC_CD_DESC varchar
(
    100
) NULL,
    EARLIEST_RPT_TO_CNTY_DT datetime NULL,
    EARLIEST_RPT_TO_STATE_DT datetime NULL,
    CASE_RPT_MMWR_WK numeric
(
    18,
    0
) NULL,
    CASE_RPT_MMWR_YR numeric
(
    18,
    0
) NULL,
    DISEASE_IMPORTED_IND varchar
(
    100
) NULL,
    IMPORT_FRM_CNTRY varchar
(
    50
) NULL,
    IMPORT_FRM_STATE varchar
(
    50
) NULL,
    IMPORT_FRM_CNTY varchar
(
    50
) NULL,
    IMPORT_FRM_CITY varchar
(
    2000
) NULL,
    EARLIEST_RPT_TO_CDC_DT datetime NULL,
    RPT_SRC_CD varchar
(
    50
) NULL,
    IMPORT_FRM_CNTRY_CD varchar
(
    50
) NULL,
    IMPORT_FRM_STATE_CD varchar
(
    50
) NULL,
    IMPORT_FRM_CNTY_CD varchar
(
    50
) NULL,
    IMPORT_FRM_CITY_CD varchar
(
    50
) NULL,
    DIAGNOSIS_DT datetime NULL,
    HSPTL_ADMISSION_DT datetime NULL,
    HSPTL_DISCHARGE_DT datetime NULL,
    HSPTL_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    OUTBREAK_IND varchar
(
    50
) NULL,
    HSPTLIZD_IND varchar
(
    50
) NULL,
    INV_STATE_CASE_ID varchar
(
    100
) NULL,
    CITY_COUNTY_CASE_NBR varchar
(
    100
) NULL,
    TRANSMISSION_MODE varchar
(
    50
) NULL,
    RECORD_STATUS_CD varchar
(
    8
) NOT NULL,
    PATIENT_PREGNANT_IND varchar
(
    50
) NULL,
    DIE_FRM_THIS_ILLNESS_IND varchar
(
    50
) NULL,
    DAYCARE_ASSOCIATION_IND varchar
(
    50
) NULL,
    FOOD_HANDLR_IND varchar
(
    50
) NULL,
    INVESTIGATION_DEATH_DATE datetime NULL,
    PATIENT_AGE_AT_ONSET numeric
(
    18,
    0
) NULL,
    PATIENT_AGE_AT_ONSET_UNIT varchar
(
    20
) NULL,
    INV_ASSIGNED_DT datetime NULL,
    DETECTION_METHOD_DESC_TXT varchar
(
    50
) NULL,
    ILLNESS_DURATION numeric
(
    18,
    0
) NULL,
    ILLNESS_DURATION_UNIT varchar
(
    50
) NULL,
    CONTACT_INV_COMMENTS varchar
(
    2000
) NULL,
    CONTACT_INV_PRIORITY varchar
(
    20
) NULL,
    CONTACT_INFECTIOUS_FROM_DATE datetime NULL,
    CONTACT_INFECTIOUS_TO_DATE datetime NULL,
    CONTACT_INV_STATUS varchar
(
    20
) NULL,
    INV_CLOSE_DT datetime NULL,
    PROGRAM_AREA_DESCRIPTION varchar
(
    50
) NULL,
    ADD_TIME datetime NULL,
    LAST_CHG_TIME datetime NULL,
    INVESTIGATION_ADDED_BY varchar
(
    50
) NULL,
    INVESTIGATION_LAST_UPDATED_BY varchar
(
    50
) NULL,
    REFERRAL_BASIS varchar
(
    100
) NULL,
    CURR_PROCESS_STATE varchar
(
    100
) NULL,
    INV_PRIORITY_CD varchar
(
    100
) NULL,
    COINFECTION_ID varchar
(
    100
) NULL,
    LEGACY_CASE_ID varchar
(
    100
) NULL,
    OUTBREAK_NAME_DESC varchar
(
    300
) NULL,
    PRIMARY KEY CLUSTERED
(

    INVESTIGATION_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.RDB_DATE    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.RDB_DATE
(
    
    DATE_MM_DD_YYYY 
    datetime
    NULL, 
    DAY_OF_WEEK 
    varchar
(
    10
) NULL,
    DAY_NBR_IN_CLNDR_MON numeric
(
    4,
    0
) NULL,
    DAY_NBR_IN_CLNDR_YR numeric
(
    4,
    0
) NULL,
    WK_NBR_IN_CLNDR_MON numeric
(
    4,
    0
) NULL,
    WK_NBR_IN_CLNDR_YR numeric
(
    4,
    0
) NULL,
    CLNDR_MON_NAME varchar
(
    20
) NULL,
    CLNDR_MON_IN_YR numeric
(
    4,
    0
) NULL,
    CLNDR_QRTR numeric
(
    4,
    0
) NULL,
    CLNDR_YR numeric
(
    18,
    0
) NULL,
    DATE_KEY bigint NOT NULL,
    PRIMARY KEY CLUSTERED
(

    DATE_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.BMIRD_CASE    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.BMIRD_CASE
(
    
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    NURSING_HOME_KEY 
    bigint
    NOT
    NULL, 
    DAYCARE_FACILITY_KEY 
    bigint
    NOT
    NULL, 
    TRANSFERED_IND 
    varchar
(
    50
) NULL,
    INV_ASSIGNED_DT_KEY bigint NOT NULL,
    BIRTH_WEIGHT_IN_GRAMS numeric
(
    18,
    0
) NULL,
    BIRTH_WEIGHT_POUNDS numeric
(
    18,
    0
) NULL,
    WEIGHT_IN_POUNDS numeric
(
    18,
    0
) NULL,
    WEIGHT_IN_OUNCES numeric
(
    18,
    0
) NULL,
    WEIGHT_IN_KILOGRAM numeric
(
    18,
    0
) NULL,
    WEIGHT_UNKNOWN varchar
(
    50
) NULL,
    HEIGHT_IN_FEET numeric
(
    18,
    0
) NULL,
    HEIGHT_IN_INCHES numeric
(
    18,
    0
) NULL,
    HEIGHT_IN_CENTIMETERS numeric
(
    18,
    0
) NULL,
    HEIGHT_UNKNOWN varchar
(
    50
) NULL,
    OTH_STREP_PNEUMO1_CULT_SITES varchar
(
    50
) NULL,
    OTH_STREP_PNEUMO2_CULT_SITES varchar
(
    50
) NULL,
    IHC_SPECIMEN_1 varchar
(
    50
) NULL,
    IHC_SPECIMEN_2 varchar
(
    50
) NULL,
    IHC_SPECIMEN_3 varchar
(
    50
) NULL,
    SAMPLE_COLLECTION_DT datetime NULL,
    CONJ_MENING_VACC varchar
(
    50
) NULL,
    TREATMENT_HOSPITAL_NM varchar
(
    100
) NULL,
    TREATMENT_HOSPITAL_KEY bigint NULL,
    OTH_TYPE_OF_INSURANCE varchar
(
    50
) NULL,
    BIRTH_WEIGHT_OUNCES numeric
(
    18,
    0
) NULL,
    PREGNANT_IND varchar
(
    50
) NULL,
    OUTCOME_OF_FETUS varchar
(
    50
) NULL,
    UNDER_1_MONTH_IND varchar
(
    50
) NULL,
    GESTATIONAL_AGE numeric
(
    18,
    0
) NULL,
    BACTERIAL_SPECIES_ISOLATED varchar
(
    50
) NULL,
    FIRST_POSITIVE_CULTURE_DT datetime NULL,
    UNDERLYING_CONDITION_IND varchar
(
    50
) NULL,
    PATIENT_YR_IN_COLLEGE varchar
(
    50
) NULL,
    CULTURE_SEROTYPE varchar
(
    50
) NULL,
    PATIENT_STATUS_IN_COLLEGE varchar
(
    50
) NULL,
    PATIENT_CURR_LIVING_SITUATION varchar
(
    50
) NULL,
    HIB_VACC_RECEIVED_IND varchar
(
    50
) NULL,
    CULTURE_SEROGROUP varchar
(
    50
) NULL,
    ATTENDING_COLLEGE_IND varchar
(
    50
) NULL,
    OXACILLIN_ZONE_SIZE numeric
(
    18,
    0
) NULL,
    OXACILLIN_INTERPRETATION varchar
(
    50
) NULL,
    PNEUVACC_RECEIVED_IND varchar
(
    50
) NULL,
    PNEUCONJ_RECEIVED_IND varchar
(
    50
) NULL,
    FIRST_ADDITIONAL_SPECIMEN_DT datetime NULL,
    SECOND_ADDITIONAL_SPECIMEN_DT datetime NULL,
    PATIENT_HAD_SURGERY_IND varchar
(
    50
) NULL,
    SURGERY_DT datetime NULL,
    PATIENT_HAVE_BABY_IND varchar
(
    50
) NULL,
    BABY_DELIVERY_DT datetime NULL,
    IDENT_THRU_AUDIT_IND varchar
(
    50
) NULL,
    SAME_PATHOGEN_RECURRENT_IND varchar
(
    50
) NULL,
    OTHER_SPECIES_ISOLATE_SITE varchar
(
    2000
) NULL,
    OTHER_CASE_IDENT_METHOD varchar
(
    2000
) NULL,
    OTHER_HOUSING_OPTION varchar
(
    2000
) NULL,
    PATIENT_CURR_ATTEND_SCHOOL_NM varchar
(
    100
) NULL,
    POLYSAC_MENINGOC_VACC_IND varchar
(
    50
) NULL,
    FAMILY_MEDICAL_INSURANCE_TYPE varchar
(
    50
) NULL,
    HIB_CONTACT_IN_LAST_2_MON_IND varchar
(
    50
) NULL,
    TYPE_HIB_CONTACT_IN_LAST_2_MON varchar
(
    2000
) NULL,
    PRETERM_BIRTH_WK_NBR numeric
(
    18,
    0
) NULL,
    IMMUNOSUPRESSION_HIV_STATUS varchar
(
    2000
) NULL,
    ACUTE_SERUM_AVAILABLE_IND varchar
(
    50
) NULL,
    ACUTE_SERUM_AVAILABLE_DT datetime NULL,
    CONVALESNT_SERUM_AVAILABLE_IND varchar
(
    50
) NULL,
    CONVALESNT_SERUM_AVAILABLE_DT datetime NULL,
    BIRTH_OUTSIDE_HSPTL_IND varchar
(
    50
) NULL,
    BIRTH_OUTSIDE_HSPTL_LOCATION varchar
(
    50
) NULL,
    BABY_HSPTL_DISCHARGE_DTTIME datetime NULL,
    BABY_SAME_HSPTL_READMIT_IND varchar
(
    50
) NULL,
    BABY_SAME_HSPTL_READMIT_DTTIME datetime NULL,
    FRM_HOME_TO_DIF_HSPTL_IND varchar
(
    50
) NULL,
    FRM_HOME_TO_DIF_HSPTL_DTTIME datetime NULL,
    MOTHER_LAST_NM varchar
(
    50
) NULL,
    MOTHER_FIRST_NM varchar
(
    50
) NULL,
    MOTHER_HOSPTL_ADMISSION_DTTIME datetime NULL,
    MOTHER_PATIENT_CHART_NBR varchar
(
    2000
) NULL,
    MOTHER_PENICILLIN_ALLERGY_IND varchar
(
    50
) NULL,
    MEMBRANE_RUPTURE_DTTIME datetime NULL,
    MEMBRANE_RUPTURE_GE_18HRS_IND varchar
(
    50
) NULL,
    RUPTURE_BEFORE_LABOR_ONSET varchar
(
    50
) NULL,
    MEMBRANE_RUPTURE_TYPE varchar
(
    50
) NULL,
    DELIVERY_TYPE varchar
(
    50
) NULL,
    MOTHER_INTRAPARTUM_FEVER_IND varchar
(
    50
) NULL,
    FIRST_INTRAPARTUM_FEVER_DTTIME datetime NULL,
    RECEIVED_PRENATAL_CARE_IND varchar
(
    50
) NULL,
    PRENATAL_CARE_IN_LABOR_CHART varchar
(
    50
) NULL,
    PRENATAL_CARE_VISIT_NBR numeric
(
    18,
    0
) NULL,
    FIRST_PRENATAL_CARE_VISIT_DT datetime NULL,
    LAST_PRENATAL_CARE_VISIT_DT datetime NULL,
    LAST_PRENATAL_CARE_VISIT_EGA numeric
(
    18,
    0
) NULL,
    GBS_BACTERIURIA_IN_PREGNANCY varchar
(
    50
) NULL,
    PREVIOUS_BIRTH_WITH_GBS_IND varchar
(
    50
) NULL,
    GBS_CULTURED_BEFORE_ADMISSION varchar
(
    50
) NULL,
    GBS_1ST_CULTURE_DT datetime NULL,
    GBS_1ST_CULTURE_POSITIVE_IND varchar
(
    50
) NULL,
    GBS_2ND_CULTURE_DT datetime NULL,
    GBS_2ND_CULTURE_POSITIVE_IND varchar
(
    50
) NULL,
    GBS_AFTER_ADM_BEFORE_DELIVERY varchar
(
    50
) NULL,
    AFTER_ADM_GBS_CULTURE_DT datetime NULL,
    GBS_CULTURE_DELIVERY_AVAILABLE varchar
(
    50
) NULL,
    INTRAPARTUM_ANTIBIOTICS_GIVEN varchar
(
    50
) NULL,
    FIRST_ANTIBIOTICS_GIVEN_DTTIME datetime NULL,
    INTRAPARTUMANTIBIOTICSINTERVAL varchar
(
    20
) NULL,
    INTRAPARTUM_ANTIBIOTICS_REASON varchar
(
    50
) NULL,
    BABY_BIRTH_TIME varchar
(
    20
) NULL,
    NEISERRIA_2NDARY_CASE_IND varchar
(
    50
) NULL,
    NEISERRIA_2ND_CASE_CONTRACT varchar
(
    50
) NULL,
    OTHER_2NDARY_CASE_TYPE varchar
(
    2000
) NULL,
    NEISERRIA_RESIST_TO_RIFAMPIN varchar
(
    50
) NULL,
    NEISERRIA_RESIST_TO_SULFA varchar
(
    50
) NULL,
    FIRST_HSPTL_DISCHARGE_TIME varchar
(
    2000
) NULL,
    FIRST_HSPTL_READMISSION_TIME varchar
(
    2000
) NULL,
    SECOND_HSPTL_ADMISSION_TIME varchar
(
    2000
) NULL,
    ABCCASE varchar
(
    50
) NULL,
    HSPTL_MATERNAL_ADMISSION_TIME varchar
(
    2000
) NULL,
    MEMBRANE_RUPTURE_TIME varchar
(
    2000
) NULL,
    INTRAPARTUM_FEVER_RECORD_TIME varchar
(
    2000
) NULL,
    ANTIBIOTICS_1ST_ADMIN_TIME varchar
(
    2000
) NULL,
    BMIRD_MULTI_VAL_GRP_KEY bigint NOT NULL,
    OTHER_PRIOR_ILLNESS varchar
(
    2000
) NULL,
    OTHER_MALIGNANCY varchar
(
    2000
) NULL,
    ORGAN_TRANSPLANT varchar
(
    2000
) NULL,
    DAYCARE_IND varchar
(
    50
) NULL,
    NURSING_HOME_IND varchar
(
    50
) NULL,
    TYPES_OF_OTHER_INFECTION varchar
(
    2000
) NULL,
    BACTERIAL_OTHER_SPECIED varchar
(
    2000
) NULL,
    STERILE_SITE_OTHER varchar
(
    2000
) NULL,
    UNDERLYING_CONDITIONS_OTHER varchar
(
    2000
) NULL,
    CULTURE_SEROGROUP_OTHER varchar
(
    2000
) NULL,
    PERSISTENT_DISEASE_IND varchar
(
    50
) NULL,
    GBS_CULTURE_POSITIVE_IND varchar
(
    50
) NULL,
    ANTIMICROBIAL_GRP_KEY bigint NOT NULL,
    BACTERIAL_OTHER_ISOLATED varchar
(
    50
) NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    RPT_SRC_ORG_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    FAMILY_MED_INSURANCE_TYPE_OTHE varchar
(
    2000
) NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    PRIOR_STATE_CASE_ID varchar
(
    2000
) NULL,
    BIRTH_CNTRY_CD varchar
(
    50
) NULL,
    INITIAL_HSPTL_NAME varchar
(
    100
) NULL,
    BIRTH_HSPTL_NAME varchar
(
    100
) NULL,
    FROM_HOME_HSPTL_NAME varchar
(
    100
) NULL,
    CULTURE_IDENT_ORG_NAME varchar
(
    100
) NULL,
    TRANSFER_FRM_HSPTL_NAME varchar
(
    100
) NULL,
    CASE_REPORT_STATUS varchar
(
    50
) NULL,
    TRANSFER_FRM_HSPTL_ID varchar
(
    100
) NULL,
    BIRTH_HSPTL_ID varchar
(
    100
) NULL,
    DIF_HSPTL_ID varchar
(
    100
) NULL,
    ABC_STATE_CASE_ID varchar
(
    199
) NULL,
    INV_PATIENT_CHART_NBR varchar
(
    2000
) NULL,
    OTHSPEC1 varchar
(
    100
) NULL,
    OTHSPEC2 varchar
(
    100
) NULL,
    INTBODYSITE varchar
(
    100
) NULL,
    OTHILL2 varchar
(
    100
) NULL,
    OTHILL3 varchar
(
    100
) NULL,
    OTHNONSTER varchar
(
    100
) NULL,
    OTHSEROTYPE varchar
(
    100
) NULL,
    HINFAGE varchar
(
    100
) NULL,
    ABCSINVLN varchar
(
    100
) NULL,
    ABCSINVFN varchar
(
    100
) NULL,
    ABCSINVEMAIL varchar
(
    100
) NULL,
    ABCSINVTELE varchar
(
    100
) NULL,
    ABCSINVEXT varchar
(
    100
) NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    CONSTRAINT PK_BMIRD_CASE PRIMARY KEY CLUSTERED
(
    
    INVESTIGATOR_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    NURSING_HOME_KEY
    ASC, 
    DAYCARE_FACILITY_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    BMIRD_MULTI_VAL_GRP_KEY
    ASC, 
    ANTIMICROBIAL_GRP_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;


/****** Object:  Table dbo.BMIRD_MULTI_VALUE_FIELD_GROUP    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.BMIRD_MULTI_VALUE_FIELD_GROUP
(
    
    BMIRD_MULTI_VAL_GRP_KEY 
    bigint
    NOT
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    BMIRD_MULTI_VAL_GRP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.CASE_COUNT    Script Date: 8/28/2024 9:35:24 AM ******/

CREATE TABLE dbo.CASE_COUNT
(
    
    CASE_COUNT 
    numeric
(
    18,
    0
) NULL,
    INVESTIGATOR_KEY bigint NOT NULL,
    REPORTER_KEY bigint NOT NULL,
    PHYSICIAN_KEY bigint NOT NULL,
    RPT_SRC_ORG_KEY bigint NOT NULL,
    INV_ASSIGNED_DT_KEY bigint NOT NULL,
    PATIENT_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    INVESTIGATION_COUNT bigint NULL,
    CONDITION_KEY bigint NOT NULL,
    ADT_HSPTL_KEY bigint NULL,
    INV_START_DT_KEY bigint NOT NULL,
    DIAGNOSIS_DT_KEY bigint NOT NULL,
    INV_RPT_DT_KEY bigint NOT NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PRIMARY KEY CLUSTERED
(
    
    INV_ASSIGNED_DT_KEY
    ASC, 
    INVESTIGATOR_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC,

    CONDITION_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.CONFIRMATION_METHOD    Script Date: 8/28/2024 9:35:25 AM ******/

CREATE TABLE dbo.CONFIRMATION_METHOD
(
    
    CONFIRMATION_METHOD_KEY 
    bigint
    NOT
    NULL, 
    CONFIRMATION_METHOD_CD 
    varchar
(
    50
) NULL,
    CONFIRMATION_METHOD_DESC varchar
(
    50
) NULL,
    PRIMARY KEY CLUSTERED
(

    CONFIRMATION_METHOD_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.CONFIRMATION_METHOD_GROUP    Script Date: 8/28/2024 9:35:25 AM ******/

CREATE TABLE dbo.CONFIRMATION_METHOD_GROUP
(
    
    INVESTIGATION_KEY 
    bigint
    NOT
    NULL, 
    CONFIRMATION_METHOD_KEY 
    bigint
    NOT
    NULL, 
    CONFIRMATION_DT 
    datetime
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (
    
    INVESTIGATION_KEY
    ASC,

    CONFIRMATION_METHOD_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.GENERIC_CASE    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.GENERIC_CASE
(
    
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    INV_ASSIGNED_DT_KEY 
    bigint
    NOT
    NULL, 
    ILLNESS_DURATION 
    varchar
(
    20
) NULL,
    ILLNESS_DURATION_UNIT varchar
(
    20
) NULL,
    PATIENT_AGE_AT_ONSET numeric
(
    18,
    0
) NULL,
    PATIENT_KEY bigint NOT NULL,
    PATIENT_AGE_AT_ONSET_UNIT varchar
(
    20
) NULL,
    FOOD_HANDLR_IND varchar
(
    50
) NULL,
    DAYCARE_ASSOCIATION_IND varchar
(
    50
) NULL,
    DETECTION_METHOD varchar
(
    20
) NULL,
    DETECTION_METHOD_OTHER varchar
(
    100
) NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    PATIENT_PREGNANCY_STATUS varchar
(
    50
) NULL,
    PELVIC_INFLAMMATORY_DISS_IND varchar
(
    50
) NULL,
    RPT_SRC_ORG_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PRIMARY KEY CLUSTERED
(
    
    INVESTIGATOR_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.HEP_MULTI_VALUE_FIELD_GROUP    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.HEP_MULTI_VALUE_FIELD_GROUP
(
    
    HEP_MULTI_VAL_GRP_KEY 
    bigint
    NOT
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    HEP_MULTI_VAL_GRP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.HEPATITIS_CASE    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.HEPATITIS_CASE
(
    
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    ALT_RESULT_DT 
    datetime
    NULL, 
    INV_ASSIGNED_DT_KEY 
    bigint
    NOT
    NULL, 
    AST_RESULT_DT 
    datetime
    NULL, 
    RPT_SRC_ORG_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_SYMPTOMATIC_IND 
    varchar
(
    50
) NULL,
    PATIENT_JUNDICED_IND varchar
(
    50
) NULL,
    PATIENT_PREGNANT_IND varchar
(
    50
) NULL,
    PATIENT_PREGNANCY_DUE_DT datetime NULL,
    HEP_A_TOTAL_ANTIBODY varchar
(
    50
) NULL,
    HEP_A_IGM_ANTIBODY varchar
(
    50
) NULL,
    HEP_B_SURFACE_ANTIGEN varchar
(
    50
) NULL,
    HEP_B_TOTAL_ANTIBODY varchar
(
    50
) NULL,
    HEP_B_IGM_ANTIBODY varchar
(
    50
) NULL,
    HEP_C_TOTAL_ANTIBODY varchar
(
    50
) NULL,
    HEP_D_TOTAL_ANTIBODY varchar
(
    50
) NULL,
    HEP_E_TOTAL_ANTIBODY varchar
(
    50
) NULL,
    ANTIHCV_SIGNAL_TO_CUTOFF_RATIO varchar
(
    2000
) NULL,
    ANTIHCV_SUPPLEMENTAL_ASSAY varchar
(
    50
) NULL,
    HCV_RNA varchar
(
    50
) NULL,
    ALT_SGPT_RESULT numeric
(
    18,
    0
) NULL,
    ALT_SGPT_RESULT_UPPER_LIMIT numeric
(
    18,
    0
) NULL,
    AST_SGOT_RESULT numeric
(
    18,
    0
) NULL,
    AST_SGOT_RESULT_UPPER_LIMIT numeric
(
    18,
    0
) NULL,
    HEP_A_EPLINK_IND varchar
(
    50
) NULL,
    HEP_A_CONTACTED_IND varchar
(
    50
) NULL,
    D_N_P_EMPLOYEE_IND varchar
(
    50
) NULL,
    D_N_P_HOUSEHOLD_CONTACT_IND varchar
(
    50
) NULL,
    HEP_A_KEYENT_IN_CHILDCARE_IND varchar
(
    50
) NULL,
    HEPA_MALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    HEPA_FEMALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    STREET_DRUG_INJECTED_IN_2_6_WK varchar
(
    50
) NULL,
    STREET_DRUG_USED_IN_2_6_WK varchar
(
    50
) NULL,
    TRAVEL_OUT_USA_CAN_IND varchar
(
    50
) NULL,
    HOUSEHOLD_NPP_OUT_USA_CAN varchar
(
    50
) NULL,
    PART_OF_AN_OUTBRK_IND varchar
(
    50
) NULL,
    ASSOCIATED_OUTBRK_TYPE varchar
(
    50
) NULL,
    FOODBORNE_OUTBRK_FOOD_ITEM varchar
(
    2000
) NULL,
    FOODHANDLER_2_WK_PRIOR_ONSET varchar
(
    50
) NULL,
    HEP_A_VACC_RECEIVED_IND varchar
(
    50
) NULL,
    HEP_A_VACC_RECEIVED_DOSE varchar
(
    50
) NULL,
    HEP_A_VACC_LAST_RECEIVED_YR numeric
(
    18,
    0
) NULL,
    IMMUNE_GLOBULIN_RECEIVED_IND varchar
(
    50
) NULL,
    GLOBULIN_LAST_RECEIVED_YR datetime NULL,
    HEP_B_CONTACTED_IND varchar
(
    50
) NULL,
    HEP_B_OTHER_CONTACT_TYPE varchar
(
    2000
) NULL,
    HEPB_STD_TREATED_IND varchar
(
    50
) NULL,
    HEPB_STD_LAST_TREATMENT_YR numeric
(
    18,
    0
) NULL,
    STREET_DRUG_INJECTED_IN6WKMON varchar
(
    50
) NULL,
    HEMODIALYSIS_IN_LAST_6WKMON varchar
(
    50
) NULL,
    BLOOD_CONTAMINATION_IN6WKMON varchar
(
    50
) NULL,
    HEPB_BLOOD_RECEIVED_IN6WKMON varchar
(
    50
) NULL,
    HEPB_BLOOD_RECEIVED_DT datetime NULL,
    BLOOD_EXPOSURE_IN_LAST6WKMON varchar
(
    50
) NULL,
    BLOOD_EXPOSURE_IN6WKMON_OTHER varchar
(
    2000
) NULL,
    HEPB_MED_DEN_EMPLOYEE_IN6WKMON varchar
(
    50
) NULL,
    HEPB_MED_DEN_BLOOD_CONTACT_FRQ varchar
(
    50
) NULL,
    HEPB_PUB_SAFETY_WORKER_IN6WKMO varchar
(
    50
) NULL,
    HEPB_PUBSAFETY_BLOODCONTACTFRQ varchar
(
    50
) NULL,
    TATTOOED_IN6WKMON_BEFORE_ONSET varchar
(
    50
) NULL,
    TATTOOED_IN6WKMONOTHERLOCATION varchar
(
    2000
) NULL,
    PIERCING_IN6WKMON_BEFORE_ONSET varchar
(
    50
) NULL,
    PIERCING_IN6WKMONOTHERLOCATION varchar
(
    2000
) NULL,
    DEN_WORK_OR_SURGERY_IN6WKMON varchar
(
    50
) NULL,
    NON_ORAL_SURGERY_IN6WKMON varchar
(
    50
) NULL,
    HSPTLIZD_IN6WKMON_BEFORE_ONSET varchar
(
    50
) NULL,
    LONGTERMCARE_RESIDENT_IN6WKMON varchar
(
    50
) NULL,
    B_INCARCERATED24PLUSHRSIN6WKMO varchar
(
    50
) NULL,
    STREET_DRUG_USED_IN6WKMON varchar
(
    50
) NULL,
    B_INCARCERATED_6PLUS_MON_IND varchar
(
    50
) NULL,
    B_LAST6PLUSMON_INCARCERATE_YR numeric
(
    4,
    0
) NULL,
    BLAST6PLUSMO_INCARCERATEPERIOD numeric
(
    4,
    0
) NULL,
    B_LAST_INCARCERATE_PERIOD_UNIT varchar
(
    50
) NULL,
    HEP_B_VACC_RECEIVED_IND varchar
(
    50
) NULL,
    HEP_B_VACC_SHOT_RECEIVED_NBR varchar
(
    50
) NULL,
    HEP_B_VACC_LAST_RECEIVED_YR numeric
(
    4,
    0
) NULL,
    ANTI_HBSAG_TESTED_IND varchar
(
    50
) NULL,
    ANTI_HBS_POSITIVE_REACTIVE_IND varchar
(
    50
) NULL,
    HEP_C_CONTACTED_IND varchar
(
    50
) NULL,
    MED_DEN_EMPLOYEE_IN_2WK6MO varchar
(
    50
) NULL,
    PUBLIC_SAFETY_WORKER_IN_2WK6MO varchar
(
    50
) NULL,
    TATTOOED_IN2WK6MO_BEFORE_ONSET varchar
(
    50
) NULL,
    TATTOOED_IN2WK6MO_LOCATION varchar
(
    50
) NULL,
    PIERCING_IN2WK6MO_BEFORE_ONSET varchar
(
    50
) NULL,
    PIERCING_IN2WK6MO_LOCATION varchar
(
    50
) NULL,
    STREET_DRUG_INJECTED_IN_2WK6MO varchar
(
    50
) NULL,
    STREET_DRUG_USED_IN_2WK6MO varchar
(
    50
) NULL,
    HEMODIALYSIS_IN_LAST_2WK6MO varchar
(
    50
) NULL,
    BLOOD_CONTAMINATION_IN_2WK6MO varchar
(
    50
) NULL,
    HEPC_BLOOD_RECEIVED_IN_2WK6MO varchar
(
    50
) NULL,
    BLOOD_EXPOSURE_IN_LAST2WK6MO varchar
(
    50
) NULL,
    BLOOD_EXPOSURE_IN2WK6MO_OTHER varchar
(
    2000
) NULL,
    DEN_WORK_OR_SURGERY_IN2WK6MO varchar
(
    50
) NULL,
    NON_ORAL_SURGERY_IN2WK6MO varchar
(
    50
) NULL,
    HSPTLIZD_IN2WK6MO_BEFORE_ONSET varchar
(
    50
) NULL,
    LONGTERMCARE_RESIDENT_IN2WK6MO varchar
(
    50
) NULL,
    INCARCERATED_24PLUSHRSIN2WK6MO varchar
(
    50
) NULL,
    BLOOD_TRANSFUSION_BEFORE_1992 varchar
(
    50
) NULL,
    ORGAN_TRANSPLANT_BEFORE_1992 varchar
(
    50
) NULL,
    CLOT_FACTOR_CONCERN_BEFORE1987 varchar
(
    50
) NULL,
    LONGTERM_HEMODIALYSIS_IND varchar
(
    50
) NULL,
    EVER_INJECT_NONPRESCRIBED_DRUG varchar
(
    50
) NULL,
    LIFETIME_SEX_PARTNER_NBR numeric
(
    15,
    5
) NULL,
    EVER_INCARCERATED_IND varchar
(
    50
) NULL,
    HEPATITIS_CONTACTED_IND varchar
(
    50
) NULL,
    HEPATITIS_CONTACT_TYPE varchar
(
    50
) NULL,
    PATIENT_MOTHER_BORN_OUT_USA varchar
(
    50
) NULL,
    MOTHER_HBSAG_POSITIVE_IND varchar
(
    50
) NULL,
    MOTHR_HBSAG_POSTV_POSTDELIVERY varchar
(
    50
) NULL,
    MOTHER_HBSAG_POSITIVE_DT datetime NULL,
    HEP_B_VACC_DOSE_CHILD_RECEIVED varchar
(
    50
) NULL,
    HEPB_1STVACC_CHILD_RECEIVED_DT datetime NULL,
    HEPB_2NDVACC_CHILD_RECEIVED_DT datetime NULL,
    HEPB_3RDVACC_CHILD_RECEIVED_DT datetime NULL,
    CHILD_RECEIVED_HBIG_IND varchar
(
    50
) NULL,
    CHILD_RECEIVED_HBIG_DT datetime NULL,
    OUTPATIENT_IV_INFUSION_IN6WKMO varchar
(
    50
) NULL,
    OUTPATIENT_IV_INFUSIONIN2WK6MO varchar
(
    50
) NULL,
    HEP_MULTI_VAL_GRP_KEY bigint NOT NULL,
    OTHER_REASON_FOR_TESTING varchar
(
    2000
) NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    HEPATITIS_OTHER_CONTACT_TYPE varchar
(
    2000
) NULL,
    HEPA_OTHER_CONTACT_TYPE varchar
(
    2000
) NULL,
    PIERCING_IN2WK6MO_OTHER_LOCAT varchar
(
    2000
) NULL,
    TATTOOED_IN2WK6MOOTHERLOCATION varchar
(
    2000
) NULL,
    HEP_C_OTHER_CONTACT_TYPE varchar
(
    2000
) NULL,
    HEPC_FEMALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    HEPC_MALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    HEPC_MED_DEN_BLOOD_CONTACT_FRQ varchar
(
    50
) NULL,
    C_LAST6PLUSMON_INCARCERATE_YR numeric
(
    18,
    0
) NULL,
    CLAST6PLUSMO_INCARCERATEPERIOD numeric
(
    18,
    0
) NULL,
    C_LAST_INCARCERATE_PERIOD_UNIT varchar
(
    50
) NULL,
    C_INCARCERATED_6PLUS_MON_IND varchar
(
    50
) NULL,
    HEPC_INCARCERATE_FACILITY_TYPE varchar
(
    50
) NULL,
    HEPC_BLOOD_RECEIVED_DT datetime NULL,
    HEPC_PUBSAFETY_BLOODCONTACTFRQ varchar
(
    50
) NULL,
    HEPB_FEMALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    HEPB_MALE_SEX_PARTNER_NBR varchar
(
    50
) NULL,
    HEPC_STD_TREATED_IND varchar
(
    50
) NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    HEPC_STD_LAST_TREATMENT_YR numeric
(
    18,
    0
) NULL,
    HEPC_MED_DEN_EMPLOYEE_IND varchar
(
    50
) NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    HEP_B_E_ANTIGEN varchar
(
    50
) NULL,
    HEP_B_DNA varchar
(
    50
) NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PLACE_OF_BIRTH varchar
(
    250
) NULL,
    INV_PATIENT_CHART_NBR varchar
(
    2000
) NULL,
    PRIMARY KEY CLUSTERED
(
    
    REPORTER_KEY
    ASC, 
    INVESTIGATOR_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    HEP_MULTI_VAL_GRP_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;


/****** Object:  Table dbo.LDF_DATA    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.LDF_DATA
(
    
    LDF_DATA_KEY 
    bigint
    NOT
    NULL, 
    LDF_GROUP_KEY 
    bigint
    NULL, 
    LDF_COLUMN_TYPE 
    varchar
(
    300
) NULL,
    CONDITION_CD varchar
(
    10
) NULL,
    CONDITION_DESC_TXT varchar
(
    100
) NULL,
    CDC_NATIONAL_ID varchar
(
    50
) NULL,
    CLASS_CD varchar
(
    20
) NULL,
    CODE_SET_NM varchar
(
    256
) NULL,
    BUSINESS_OBJ_NM varchar
(
    50
) NULL,
    DISPLAY_ORDER_NUMBER int NULL,
    FIELD_SIZE varchar
(
    10
) NULL,
    LDF_VALUE varchar
(
    2000
) NULL,
    IMPORT_VERSION_NBR bigint NULL,
    LABEL_TXT varchar
(
    300
) NULL,
    LDF_OID varchar
(
    50
) NULL,
    NND_IND varchar
(
    1
) NULL,
    RECORD_STATUS_CD varchar
(
    8
) NOT NULL,
    PRIMARY KEY CLUSTERED
(

    LDF_DATA_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.LDF_GROUP    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.LDF_GROUP
(
    
    LDF_GROUP_KEY 
    bigint
    NOT
    NULL, 
    BUSINESS_OBJECT_UID 
    bigint
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.MEASLES_CASE    Script Date: 8/28/2024 9:35:26 AM ******/

CREATE TABLE dbo.MEASLES_CASE
(
    
    INV_RPT_DT_KEY 
    bigint
    NOT
    NULL, 
    INV_ASSIGNED_DT_KEY 
    bigint
    NOT
    NULL, 
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    RPT_SRC_ORG_KEY 
    bigint
    NOT
    NULL, 
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_HAVE_RASH_IND 
    varchar
(
    50
) NULL,
    RASH_ONSET_DT datetime NULL,
    RASH_LAST_DAY_NBR numeric
(
    18,
    0
) NULL,
    PATIENT_HAVE_FEVER_IND varchar
(
    50
) NULL,
    RASH_GENERALIZED_IND varchar
(
    50
) NULL,
    HIGHEST_TEMPERATURE_MEASURED numeric
(
    18,
    0
) NULL,
    HIGHEST_TEMPERATURE_UNIT varchar
(
    50
) NULL,
    COUGH_IND varchar
(
    50
) NULL,
    CROUP_IND varchar
(
    50
) NULL,
    CORYZA_IND varchar
(
    50
) NULL,
    CONJUNCTIVITIS_IND varchar
(
    50
) NULL,
    OTTIS_MEDIA_IND varchar
(
    50
) NULL,
    DIARRHEA_IND varchar
(
    50
) NULL,
    PNEUMONIA_IND varchar
(
    50
) NULL,
    ENCEPHALITIS_IND varchar
(
    50
) NULL,
    THROMBOCYTOPENIA_IND varchar
(
    50
) NULL,
    OTHER_COMPLICATION_IND varchar
(
    50
) NULL,
    OTHER_COMPLICATIONS varchar
(
    2000
) NULL,
    IGM_SPECIMEN_TAKEN_DT datetime NULL,
    IGM_TEST_RESULT varchar
(
    50
) NULL,
    IGG_ACUTE_SPECIMEN_TAKEN_DT datetime NULL,
    IGG_CONVALESCENT_SPECIMEN_DT datetime NULL,
    IGG_TEST_RESULT varchar
(
    50
) NULL,
    OTHER_LAB_TEST_DONE_IND varchar
(
    50
) NULL,
    OTHER_LAB_TEST_DESC varchar
(
    2000
) NULL,
    OTHER_LAB_TEST_DT datetime NULL,
    OTHER_LAB_TEST_RESULT varchar
(
    2000
) NULL,
    SPECIMEN_TO_CDC_GENOTYPING_IND varchar
(
    50
) NULL,
    CONTAIN_MEASLES_VACC_RECEIVD varchar
(
    50
) NULL,
    NO_MEASLES_VACC_REASON varchar
(
    50
) NULL,
    NBR_DOSE_RECEIVED_PRIOR_1BDAY numeric
(
    18,
    0
) NULL,
    NBR_DOSE_RECEIVED_SINCE_1BDAY numeric
(
    18,
    0
) NULL,
    TRANSMISSION_SETTING varchar
(
    50
) NULL,
    AGE_AND_SETTING_VERIFIED_IND varchar
(
    50
) NULL,
    PATIENT_RESIDE_IN_USA_IND varchar
(
    50
) NULL,
    EPI_LINKED_TOANOTHER_CASE_IND varchar
(
    50
) NULL,
    FEVER_ONSET_DT datetime NULL,
    GENOTYPING_DT datetime NULL,
    IGM_TESTING_PERFORMED_IND varchar
(
    50
) NULL,
    IGG_TESTING_PERFORMED_IND varchar
(
    50
) NULL,
    RASH_OCCUR_IN_18DAYS_ENTER_USA varchar
(
    50
) NULL,
    SRC_OF_INFECTION varchar
(
    2000
) NULL,
    MEASLES_SPECIMEN_TYPE varchar
(
    2000
) NULL,
    BEFORE_B_DAY_VACCINE_REASON varchar
(
    50
) NULL,
    AFTER_B_DAY_VACCINE_REASON varchar
(
    50
) NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    LAB_MEASLES_TEST_DONE_IND varchar
(
    50
) NULL,
    CONDITION_KEY bigint NOT NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    HEPATITIS_IND varchar
(
    50
) NULL,
    CASE_TRACEABLE_IND varchar
(
    50
) NULL,
    GENOTYPE_SEQUENCED_MEASLES varchar
(
    50
) NULL,
    GENOTYPE_ID_MEASLES varchar
(
    50
) NULL,
    GENOTYPE_OTHER_ID_MEASLES varchar
(
    50
) NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PRIMARY KEY CLUSTERED
(
    
    INV_RPT_DT_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    INVESTIGATOR_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.NOTIFICATION    Script Date: 8/28/2024 9:35:24 AM ******/
CREATE TABLE dbo.NOTIFICATION
(
    
    NOTIFICATION_STATUS 
    varchar
(
    20
) NULL,
    NOTIFICATION_COMMENTS varchar
(
    1000
) NULL,
    NOTIFICATION_KEY bigint NOT NULL,
    NOTIFICATION_LOCAL_ID varchar
(
    50
) NULL,
    NOTIFICATION_SUBMITTED_BY numeric
(
    18,
    0
) NULL,
    NOTIFICATION_LAST_CHANGE_TIME datetime NULL,
    PRIMARY KEY CLUSTERED
(

    NOTIFICATION_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.NOTIFICATION_EVENT    Script Date: 8/28/2024 9:35:24 AM ******/

CREATE TABLE dbo.NOTIFICATION_EVENT
(
    
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    NOTIFICATION_SENT_DT_KEY 
    bigint
    NOT
    NULL, 
    NOTIFICATION_SUBMIT_DT_KEY 
    bigint
    NOT
    NULL, 
    NOTIFICATION_UPD_DT_KEY 
    bigint
    NOT
    NULL, 
    NOTIFICATION_KEY 
    bigint
    NOT
    NULL, 
    COUNT 
    numeric
(
    18,
    0
) NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    PRIMARY KEY CLUSTERED
(
    
    PATIENT_KEY
    ASC, 
    NOTIFICATION_SENT_DT_KEY
    ASC, 
    NOTIFICATION_SUBMIT_DT_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    NOTIFICATION_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.PERTUSSIS_CASE    Script Date: 8/28/2024 9:35:26 AM ******/

CREATE TABLE dbo.PERTUSSIS_CASE
(
    
    RPT_SRC_ORG_KEY 
    bigint
    NOT
    NULL, 
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    INV_ASSIGNED_DT_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    COUGH_ONSET_DT 
    datetime
    NULL, 
    PAROXYSMAL_COUGH_IND 
    varchar
(
    50
) NULL,
    WHOOP_IND varchar
(
    50
) NULL,
    POST_TUSSIVE_VOMITING_IND varchar
(
    50
) NULL,
    COUGH_IND varchar
(
    50
) NULL,
    APNEA_IND varchar
(
    50
) NULL,
    FINAL_INTERVIEW_DT datetime NULL,
    COUGH_AT_FINAL_INTERVIEW_IND varchar
(
    50
) NULL,
    COUGH_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    PNEUMONIA_XRAY_RESULT varchar
(
    50
) NULL,
    GENERIZED_FOCAL_SEIZURE_IND varchar
(
    50
) NULL,
    ACUTE_ENCEPHALOPATHY_IND varchar
(
    50
) NULL,
    ANTIBIOTICS_GIVEN_IND varchar
(
    50
) NULL,
    LAB_TESTING_DONE_IND varchar
(
    50
) NULL,
    CULTURE_DT datetime NULL,
    BORDETELLA_PRT_CULTURE_RESULT varchar
(
    50
) NULL,
    SEROLOGY_1_DT datetime NULL,
    SEROLOGY_1_RESULT varchar
(
    50
) NULL,
    SEROLOGY_2_DT datetime NULL,
    SEROLOGY_2_RESULT varchar
(
    50
) NULL,
    PCR_SPECIMEN_DT datetime NULL,
    PCR_RESULT varchar
(
    50
) NULL,
    EVER_RECEIVED_VACCINE_IND varchar
(
    50
) NULL,
    BEFORE_ILLNESS_LAST_VACCINE_DT datetime NULL,
    VACCINE_GIVEN_DOSE_NBR varchar
(
    50
) NULL,
    LESS_THAN_3_DOSES_REASON varchar
(
    50
) NULL,
    EPI_LINK_TO_OTHER_CASE_IND varchar
(
    50
) NULL,
    EPI_LINKED_TO_CASE_ID varchar
(
    50
) NULL,
    TRANSMISSION_SETTING varchar
(
    20
) NULL,
    SPREAD_BEYOND_XMISSION_SETTING varchar
(
    50
) NULL,
    SPREAD_SETTING_OUTSIDE_HOUSE varchar
(
    50
) NULL,
    SPREAD_SETTING_OUT_HOUSE_OTHER varchar
(
    2000
) NULL,
    ONE_OR_MORE_SUSPECT_SRC_IND varchar
(
    50
) NULL,
    SUSPECT_INFECTION_SRC_NBR numeric
(
    18,
    0
) NULL,
    CONTACT_TO_RECEIVE_PROPHYLAXIS numeric
(
    18,
    0
) NULL,
    OTHER_LAB_TEST_DONE_IND varchar
(
    50
) NULL,
    OTHER_LAB_TEST_DESC varchar
(
    2000
) NULL,
    OTHER_LAB_TEST_DT datetime NULL,
    OTHER_LAB_TEST_RESULT varchar
(
    2000
) NULL,
    BORDETELLA_CULTURE_TAKEN_IND varchar
(
    50
) NULL,
    BORDETELLA_SEROLOGY_1_DONE_IND varchar
(
    50
) NULL,
    BORDETELLA_SEROLOGY_2_DONE_IND varchar
(
    50
) NULL,
    BORDETELLA_PCR_TAKEN_IND varchar
(
    50
) NULL,
    SPECIMEN_TO_CDC_GENOTYPING_IND varchar
(
    50
) NULL,
    SPECIMEN_TO_CDC_GENOTYPING_DT datetime NULL,
    SPECIMENTO_CDC_GENOTYPING_TYPE varchar
(
    2000
) NULL,
    NOT_PERTUSSIS_VACCINED_REASON varchar
(
    50
) NULL,
    DOSES_NBR_2WEEKS_BEFORE_SICK varchar
(
    50
) NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    SEROLOGY_LAB1_NM varchar
(
    2000
) NULL,
    SEROLOGY_LAB2_NM varchar
(
    2000
) NULL,
    PCR_LAB varchar
(
    50
) NULL,
    PCR_LAB_NM varchar
(
    2000
) NULL,
    PERTUSSIS_SUSPECT_SRC_GRP_KEY bigint NOT NULL,
    PERTUSSIS_TREATMENT_GRP_KEY bigint NOT NULL,
    SEROLOGY_LAB1 varchar
(
    50
) NULL,
    SEROLOGY_LAB2 varchar
(
    50
) NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    BIRTH_WEIGHT_IN_GRAMS numeric
(
    18,
    0
) NULL,
    BIRTH_WEIGHT_POUNDS numeric
(
    18,
    0
) NULL,
    BIRTH_WEIGHT_OUNCES numeric
(
    18,
    0
) NULL,
    BIRTH_WEIGHT_UNKNOWN varchar
(
    50
) NULL,
    MOTHERS_AGE numeric
(
    18,
    0
) NULL,
    PATIENT_LESS_THAN_12MONTHS varchar
(
    50
) NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PRIMARY KEY CLUSTERED
(
    
    RPT_SRC_ORG_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    INVESTIGATOR_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC, 
    PERTUSSIS_SUSPECT_SRC_GRP_KEY
    ASC, 
    PERTUSSIS_TREATMENT_GRP_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.PERTUSSIS_SUSPECTED_SOURCE_GRP    Script Date: 8/28/2024 9:35:26 AM ******/

CREATE TABLE dbo.PERTUSSIS_SUSPECTED_SOURCE_GRP
(
    
    PERTUSSIS_SUSPECT_SRC_GRP_KEY 
    bigint
    NOT
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    PERTUSSIS_SUSPECT_SRC_GRP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.PERTUSSIS_TREATMENT_GROUP    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.PERTUSSIS_TREATMENT_GROUP
(
    
    PERTUSSIS_TREATMENT_GRP_KEY 
    bigint
    NOT
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    PERTUSSIS_TREATMENT_GRP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;
/****** Object:  Table dbo.RUBELLA_CASE    Script Date: 8/28/2024 9:35:26 AM ******/

CREATE TABLE dbo.RUBELLA_CASE
(
    
    INVESTIGATOR_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    REPORTER_KEY 
    bigint
    NOT
    NULL, 
    INV_ASSIGNED_DT_KEY 
    bigint
    NOT
    NULL, 
    LENGTH_OF_TIME_IN_US 
    numeric
(
    18,
    0
) NULL,
    MACULOPAPULAR_RASH_IND varchar
(
    50
) NULL,
    PATIENT_RASH_ONSET_DT datetime NULL,
    RASH_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    PATIENT_FEVER_IND varchar
(
    50
) NULL,
    HIGHEST_MEASURED_TEMPERATURE numeric
(
    18,
    0
) NULL,
    HIGHEST_TEMPERATUR_UNIT varchar
(
    50
) NULL,
    ARTHRALGIA_ARTHRITIS_SYMPTOM varchar
(
    50
) NULL,
    LYMPHADENOPATHY_IND varchar
(
    50
) NULL,
    CONJUNCTIVITIS_IND varchar
(
    50
) NULL,
    ENCEPHALITIS_IND varchar
(
    50
) NULL,
    THROMBOCYTOPENIA_IND varchar
(
    50
) NULL,
    OTHER_COMPLICATIONS_IND varchar
(
    50
) NULL,
    OTHER_COMPLICATIONS_DESC varchar
(
    2000
) NULL,
    CAUSE_OF_DEATH varchar
(
    2000
) NULL,
    HSPTL_ADMISSION_DT datetime NULL,
    HSPTL_DISCHARGE_DT datetime NULL,
    RUBELLA_LAB_TEST_DONE_IND varchar
(
    50
) NULL,
    RUBELLA_IGM_EIA_TEST_IND varchar
(
    50
) NULL,
    RUBELLA_IGM_EIA_TEST_DT datetime NULL,
    RUBELLA_IGM_EIA_TEST_RESULT varchar
(
    50
) NULL,
    RUBELLA_IGM_EIA_CAPTURE_IND varchar
(
    50
) NULL,
    RUBELLA_IGM_EIA_CAPTURE_DT datetime NULL,
    RUBELLA_IGM_EIA_CAPTURE_RESULT varchar
(
    50
) NULL,
    OTHER_RUBELLA_IGM_IND varchar
(
    50
) NULL,
    OTHER_RUBELLA_IGM_DESC varchar
(
    2000
) NULL,
    OTHER_RUBELLA_IGM_DT datetime NULL,
    OTHER_RUBELLA_IGM_RESULT varchar
(
    50
) NULL,
    RUBELLA_IGG_EIA_ACUTE_IND varchar
(
    50
) NULL,
    RUBELLA_IGG_EIA_ACUTE_DT datetime NULL,
    RUBELLA_IGG_EIA_CNVLSNT_IND varchar
(
    50
) NULL,
    RUBELLA_IGG_EIA_CNVLSNT_DT datetime NULL,
    IGG_EIA_ACUTE_CNVLSNT_DIFF varchar
(
    50
) NULL,
    HEMAG_INHIBIT_ACUTE_IND varchar
(
    50
) NULL,
    HEMAG_INHIBIT_ACUTE_DT datetime NULL,
    HEMAG_INHIBIT_CNVLSNT_IND varchar
(
    50
) NULL,
    HEMAG_INHIBIT_CNVLSNT_DT datetime NULL,
    HEMAGINHIBIT_ACUTECNVLSNT_DIFF varchar
(
    50
) NULL,
    CMPLMNT_FIXATION_ACUTE_IND varchar
(
    50
) NULL,
    CMPLMNT_FIXATION_ACUTE_DT datetime NULL,
    CMPLMNT_FIXATION_CNVLSNT_IND varchar
(
    50
) NULL,
    CMPLMNT_FIXATION_CNVLSNT_DT datetime NULL,
    CMPLMNT_FIX_ACUTE_CNVLSNT_DIFF varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST1_IND varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST1_DESC varchar
(
    2000
) NULL,
    RUBELLA_IGG_OTHER_TEST1_DT datetime NULL,
    RUBELLA_IGG_OTHER_TEST1_RESULT varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST2_IND varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST2_DESC varchar
(
    2000
) NULL,
    RUBELLA_IGG_OTHER_TEST2_DT datetime NULL,
    RUBELLA_IGG_OTHER_TEST2_RESULT varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST3_IND varchar
(
    50
) NULL,
    RUBELLA_IGG_OTHER_TEST3_DESC varchar
(
    2000
) NULL,
    RUBELLA_IGG_OTHER_TEST_3_DT datetime NULL,
    RUBELLA_IGG_OTHER_TEST3_RESULT varchar
(
    50
) NULL,
    VIRUS_ISOLATION_PERFORMED_IND varchar
(
    50
) NULL,
    VIRUS_ISOLATION_PERFORMED_DT datetime NULL,
    VIRUS_ISOLATION_PERFORMED_SRC varchar
(
    50
) NULL,
    VIRUS_ISOLATION_OTHER_SRC varchar
(
    2000
) NULL,
    RT_PCR_PERFORMED_IND varchar
(
    50
) NULL,
    RT_PCR_DT datetime NULL,
    RT_PCR_SRC varchar
(
    50
) NULL,
    RT_PCR_RESULT varchar
(
    50
) NULL,
    RT_PCR_OTHER_SRC varchar
(
    2000
) NULL,
    LATEX_AGGLUTINATION_TESTED_IND varchar
(
    50
) NULL,
    LATEX_AGGLUTINATION_TESTED_DT datetime NULL,
    LATEX_AGGLUTINATION_TESTRESULT varchar
(
    50
) NULL,
    IMMUNOFLUORESCENT_ASSAY_IND varchar
(
    50
) NULL,
    IMMUNOFLUORESCENT_ASSAY_DT datetime NULL,
    IMMUNOFLUORESCENT_ASSAY_SRC varchar
(
    50
) NULL,
    IMMUNOFLUORESCENT_ASSAY_RESULT varchar
(
    50
) NULL,
    IMUNOFLRESNT_ASSAY_OTHER_SRC varchar
(
    2000
) NULL,
    OTHER_RUBELLA_TEST_DONE_IND varchar
(
    50
) NULL,
    OTHER_RUBELLA_TEST_DESC varchar
(
    2000
) NULL,
    OTHER_RUBELLA_TEST_DT datetime NULL,
    OTHER_RUBELLA_TEST_RESULT varchar
(
    2000
) NULL,
    SPECIMEN_TO_CDC_GENOTYPING_IND varchar
(
    50
) NULL,
    SPECIMENTO_CDC_GENOTYPING_TYPE varchar
(
    20
) NULL,
    GENOTYPING_SPECIMEN_OTHER_TYPE varchar
(
    2000
) NULL,
    RUBELLA_VACCINE_RECEIVED_IND varchar
(
    50
) NULL,
    RUBELLA_VACCINED_NEVER_REASON varchar
(
    50
) NULL,
    ON_AFTER_1ST_DOB_DOSES_NBR numeric
(
    18,
    0
) NULL,
    TRANSMISSION_SETTING varchar
(
    20
) NULL,
    EPI_LINKED_TO_ANOTHER_CASE_IND varchar
(
    50
) NULL,
    PREGNANCY_IND varchar
(
    50
) NULL,
    PREGNANCY_DELIVERY_EXPECTED_DT datetime NULL,
    EXPECTED_DELIVERY_PLACE varchar
(
    2000
) NULL,
    GESTATION_WK_NBR_AT_RUBELLA numeric
(
    18,
    0
) NULL,
    GESTATION_TRIMESTER_ST_RUBELLA varchar
(
    50
) NULL,
    PREVIOUS_RUBELLA_IMMUNITY_DOC varchar
(
    50
) NULL,
    PREVIOUSIMMUNITY_TESTINGRESULT varchar
(
    50
) NULL,
    PREVIOUS_IMMUNITY_TESTING_YR numeric
(
    18,
    0
) NULL,
    WOMAN_AGE_AT_IMMUNITY_TESTING numeric
(
    18,
    0
) NULL,
    RUBELLA_PRIOR_TO_PREGNANCY_IND varchar
(
    50
) NULL,
    SEROLOGICALLYCONFIRMED_RUBELLA varchar
(
    50
) NULL,
    PREVIOUS_DISS_YR numeric
(
    18,
    0
) NULL,
    PREVIOUS_DISS_AGE numeric
(
    18,
    0
) NULL,
    PREGNANCY_CURRENT_OUTCOME varchar
(
    50
) NULL,
    LIVE_BIRTH_OUTCOME varchar
(
    50
) NULL,
    NON_LIVING_BIRTH_OUTCOME varchar
(
    50
) NULL,
    PREGNANCY_CESSATION_FETUS_WK numeric
(
    18,
    0
) NULL,
    NON_LIVING_BIRTH_AUTOPSY_STUDY varchar
(
    50
) NULL,
    AUTOPSY_PATHOLOGY_STUDY_RESULT varchar
(
    2000
) NULL,
    RUBELLA_GENOTYPING_DT datetime NULL,
    EIA_ACUTE_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    EIA_CNVLSNT_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    HEMAG_INHIBIT_ACUTE_VALUE varchar
(
    2000
) NULL,
    HEMAG_INHIBIT_CNVLSNT_VALUE varchar
(
    2000
) NULL,
    CMPLMNT_FIXATION_ACUTE_VALUE varchar
(
    2000
) NULL,
    CMPLMNT_FIXATION_CNVLSNT_VALUE varchar
(
    2000
) NULL,
    ARTHRALGIA_ARTHRITIS_COMPLICAT varchar
(
    50
) NULL,
    IGM_EIA_1ST_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    IGM_EIA_2ND_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    OTHER_IGM_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    IGG_OTHER_TEST_1_RESULT_VALUE varchar
(
    2000
) NULL,
    IGG_OTHER_TEST_2_RESULT_VALUE varchar
(
    2000
) NULL,
    RT_PCR_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    LATEX_AGG_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    ASSAY_TEST_RESULT_VALUE varchar
(
    2000
) NULL,
    OTHER_RUBELLA_TESTRESULT_VALUE varchar
(
    2000
) NULL,
    INFECTION_SRC varchar
(
    2000
) NULL,
    RASH_ONSET_ENTERING_USA varchar
(
    50
) NULL,
    IGM_EIA_1ST_METHOD_USED varchar
(
    50
) NULL,
    IGM_EIA_2ND_METHOD_USED varchar
(
    50
) NULL,
    IGG_OTHER_TEST_3_RESULT_VALUE varchar
(
    2000
) NULL,
    ADT_HSPTL_KEY bigint NOT NULL,
    RPT_SRC_ORG_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    VIRUS_ISOLATION_RESULT varchar
(
    50
) NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    BIRTH_COUNTRY varchar
(
    50
) NULL,
    RUBELLA_CASE_TRACEABLE_IND varchar
(
    50
) NULL,
    GENOTYPE_SEQUENCED_RUBELLA varchar
(
    50
) NULL,
    GENOTYPE_ID_RUBELLA varchar
(
    50
) NULL,
    GENOTYPE_OTHER_ID_RUBELLA varchar
(
    50
) NULL,
    GEOCODING_LOCATION_KEY bigint NULL,
    PRIMARY KEY CLUSTERED
(
    
    INVESTIGATOR_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    PHYSICIAN_KEY
    ASC, 
    REPORTER_KEY
    ASC, 
    INV_ASSIGNED_DT_KEY
    ASC, 
    ADT_HSPTL_KEY
    ASC, 
    RPT_SRC_ORG_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.TREATMENT    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.TREATMENT
(
    
    TREATMENT_KEY 
    bigint
    NOT
    NULL, 
    TREATMENT_UID 
    bigint
    NULL, 
    TREATMENT_LOCAL_ID 
    varchar
(
    50
) NULL,
    TREATMENT_NM varchar
(
    150
) NULL,
    TREATMENT_DRUG varchar
(
    50
) NULL,
    TREATMENT_DOSAGE_STRENGTH varchar
(
    20
) NULL,
    TREATMENT_DOSAGE_STRENGTH_UNIT varchar
(
    20
) NULL,
    TREATMENT_FREQUENCY varchar
(
    20
) NULL,
    TREATMENT_DURATION varchar
(
    10
) NULL,
    TREATMENT_DURATION_UNIT varchar
(
    20
) NULL,
    TREATMENT_COMMENTS varchar
(
    1000
) NULL,
    TREATMENT_ROUTE varchar
(
    25
) NULL,
    CUSTOM_TREATMENT varchar
(
    100
) NULL,
    TREATMENT_SHARED_IND varchar
(
    50
) NULL,
    TREATMENT_OID bigint NULL,
    RECORD_STATUS_CD varchar
(
    8
) NOT NULL,
    PRIMARY KEY CLUSTERED
(

    TREATMENT_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;

/****** Object:  Table dbo.TREATMENT_EVENT    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.TREATMENT_EVENT
(
    
    TREATMENT_DT_KEY 
    bigint
    NOT
    NULL, 
    TREATMENT_PROVIDING_ORG_KEY 
    bigint
    NOT
    NULL, 
    PATIENT_KEY 
    bigint
    NOT
    NULL, 
    TREATMENT_COUNT 
    numeric
(
    18,
    0
) NULL,
    TREATMENT_KEY bigint NOT NULL,
    MORB_RPT_KEY bigint NOT NULL,
    TREATMENT_PHYSICIAN_KEY bigint NOT NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    CONDITION_KEY bigint NOT NULL,
    LDF_GROUP_KEY bigint NOT NULL,
    RECORD_STATUS_CD varchar
(
    8
) NOT NULL,
    PRIMARY KEY CLUSTERED
(
    
    TREATMENT_DT_KEY
    ASC, 
    TREATMENT_PROVIDING_ORG_KEY
    ASC, 
    PATIENT_KEY
    ASC, 
    TREATMENT_KEY
    ASC, 
    MORB_RPT_KEY
    ASC, 
    TREATMENT_PHYSICIAN_KEY
    ASC, 
    INVESTIGATION_KEY
    ASC, 
    CONDITION_KEY
    ASC,

    LDF_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY]
;


ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (BMIRD_MULTI_VAL_GRP_KEY)
    REFERENCES dbo.BMIRD_MULTI_VALUE_FIELD_GROUP (BMIRD_MULTI_VAL_GRP_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (DAYCARE_FACILITY_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (NURSING_HOME_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.BMIRD_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.CASE_COUNT WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.CONFIRMATION_METHOD_GROUP WITH CHECK ADD FOREIGN KEY (CONFIRMATION_METHOD_KEY)
    REFERENCES dbo.CONFIRMATION_METHOD (CONFIRMATION_METHOD_KEY)
;
ALTER TABLE dbo.CONFIRMATION_METHOD_GROUP WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.GENERIC_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (HEP_MULTI_VAL_GRP_KEY)
    REFERENCES dbo.HEP_MULTI_VALUE_FIELD_GROUP (HEP_MULTI_VAL_GRP_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.HEPATITIS_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;

ALTER TABLE dbo.LDF_DATA
    ADD FOREIGN KEY (LDF_GROUP_KEY)
        REFERENCES LDF_GROUP
        ON DELETE NO ACTION;
ALTER TABLE dbo.LDF_DATA WITH CHECK ADD CONSTRAINT CHK_LDFDATA_RECORD_STATUS CHECK ((RECORD_STATUS_CD='INACTIVE' OR RECORD_STATUS_CD='ACTIVE'))
;
ALTER TABLE dbo.LDF_DATA CHECK CONSTRAINT CHK_LDFDATA_RECORD_STATUS
;

ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (INV_RPT_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.MEASLES_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (NOTIFICATION_SENT_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (NOTIFICATION_SUBMIT_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (NOTIFICATION_KEY)
    REFERENCES dbo.NOTIFICATION (NOTIFICATION_KEY)
;
ALTER TABLE dbo.NOTIFICATION_EVENT WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (PERTUSSIS_SUSPECT_SRC_GRP_KEY)
    REFERENCES dbo.PERTUSSIS_SUSPECTED_SOURCE_GRP (PERTUSSIS_SUSPECT_SRC_GRP_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (PERTUSSIS_TREATMENT_GRP_KEY)
    REFERENCES dbo.PERTUSSIS_TREATMENT_GROUP (PERTUSSIS_TREATMENT_GRP_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.PERTUSSIS_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (ADT_HSPTL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (CONDITION_KEY)
    REFERENCES dbo.CONDITION (CONDITION_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (INV_ASSIGNED_DT_KEY)
    REFERENCES dbo.RDB_DATE (DATE_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATOR_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (INVESTIGATION_KEY)
    REFERENCES dbo.INVESTIGATION (INVESTIGATION_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (LDF_GROUP_KEY)
    REFERENCES dbo.LDF_GROUP (LDF_GROUP_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (PATIENT_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (PHYSICIAN_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY)
;
ALTER TABLE dbo.RUBELLA_CASE WITH CHECK ADD FOREIGN KEY (RPT_SRC_ORG_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY)
;

ALTER TABLE dbo.TREATMENT WITH CHECK ADD CONSTRAINT CHK_TREATMENT_RECORD_STATUS CHECK ((RECORD_STATUS_CD='INACTIVE' OR RECORD_STATUS_CD='ACTIVE'))
;
ALTER TABLE dbo.TREATMENT CHECK CONSTRAINT CHK_TREATMENT_RECORD_STATUS
;
ALTER TABLE dbo.TREATMENT_EVENT WITH CHECK ADD CONSTRAINT CHK_TRE_EVENT_RECORD_STATUS CHECK ((RECORD_STATUS_CD='INACTIVE' OR RECORD_STATUS_CD='ACTIVE'))
;
ALTER TABLE dbo.TREATMENT_EVENT CHECK CONSTRAINT CHK_TRE_EVENT_RECORD_STATUS;


IF
OBJECT_ID('dbo.D_INV_ADMINISTRATIVE', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_ADMINISTRATIVE
(
    
    D_INV_ADMINISTRATIVE_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;


IF
OBJECT_ID('dbo.D_INV_EPIDEMIOLOGY', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_EPIDEMIOLOGY
(
    
    D_INV_EPIDEMIOLOGY_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_HIV', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_HIV
(
    
    D_INV_HIV_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_LAB_FINDING', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_LAB_FINDING
(
    
    D_INV_LAB_FINDING_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_MEDICAL_HISTORY', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_MEDICAL_HISTORY
(
    
    D_INV_MEDICAL_HISTORY_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_RISK_FACTOR', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_RISK_FACTOR
(
    
    D_INV_RISK_FACTOR_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_TREATMENT', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_TREATMENT
(
    
    D_INV_TREATMENT_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];
END;

IF
OBJECT_ID('dbo.D_INV_VACCINATION', 'U') IS NULL
BEGIN
CREATE TABLE dbo.D_INV_VACCINATION
(
    
    D_INV_VACCINATION_KEY 
    FLOAT
    NULL, 
    nbs_case_answer_uid 
    NUMERIC
(
    21,
    0
) NULL
    )
    ON [PRIMARY];


/****** Object:  Table dbo.F_STD_PAGE_CASE    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.F_STD_PAGE_CASE
(
    
    D_INV_ADMINISTRATIVE_KEY 
    bigint
    NULL, 
    D_INV_CLINICAL_KEY 
    bigint
    NULL, 
    D_INV_COMPLICATION_KEY 
    bigint
    NULL, 
    D_INV_CONTACT_KEY 
    bigint
    NULL, 
    D_INV_DEATH_KEY 
    bigint
    NULL, 
    D_INV_EPIDEMIOLOGY_KEY 
    bigint
    NULL, 
    D_INV_HIV_KEY 
    bigint
    NULL, 
    D_INV_PATIENT_OBS_KEY 
    bigint
    NULL, 
    D_INV_ISOLATE_TRACKING_KEY 
    bigint
    NULL, 
    D_INV_LAB_FINDING_KEY 
    bigint
    NULL, 
    D_INV_MEDICAL_HISTORY_KEY 
    bigint
    NULL, 
    D_INV_MOTHER_KEY 
    bigint
    NULL, 
    D_INV_OTHER_KEY 
    bigint
    NULL, 
    D_INV_PREGNANCY_BIRTH_KEY 
    bigint
    NULL, 
    D_INV_RESIDENCY_KEY 
    bigint
    NULL, 
    D_INV_RISK_FACTOR_KEY 
    bigint
    NULL, 
    D_INV_SOCIAL_HISTORY_KEY 
    bigint
    NULL, 
    D_INV_SYMPTOM_KEY 
    bigint
    NULL, 
    D_INV_TREATMENT_KEY 
    bigint
    NULL, 
    D_INV_TRAVEL_KEY 
    bigint
    NULL, 
    D_INV_UNDER_CONDITION_KEY 
    bigint
    NULL, 
    D_INV_VACCINATION_KEY 
    bigint
    NULL, 
    D_INVESTIGATION_REPEAT_KEY 
    float
    NULL, 
    D_INV_PLACE_REPEAT_KEY 
    float
    NULL, 
    CONDITION_KEY 
    bigint
    NULL, 
    INVESTIGATION_KEY 
    bigint
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NULL, 
    INVESTIGATOR_KEY 
    bigint
    NULL, 
    HOSPITAL_KEY 
    bigint
    NULL, 
    PATIENT_KEY 
    bigint
    NULL, 
    PERSON_AS_REPORTER_KEY 
    bigint
    NULL, 
    ORG_AS_REPORTER_KEY 
    bigint
    NULL, 
    ORDERING_FACILITY_KEY 
    bigint
    NULL, 
    GEOCODING_LOCATION_KEY 
    bigint
    NULL, 
    CLOSED_BY_KEY 
    bigint
    NULL, 
    DISPOSITIONED_BY_KEY 
    bigint
    NULL, 
    FACILITY_FLD_FOLLOW_UP_KEY 
    bigint
    NULL, 
    INVSTGTR_FLD_FOLLOW_UP_KEY 
    bigint
    NULL, 
    PROVIDER_FLD_FOLLOW_UP_KEY 
    bigint
    NULL, 
    SUPRVSR_OF_FLD_FOLLOW_UP_KEY 
    bigint
    NULL, 
    INIT_ASGNED_FLD_FOLLOW_UP_KEY 
    bigint
    NULL, 
    INIT_FOLLOW_UP_INVSTGTR_KEY 
    bigint
    NULL, 
    INIT_ASGNED_INTERVIEWER_KEY 
    bigint
    NULL, 
    INTERVIEWER_ASSIGNED_KEY 
    bigint
    NULL, 
    SURVEILLANCE_INVESTIGATOR_KEY 
    bigint
    NULL, 
    SUPRVSR_OF_CASE_ASSGNMENT_KEY 
    bigint
    NULL, 
    DELIVERING_HOSP_KEY 
    bigint
    NULL, 
    DELIVERING_MD_KEY 
    bigint
    NULL, 
    MOTHER_OB_GYN_KEY 
    bigint
    NULL, 
    PEDIATRICIAN_KEY 
    bigint
    NULL, 
    ADD_DATE_KEY 
    bigint
    NULL, 
    LAST_CHG_DATE_KEY

    bigint
    NULL
) ON [PRIMARY];

/****** Object:  Table dbo.LDF_FOODBORNE    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.LDF_FOODBORNE
(
    
    INVESTIGATION_KEY 
    numeric
(
    20,
    0
) NULL,
    INVESTIGATION_LOCAL_ID varchar
(
    50
) NULL,
    PROGRAM_JURISDICTION_OID numeric
(
    20,
    0
) NULL,
    PATIENT_KEY numeric
(
    20,
    0
) NULL,
    PATIENT_LOCAL_ID varchar
(
    50
) NULL,
    DISEASE_NAME varchar
(
    50
) NULL,
    DISEASE_CD varchar
(
    10
) NULL
    ) ON [PRIMARY];

/****** Object:  Table dbo.F_INTERVIEW_CASE    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.F_INTERVIEW_CASE
(
    
    D_INTERVIEW_KEY 
    float
    NOT
    NULL, 
    PATIENT_KEY 
    numeric
(
    18,
    0
) NULL,
    IX_INTERVIEWER_KEY numeric
(
    18,
    0
) NULL,
    INVESTIGATION_KEY numeric
(
    18,
    0
) NULL,
    INTERPRETER_KEY float NULL,
    NURSE_KEY float NULL,
    PHYSICIAN_KEY float NULL,
    PROXY_KEY float NULL,
    IX_INTERVIEWEE_KEY float NULL,
    INTERVENTION_SITE_KEY numeric
(
    20,
    0
) NULL
    ) ON [PRIMARY];

/****** Object:  Table dbo.F_PAGE_CASE    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.F_PAGE_CASE
(
    
    D_INV_ADMINISTRATIVE_KEY 
    bigint
    NULL, 
    D_INV_CLINICAL_KEY 
    bigint
    NULL, 
    D_INV_COMPLICATION_KEY 
    bigint
    NULL, 
    D_INV_CONTACT_KEY 
    bigint
    NULL, 
    D_INV_DEATH_KEY 
    bigint
    NULL, 
    D_INV_EPIDEMIOLOGY_KEY 
    bigint
    NULL, 
    D_INV_HIV_KEY 
    bigint
    NULL, 
    D_INV_PATIENT_OBS_KEY 
    bigint
    NULL, 
    D_INV_ISOLATE_TRACKING_KEY 
    bigint
    NULL, 
    D_INV_LAB_FINDING_KEY 
    bigint
    NULL, 
    D_INV_MEDICAL_HISTORY_KEY 
    bigint
    NULL, 
    D_INV_MOTHER_KEY 
    bigint
    NULL, 
    D_INV_OTHER_KEY 
    bigint
    NULL, 
    D_INV_PREGNANCY_BIRTH_KEY 
    bigint
    NULL, 
    D_INV_RESIDENCY_KEY 
    bigint
    NULL, 
    D_INV_RISK_FACTOR_KEY 
    bigint
    NULL, 
    D_INV_SOCIAL_HISTORY_KEY 
    bigint
    NULL, 
    D_INV_SYMPTOM_KEY 
    bigint
    NULL, 
    D_INV_TREATMENT_KEY 
    bigint
    NULL, 
    D_INV_TRAVEL_KEY 
    bigint
    NULL, 
    D_INV_UNDER_CONDITION_KEY 
    bigint
    NULL, 
    D_INV_VACCINATION_KEY 
    bigint
    NULL, 
    D_INVESTIGATION_REPEAT_KEY 
    float
    NULL, 
    D_INV_PLACE_REPEAT_KEY 
    float
    NULL, 
    CONDITION_KEY 
    bigint
    NULL, 
    INVESTIGATION_KEY 
    bigint
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NULL, 
    INVESTIGATOR_KEY 
    bigint
    NULL, 
    HOSPITAL_KEY 
    bigint
    NULL, 
    PATIENT_KEY 
    bigint
    NULL, 
    PERSON_AS_REPORTER_KEY 
    bigint
    NULL, 
    ORG_AS_REPORTER_KEY 
    bigint
    NULL, 
    GEOCODING_LOCATION_KEY 
    bigint
    NULL, 
    ADD_DATE_KEY 
    bigint
    NULL, 
    LAST_CHG_DATE_KEY

    bigint
    NULL
) ON [PRIMARY];
/****** Object:  Table dbo.D_VAR_PAM    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.D_VAR_PAM
(
    
    D_VAR_PAM_KEY 
    bigint
    NOT
    NULL, 
    VAR_PAM_UID 
    bigint
    NOT
    NULL, 
    VACCINE_TYPE_2 
    varchar
(
    50
) NULL,
    VACCINE_MANUFACTURER_1 varchar
(
    50
) NULL,
    EPI_LINKED varchar
(
    50
) NULL,
    PCR_TEST varchar
(
    50
) NULL,
    VARICELLA_NO_VACCINE_REASON varchar
(
    50
) NULL,
    SEROLOGY_TEST varchar
(
    50
) NULL,
    DFA_TEST_RESULT varchar
(
    50
) NULL,
    HEALTHCARE_WORKER varchar
(
    50
) NULL,
    IGG_TEST_WHOLE_CELL_MFGR varchar
(
    50
) NULL,
    PREVIOUS_DIAGNOSIS_AGE_UNIT varchar
(
    50
) NULL,
    PREGNANT_TRIMESTER varchar
(
    50
) NULL,
    PREVIOUS_DIAGNOSIS varchar
(
    50
) NULL,
    LAB_TESTING_OTHER_SPECIFY varchar
(
    50
) NULL,
    IGM_TEST_TYPE varchar
(
    50
) NULL,
    FEVER_TEMPERATURE_UNIT varchar
(
    50
) NULL,
    IGG_TEST varchar
(
    50
) NULL,
    MEDICATION_NAME varchar
(
    50
) NULL,
    VACCINE_MANUFACTURER_3 varchar
(
    50
) NULL,
    COMPLICATIONS_PNEUMONIA varchar
(
    50
) NULL,
    DFA_TEST varchar
(
    50
) NULL,
    VESICLES varchar
(
    50
) NULL,
    VARICELLA_NO_2NDVACCINE_REASON varchar
(
    50
) NULL,
    IGM_TEST varchar
(
    50
) NULL,
    VACCINE_TYPE_4 varchar
(
    50
) NULL,
    COMPLICATIONS_CEREB_ATAXIA varchar
(
    50
) NULL,
    FEVER varchar
(
    50
) NULL,
    STRAIN_TYPE varchar
(
    50
) NULL,
    LAB_TESTING_OTHER_RESULT varchar
(
    50
) NULL,
    CROPS_WAVES varchar
(
    50
) NULL,
    TREATED varchar
(
    50
) NULL,
    RASH_LOCATION varchar
(
    50
) NULL,
    PATIENT_VISIT_HC_PROVIDER varchar
(
    50
) NULL,
    RASH_CRUST varchar
(
    50
) NULL,
    TRANSMISSION_SETTING varchar
(
    50
) NULL,
    CULTURE_TEST_RESULT varchar
(
    50
) NULL,
    HEMORRHAGIC varchar
(
    50
) NULL,
    CULTURE_TEST varchar
(
    50
) NULL,
    VACCINE_TYPE_1 varchar
(
    50
) NULL,
    PCR_TEST_RESULT varchar
(
    50
) NULL,
    LAB_TESTING_OTHER varchar
(
    50
) NULL,
    COMPLICATIONS varchar
(
    50
) NULL,
    COMPLICATIONS_PNEU_DIAG_BY varchar
(
    50
) NULL,
    VACCINE_TYPE_5 varchar
(
    50
) NULL,
    IGG_TEST_TYPE varchar
(
    50
) NULL,
    EPI_LINKED_CASE_TYPE varchar
(
    50
) NULL,
    VACCINE_MANUFACTURER_4 varchar
(
    50
) NULL,
    MACULAR_PAPULAR varchar
(
    50
) NULL,
    VACCINE_TYPE_3 varchar
(
    50
) NULL,
    PREVIOUS_DIAGNOSIS_BY varchar
(
    50
) NULL,
    VESICULAR varchar
(
    50
) NULL,
    VACCINE_MANUFACTURER_5 varchar
(
    50
) NULL,
    DEATH_VARICELLA varchar
(
    50
) NULL,
    IGG_TEST_GP_ELISA_MFGR varchar
(
    50
) NULL,
    VARICELLA_VACCINE varchar
(
    50
) NULL,
    IGM_TEST_RESULT varchar
(
    50
) NULL,
    IMMUNOCOMPROMISED varchar
(
    50
) NULL,
    COMPLICATIONS_OTHER varchar
(
    50
) NULL,
    ITCHY varchar
(
    50
) NULL,
    PATIENT_BIRTH_COUNTRY varchar
(
    50
) NULL,
    DEATH_AUTOPSY varchar
(
    50
) NULL,
    COMPLICATIONS_ENCEPHALITIS varchar
(
    50
) NULL,
    COMPLICATIONS_HEMORRHAGIC varchar
(
    50
) NULL,
    COMPLICATIONS_SKIN_INFECTION varchar
(
    50
) NULL,
    COMPLICATIONS_DEHYDRATION varchar
(
    50
) NULL,
    VACCINE_MANUFACTURER_2 varchar
(
    50
) NULL,
    GENOTYPING_SENT_TO_CDC varchar
(
    50
) NULL,
    STRAIN_IDENTIFICATION_SENT varchar
(
    50
) NULL,
    IGG_TEST_CONVALESCENT_RESULT varchar
(
    50
) NULL,
    IGG_TEST_ACUTE_RESULT varchar
(
    50
) NULL,
    LAB_TESTING varchar
(
    50
) NULL,
    PAPULES varchar
(
    50
) NULL,
    SCABS varchar
(
    50
) NULL,
    LESIONS_TOTAL varchar
(
    50
) NULL,
    MACULES varchar
(
    50
) NULL,
    IGG_TEST_ACUTE_DATE datetime NULL,
    VACCINE_DATE_4 datetime NULL,
    PCR_TEST_DATE datetime NULL,
    VACCINE_DATE_2 datetime NULL,
    MEDICATION_START_DATE datetime NULL,
    DFA_TEST_DATE datetime NULL,
    VACCINE_DATE_3 datetime NULL,
    IGG_TEST_CONVALESCENT_DATE datetime NULL,
    MEDICATION_STOP_DATE datetime NULL,
    VACCINE_DATE_1 datetime NULL,
    LAB_TESTING_OTHER_DATE datetime NULL,
    CULTURE_TEST_DATE datetime NULL,
    GENOTYPING_SENT_TO_CDC_DATE datetime NULL,
    FEVER_ONSET_DATE datetime NULL,
    RASH_ONSET_DATE datetime NULL,
    DEATH_VARICELLA_DATE datetime NULL,
    IGM_TEST_DATE datetime NULL,
    VACCINE_DATE_5 datetime NULL,
    VARICELLA_VACCINE_DOSES_NUMBER numeric
(
    18,
    0
) NULL,
    FEVER_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    PREVIOUS_DIAGNOSIS_AGE numeric
(
    18,
    0
) NULL,
    LESIONS_TOTAL_LT50 numeric
(
    18,
    0
) NULL,
    VESICLES_NUMBER numeric
(
    18,
    0
) NULL,
    MACULES_NUMBER numeric
(
    18,
    0
) NULL,
    PAPULES_NUMBER numeric
(
    18,
    0
) NULL,
    PREGNANT_WEEKS numeric
(
    18,
    0
) NULL,
    RASH_CRUSTED_DAYS numeric
(
    18,
    0
) NULL,
    RASH_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    FEVER_TEMPERATURE numeric
(
    18,
    0
) NULL,
    PCR_TEST_SOURCE_OTHER varchar
(
    50
) NULL,
    VARICELLA_NO_2NDVACCINE_OTHER varchar
(
    50
) NULL,
    VACCINE_LOT_5 varchar
(
    50
) NULL,
    RASH_LOCATION_DERMATOME varchar
(
    50
) NULL,
    IGG_TEST_OTHER varchar
(
    50
) NULL,
    VACCINE_LOT_4 varchar
(
    50
) NULL,
    VACCINE_LOT_1 varchar
(
    50
) NULL,
    DEATH_CAUSE varchar
(
    50
) NULL,
    VARICELLA_NO_VACCINE_OTHER varchar
(
    50
) NULL,
    IGG_TEST_ACUTE_VALUE varchar
(
    50
) NULL,
    TRANSMISSION_SETTING_OTHER varchar
(
    50
) NULL,
    IMMUNOCOMPROMISED_CONDITION varchar
(
    50
) NULL,
    LAB_TESTING_OTHER_RESULT_VALUE varchar
(
    50
) NULL,
    VACCINE_LOT_3 varchar
(
    50
) NULL,
    MEDICATION_NAME_OTHER varchar
(
    50
) NULL,
    PREVIOUS_DIAGNOSIS_BY_OTHER varchar
(
    50
) NULL,
    RASH_LOCATION_OTHER varchar
(
    50
) NULL,
    IGG_TEST_CONVALESCENT_VALUE varchar
(
    50
) NULL,
    IGM_TEST_TYPE_OTHER varchar
(
    50
) NULL,
    PCR_TEST_RESULT_OTHER varchar
(
    50
) NULL,
    VACCINE_LOT_2 varchar
(
    50
) NULL,
    IGM_TEST_RESULT_VALUE varchar
(
    50
) NULL,
    LAST_CHG_TIME datetime NULL,
    COMPLICATIONS_OTHER_SPECIFY varchar
(
    50
) NULL,
    CONSTRAINT PK__D_VAR_PAM PRIMARY KEY CLUSTERED
(

    D_VAR_PAM_KEY ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY];

/****** Object:  Table dbo.D_PCR_SOURCE_GROUP    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.D_PCR_SOURCE_GROUP
(
    
    D_PCR_SOURCE_GROUP_KEY 
    bigint
    NOT
    NULL,
    CONSTRAINT 
    PK_D_PCR_SOURCE_GROUP
    PRIMARY
    KEY
    CLUSTERED
    (

    D_PCR_SOURCE_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY];

/****** Object:  Table dbo.F_VAR_PAM    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.F_VAR_PAM
(
    
    PERSON_KEY 
    bigint
    NOT
    NULL, 
    D_VAR_PAM_KEY 
    bigint
    NOT
    NULL, 
    PROVIDER_KEY 
    bigint
    NOT
    NULL, 
    D_PCR_SOURCE_GROUP_KEY 
    bigint
    NOT
    NULL, 
    D_RASH_LOC_GEN_GROUP_KEY 
    bigint
    NOT
    NULL, 
    HOSPITAL_KEY 
    bigint
    NOT
    NULL, 
    ORG_AS_REPORTER_KEY 
    bigint
    NOT
    NULL, 
    PERSON_AS_REPORTER_KEY 
    bigint
    NOT
    NULL, 
    PHYSICIAN_KEY 
    bigint
    NOT
    NULL, 
    ADD_DATE_KEY 
    bigint
    NOT
    NULL, 
    LAST_CHG_DATE_KEY 
    bigint
    NOT
    NULL, 
    INVESTIGATION_KEY

    bigint
    NOT
    NULL
) ON [PRIMARY];

/****** Object:  Table dbo.VAR_PAM_LDF    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.VAR_PAM_LDF
(
    
    INVESTIGATION_KEY 
    numeric
(
    20,
    0
) NULL,
    VAR_PAM_UID numeric
(
    20,
    0
) NULL,
    add_time datetime2
(
    3
) NULL
    ) ON [PRIMARY];

/****** Object:  Table dbo.D_RASH_LOC_GEN_GROUP    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.D_RASH_LOC_GEN_GROUP
(
    
    D_RASH_LOC_GEN_GROUP_KEY 
    bigint
    NOT
    NULL,
    CONSTRAINT 
    PK_D_RASH_LOC_GEN_GROUP
    PRIMARY
    KEY
    CLUSTERED
    (

    D_RASH_LOC_GEN_GROUP_KEY
    ASC
)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
    ON [PRIMARY]
    )
    ON [PRIMARY];

ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_PCR_SOURCE_GROUP FOREIGN KEY (D_PCR_SOURCE_GROUP_KEY)
    REFERENCES dbo.D_PCR_SOURCE_GROUP (D_PCR_SOURCE_GROUP_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_PCR_SOURCE_GROUP;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_RASH_LOC_GEN_GROUP FOREIGN KEY (D_RASH_LOC_GEN_GROUP_KEY)
    REFERENCES dbo.D_RASH_LOC_GEN_GROUP (D_RASH_LOC_GEN_GROUP_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_RASH_LOC_GEN_GROUP;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_VAR_PAM_D_VAR_PAM FOREIGN KEY (D_VAR_PAM_KEY)
    REFERENCES dbo.D_VAR_PAM (D_VAR_PAM_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_VAR_PAM_D_VAR_PAM;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_VAR_PAM_HOSPITAL FOREIGN KEY (HOSPITAL_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_VAR_PAM_HOSPITAL;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_VAR_PAM_ORG_REPORTER FOREIGN KEY (ORG_AS_REPORTER_KEY)
    REFERENCES dbo.D_ORGANIZATION (ORGANIZATION_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_VAR_PAM_ORG_REPORTER;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_VAR_PAM_PERSON FOREIGN KEY (PERSON_KEY)
    REFERENCES dbo.D_PATIENT (PATIENT_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_VAR_PAM_PERSON;
ALTER TABLE dbo.F_VAR_PAM WITH CHECK ADD CONSTRAINT FK_F_VAR_PAM_PERSON_REPORTER FOREIGN KEY (PERSON_AS_REPORTER_KEY)
    REFERENCES dbo.D_PROVIDER (PROVIDER_KEY);
ALTER TABLE dbo.F_VAR_PAM CHECK CONSTRAINT FK_F_VAR_PAM_PERSON_REPORTER;

/****** Object:  Table dbo.STD_HIV_DATAMART    Script Date: 8/28/2024 9:35:26 AM ******/
CREATE TABLE dbo.STD_HIV_DATAMART
(
    
    ADI_900_STATUS 
    varchar
(
    44
) NULL,
    ADI_900_STATUS_CD varchar
(
    20
) NULL,
    ADM_REFERRAL_BASIS_OOJ varchar
(
    1999
) NULL,
    ADM_RPTNG_CNTY varchar
(
    1999
) NULL,
    CA_INIT_INTVWR_ASSGN_DT datetime NULL,
    CA_INTERVIEWER_ASSIGN_DT datetime NULL,
    CA_PATIENT_INTV_STATUS varchar
(
    29
) NULL,
    CALC_5_YEAR_AGE_GROUP varchar
(
    2
) NULL,
    CASE_RPT_MMWR_WK numeric
(
    18,
    0
) NULL,
    CASE_RPT_MMWR_YR numeric
(
    18,
    0
) NULL,
    CC_CLOSED_DT datetime NULL,
    CLN_CARE_STATUS_CLOSE_DT varchar
(
    1999
) NULL,
    CLN_CONDITION_RESISTANT_TO varchar
(
    1999
) NULL,
    CLN_DT_INIT_HLTH_EXM date NULL,
    CLN_NEUROSYPHILLIS_IND varchar
(
    1999
) NULL,
    CLN_PRE_EXP_PROPHY_IND varchar
(
    1999
) NULL,
    CLN_PRE_EXP_PROPHY_REFER varchar
(
    1999
) NULL,
    CLN_SURV_PROVIDER_DIAG_CD varchar
(
    20
) NULL,
    CMP_CONJUNCTIVITIS_IND varchar
(
    1999
) NULL,
    CMP_PID_IND varchar
(
    1999
) NULL,
    COINFECTION_ID varchar
(
    100
) NULL,
    CONDITION_CD varchar
(
    50
) NULL,
    CONDITION_KEY bigint NULL,
    CONFIRMATION_DT datetime NULL,
    CURR_PROCESS_STATE varchar
(
    100
) NULL,
    DETECTION_METHOD_DESC_TXT varchar
(
    50
) NULL,
    DIAGNOSIS varchar
(
    1999
) NULL,
    DIAGNOSIS_CD varchar
(
    3
) NULL,
    DIE_FRM_THIS_ILLNESS_IND varchar
(
    50
) NULL,
    DISEASE_IMPORTED_IND varchar
(
    100
) NULL,
    DISSEMINATED_IND varchar
(
    1999
) NULL,
    EPI_CNTRY_USUAL_RESID varchar
(
    1999
) NULL,
    EPI_LINK_ID varchar
(
    20
) NULL,
    FACILITY_FLD_FOLLOW_UP_KEY bigint NULL,
    FIELD_RECORD_NUMBER varchar
(
    20
) NULL,
    FL_FUP_ACTUAL_REF_TYPE varchar
(
    15
) NULL,
    FL_FUP_DISPO_DT datetime NULL,
    FL_FUP_DISPOSITION varchar
(
    44
) NULL,
    FL_FUP_EXAM_DT datetime NULL,
    FL_FUP_EXPECTED_DT datetime NULL,
    FL_FUP_EXPECTED_IN_IND_CD varchar
(
    1
) NULL,
    FL_FUP_INIT_ASSGN_DT datetime NULL,
    FL_FUP_INTERNET_OUTCOME_CD varchar
(
    10
) NULL,
    FL_FUP_INVESTIGATOR_ASSGN_DT datetime NULL,
    FL_FUP_NOTIFICATION_PLAN varchar
(
    15
) NULL,
    FL_FUP_OOJ_OUTCOME varchar
(
    44
) NULL,
    FL_FUP_PROV_DIAGNOSIS_CD varchar
(
    3
) NULL,
    FL_FUP_PROV_EXM_REASON varchar
(
    43
) NULL,
    HIV_900_RESULT varchar
(
    4000
) NULL,
    HIV_900_TEST_IND varchar
(
    4000
) NULL,
    HIV_900_TEST_REFERRAL_DT date NULL,
    HIV_AV_THERAPY_EVER_IND varchar
(
    4000
) NULL,
    HIV_AV_THERAPY_LAST_12MO_IND varchar
(
    4000
) NULL,
    HIV_CA_900_OTH_RSN_NOT_LO varchar
(
    4000
) NULL,
    HIV_CA_900_REASON_NOT_LOC varchar
(
    4000
) NULL,
    HIV_ENROLL_PRTNR_SRVCS_IND varchar
(
    4000
) NULL,
    HIV_KEEP_900_CARE_APPT_IND varchar
(
    4000
) NULL,
    HIV_LAST_900_TEST_DT date NULL,
    HIV_POST_TEST_900_COUNSELING varchar
(
    4000
) NULL,
    HIV_PREVIOUS_900_TEST_IND varchar
(
    4000
) NULL,
    HIV_REFER_FOR_900_CARE_IND varchar
(
    4000
) NULL,
    HIV_REFER_FOR_900_TEST varchar
(
    4000
) NULL,
    HIV_RST_PROVIDED_900_RSLT_IND varchar
(
    4000
) NULL,
    HIV_SELF_REPORTED_RSLT_900 varchar
(
    4000
) NULL,
    HIV_STATE_CASE_ID varchar
(
    2000
) NULL,
    HOSPITAL_KEY bigint NULL,
    HSPTLIZD_IND varchar
(
    50
) NULL,
    INVESTIGATION_KEY bigint NULL,
    INIT_FUP_CLINIC_CODE varchar
(
    50
) NULL,
    INIT_FUP_CLOSED_DT datetime NULL,
    INIT_FUP_INITIAL_FOLL_UP varchar
(
    22
) NULL,
    INIT_FUP_INTERNET_FOLL_UP varchar
(
    20
) NULL,
    INIT_FUP_INITIAL_FOLL_UP_CD varchar
(
    20
) NULL,
    INIT_FUP_INTERNET_FOLL_UP_CD varchar
(
    20
) NULL,
    INIT_FUP_NOTIFIABLE varchar
(
    20
) NULL,
    INITIATING_AGNCY varchar
(
    20
) NULL,
    INV_ASSIGNED_DT datetime NULL,
    INV_CASE_STATUS varchar
(
    50
) NULL,
    INV_CLOSE_DT datetime NULL,
    INV_LOCAL_ID varchar
(
    50
) NULL,
    INV_RPT_DT datetime NULL,
    INV_START_DT datetime NULL,
    INVESTIGATION_DEATH_DATE datetime NULL,
    INVESTIGATION_STATUS varchar
(
    50
) NULL,
    INVESTIGATOR_CLOSED_KEY bigint NULL,
    INVESTIGATOR_CLOSED_QC varchar
(
    50
) NULL,
    INVESTIGATOR_CURRENT_KEY bigint NULL,
    INVESTIGATOR_CURRENT_QC varchar
(
    50
) NULL,
    INVESTIGATOR_DISP_FL_FUP_KEY bigint NULL,
    INVESTIGATOR_DISP_FL_FUP_QC varchar
(
    50
) NULL,
    INVESTIGATOR_FL_FUP_KEY bigint NULL,
    INVESTIGATOR_FL_FUP_QC varchar
(
    50
) NULL,
    INVESTIGATOR_INIT_INTRVW_KEY bigint NULL,
    INVESTIGATOR_INIT_INTRVW_QC varchar
(
    50
) NULL,
    INVESTIGATOR_INIT_FL_FUP_KEY bigint NULL,
    INVESTIGATOR_INIT_FL_FUP_QC varchar
(
    50
) NULL,
    INVESTIGATOR_INITIAL_KEY bigint NULL,
    INVESTIGATOR_INITIAL_QC varchar
(
    50
) NULL,
    INVESTIGATOR_INTERVIEW_KEY bigint NULL,
    INVESTIGATOR_INTERVIEW_QC varchar
(
    50
) NULL,
    INVESTIGATOR_SUPER_CASE_KEY bigint NULL,
    INVESTIGATOR_SUPER_CASE_QC varchar
(
    50
) NULL,
    INVESTIGATOR_SUPER_FL_FUP_KEY bigint NULL,
    INVESTIGATOR_SUPER_FL_FUP_QC varchar
(
    50
) NULL,
    INVESTIGATOR_SURV_KEY bigint NULL,
    INVESTIGATOR_SURV_QC varchar
(
    50
) NULL,
    IPO_CURRENTLY_IN_INSTITUTION varchar
(
    1999
) NULL,
    IPO_LIVING_WITH varchar
(
    2000
) NULL,
    IPO_NAME_OF_INSTITUTITION varchar
(
    2000
) NULL,
    IPO_TIME_AT_ADDRESS_NUM varchar
(
    2000
) NULL,
    IPO_TIME_AT_ADDRESS_UNIT varchar
(
    1999
) NULL,
    IPO_TIME_IN_COUNTRY_NUM varchar
(
    2000
) NULL,
    IPO_TIME_IN_COUNTRY_UNIT varchar
(
    1999
) NULL,
    IPO_TIME_IN_STATE_NUM varchar
(
    2000
) NULL,
    IPO_TIME_IN_STATE_UNIT varchar
(
    1999
) NULL,
    IPO_TYPE_OF_INSTITUTITION varchar
(
    1999
) NULL,
    IPO_TYPE_OF_RESIDENCE varchar
(
    1999
) NULL,
    IX_DATE_OI datetime NULL,
    JURISDICTION_CD varchar
(
    20
) NULL,
    JURISDICTION_NM varchar
(
    100
) NULL,
    LAB_HIV_SPECIMEN_COLL_DT date NULL,
    LAB_NONTREP_SYPH_RSLT_QNT varchar
(
    1999
) NULL,
    LAB_NONTREP_SYPH_RSLT_QUA varchar
(
    1999
) NULL,
    LAB_NONTREP_SYPH_TEST_TYP varchar
(
    1999
) NULL,
    LAB_SYPHILIS_TST_PS_IND varchar
(
    1999
) NULL,
    LAB_SYPHILIS_TST_RSLT_PS varchar
(
    1999
) NULL,
    LAB_TESTS_PERFORMED varchar
(
    1999
) NULL,
    LAB_TREP_SYPH_RESULT_QUAL varchar
(
    1999
) NULL,
    LAB_TREP_SYPH_TEST_TYPE varchar
(
    1999
) NULL,
    MDH_PREV_STD_HIST varchar
(
    1999
) NULL,
    OOJ_AGENCY_SENT_TO varchar
(
    20
) NULL,
    OOJ_DUE_DATE_SENT_TO datetime NULL,
    OOJ_FR_NUMBER_SENT_TO varchar
(
    20
) NULL,
    OOJ_INITG_AGNCY_OUTC_DUE_DATE datetime NULL,
    OOJ_INITG_AGNCY_OUTC_SNT_DATE datetime NULL,
    OOJ_INITG_AGNCY_RECD_DATE datetime NULL,
    ORDERING_FACILITY_KEY bigint NULL,
    OUTBREAK_IND varchar
(
    50
) NULL,
    OUTBREAK_NAME varchar
(
    100
) NULL,
    PATIENT_ADDL_GENDER_INFO varchar
(
    100
) NULL,
    PATIENT_AGE_AT_ONSET numeric
(
    18,
    0
) NULL,
    PATIENT_AGE_AT_ONSET_UNIT varchar
(
    20
) NULL,
    PATIENT_AGE_REPORTED varchar
(
    33
) NULL,
    PATIENT_ALIAS varchar
(
    50
) NULL,
    PATIENT_BIRTH_COUNTRY varchar
(
    50
) NULL,
    PATIENT_BIRTH_SEX varchar
(
    50
) NULL,
    PATIENT_CENSUS_TRACT varchar
(
    100
) NULL,
    PATIENT_CITY varchar
(
    50
) NULL,
    PATIENT_COUNTRY varchar
(
    50
) NULL,
    PATIENT_COUNTY varchar
(
    50
) NULL,
    PATIENT_CURR_SEX_UNK_RSN varchar
(
    100
) NULL,
    PATIENT_CURRENT_SEX varchar
(
    50
) NULL,
    PATIENT_DECEASED_DATE datetime NULL,
    PATIENT_DECEASED_INDICATOR varchar
(
    50
) NULL,
    PATIENT_DOB datetime NULL,
    PATIENT_EMAIL varchar
(
    100
) NULL,
    PATIENT_ETHNICITY varchar
(
    50
) NULL,
    PATIENT_LOCAL_ID varchar
(
    50
) NULL,
    PATIENT_MARITAL_STATUS varchar
(
    50
) NULL,
    PATIENT_NAME varchar
(
    153
) NULL,
    PATIENT_PHONE_CELL varchar
(
    50
) NULL,
    PATIENT_PHONE_HOME varchar
(
    105
) NULL,
    PATIENT_PHONE_WORK varchar
(
    105
) NULL,
    PATIENT_PREFERRED_GENDER varchar
(
    100
) NULL,
    PATIENT_PREGNANT_IND varchar
(
    50
) NULL,
    PATIENT_RACE varchar
(
    50
) NULL,
    PATIENT_SEX varchar
(
    100
) NULL,
    PATIENT_STATE varchar
(
    50
) NULL,
    PATIENT_STREET_ADDRESS_1 varchar
(
    50
) NULL,
    PATIENT_STREET_ADDRESS_2 varchar
(
    50
) NULL,
    PATIENT_UNK_ETHNIC_RSN varchar
(
    100
) NULL,
    PATIENT_ZIP varchar
(
    50
) NULL,
    PBI_IN_PRENATAL_CARE_IND varchar
(
    1999
) NULL,
    PBI_PATIENT_PREGNANT_WKS varchar
(
    2000
) NULL,
    PBI_PREG_AT_EXAM_IND varchar
(
    1999
) NULL,
    PBI_PREG_AT_EXAM_WKS varchar
(
    2000
) NULL,
    PBI_PREG_AT_IX_IND varchar
(
    1999
) NULL,
    PBI_PREG_AT_IX_WKS varchar
(
    2000
) NULL,
    PBI_PREG_IN_LAST_12MO_IND varchar
(
    1999
) NULL,
    PBI_PREG_OUTCOME varchar
(
    2000
) NULL,
    PHYSICIAN_FL_FUP_KEY bigint NULL,
    PHYSICIAN_KEY bigint NULL,
    PROGRAM_AREA_CD varchar
(
    20
) NULL,
    PROGRAM_JURISDICTION_OID bigint NULL,
    REPORTING_ORG_KEY bigint NULL,
    REPORTING_PROV_KEY bigint NULL,
    RPT_ELICIT_INTERNET_INFO varchar
(
    1999
) NULL,
    RPT_FIRST_NDLSHARE_EXP_DT date NULL,
    RPT_FIRST_SEX_EXP_DT date NULL,
    RPT_LAST_NDLSHARE_EXP_DT date NULL,
    PROVIDER_REASON_VISIT_DT date NULL,
    REFERRAL_BASIS varchar
(
    100
) NULL,
    RPT_LAST_SEX_EXP_DT date NULL,
    RPT_MET_OP_INTERNET varchar
(
    1999
) NULL,
    RPT_NDLSHARE_EXP_FREQ varchar
(
    2000
) NULL,
    RPT_RELATIONSHIP_TO_OP varchar
(
    1999
) NULL,
    RPT_SEX_EXP_FREQ varchar
(
    2000
) NULL,
    RPT_SRC_CD_DESC varchar
(
    100
) NULL,
    RPT_SPOUSE_OF_OP varchar
(
    1999
) NULL,
    RSK_BEEN_INCARCERATD_12MO_IND varchar
(
    1999
) NULL,
    RSK_COCAINE_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_CRACK_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_ED_MEDS_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_HEROIN_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_INJ_DRUG_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_METH_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_NITR_POP_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_NO_DRUG_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_OTHER_DRUG_SPEC varchar
(
    2000
) NULL,
    RSK_OTHER_DRUG_USE_12MO_IND varchar
(
    1999
) NULL,
    RSK_RISK_FACTORS_ASSESS_IND varchar
(
    1999
) NULL,
    RSK_SEX_EXCH_DRGS_MNY_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_INTOXCTED_HGH_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_ANON_PTRNR_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_FEMALE_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_KNOWN_IDU_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_KNWN_MSM_12M_FML_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_MALE_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_W_TRANSGNDR_12MO_IND varchar
(
    1999
) NULL,
    RSK_SEX_WOUT_CONDOM_12MO_IND varchar
(
    1999
) NULL,
    RSK_SHARED_INJ_EQUIP_12MO_IND varchar
(
    1999
) NULL,
    RSK_TARGET_POPULATIONS varchar
(
    1999
) NULL,
    SOC_FEMALE_PRTNRS_12MO_IND varchar
(
    1999
) NULL,
    SOC_FEMALE_PRTNRS_12MO_TTL varchar
(
    2000
) NULL,
    SOC_MALE_PRTNRS_12MO_IND varchar
(
    1999
) NULL,
    SOC_MALE_PRTNRS_12MO_TOTAL varchar
(
    2000
) NULL,
    SOC_PLACES_TO_HAVE_SEX varchar
(
    1999
) NULL,
    SOC_PLACES_TO_MEET_PARTNER varchar
(
    1999
) NULL,
    SOC_PRTNRS_PRD_FML_IND varchar
(
    1999
) NULL,
    SOC_PRTNRS_PRD_FML_TTL varchar
(
    2000
) NULL,
    SOC_PRTNRS_PRD_MALE_IND varchar
(
    1999
) NULL,
    SOC_PRTNRS_PRD_MALE_TTL varchar
(
    2000
) NULL,
    SOC_PRTNRS_PRD_TRNSGNDR_IND varchar
(
    1999
) NULL,
    SOC_SX_PRTNRS_INTNT_12MO_IND varchar
(
    1999
) NULL,
    SOC_TRANSGNDR_PRTNRS_12MO_IND varchar
(
    1999
) NULL,
    SOC_TRANSGNDR_PRTNRS_12MO_TTL varchar
(
    2000
) NULL,
    SOURCE_SPREAD varchar
(
    1999
) NULL,
    STD_PRTNRS_PRD_TRNSGNDR_TTL varchar
(
    2000
) NULL,
    SURV_CLOSED_DT datetime NULL,
    SURV_INVESTIGATOR_ASSGN_DT datetime NULL,
    SURV_PATIENT_FOLL_UP varchar
(
    22
) NULL,
    SURV_PROVIDER_CONTACT varchar
(
    20
) NULL,
    SURV_PROVIDER_EXAM_REASON varchar
(
    43
) NULL,
    SYM_NEUROLOGIC_SIGN_SYM varchar
(
    1999
) NULL,
    SYM_OCULAR_MANIFESTATIONS varchar
(
    1999
) NULL,
    SYM_OTIC_MANIFESTATION varchar
(
    1999
) NULL,
    SYM_LATE_CLINICAL_MANIFES varchar
(
    1999
) NULL,
    TRT_TREATMENT_DATE date NULL
    ) ON [PRIMARY];

/****** Object:  Table dbo.D_INTERVIEW    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.D_INTERVIEW
(
    
    D_INTERVIEW_KEY 
    float
    NULL, 
    IX_STATUS_CD 
    varchar
(
    4000
) NULL,
    IX_DATE datetime NULL,
    IX_INTERVIEWEE_ROLE_CD varchar
(
    4000
) NULL,
    IX_TYPE_CD varchar
(
    4000
) NULL,
    IX_LOCATION_CD varchar
(
    4000
) NULL,
    LOCAL_ID varchar
(
    4000
) NULL,
    RECORD_STATUS_CD varchar
(
    4000
) NULL,
    RECORD_STATUS_TIME datetime NULL,
    ADD_TIME datetime NULL,
    ADD_USER_ID numeric
(
    21,
    0
) NULL,
    LAST_CHG_TIME datetime NULL,
    LAST_CHG_USER_ID numeric
(
    21,
    0
) NULL,
    VERSION_CTRL_NBR numeric
(
    11,
    0
) NULL,
    IX_STATUS varchar
(
    4000
) NULL,
    IX_INTERVIEWEE_ROLE varchar
(
    4000
) NULL,
    IX_TYPE varchar
(
    4000
) NULL,
    IX_LOCATION varchar
(
    4000
) NULL,
    IX_CONTACTS_NAMED_IND varchar
(
    4000
) NULL,
    IX_900_SITE_TYPE varchar
(
    4000
) NULL,
    IX_INTERVENTION varchar
(
    4000
) NULL,
    IX_900_SITE_ID varchar
(
    2000
) NULL,
    IX_900_SITE_ZIP varchar
(
    2000
) NULL,
    CLN_CARE_STATUS_IXS varchar
(
    4000
) NULL
    ) ON [PRIMARY];
/****** Object:  Table dbo.D_CASE_MANAGEMENT    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.D_CASE_MANAGEMENT
(
    
    ACT_REF_TYPE_CD 
    varchar
(
    20
) NULL,
    ADD_USER_ID numeric
(
    20,
    0
) NULL,
    ADI_900_STATUS_CD varchar
(
    20
) NULL,
    ADI_COMPLEXION varchar
(
    20
) NULL,
    ADI_EHARS_ID varchar
(
    10
) NULL,
    ADI_HAIR varchar
(
    20
) NULL,
    ADI_HEIGHT varchar
(
    20
) NULL,
    ADI_HEIGHT_LEGACY_CASE varchar
(
    20
) NULL,
    ADI_OTHER_IDENTIFYING_INFO varchar
(
    2000
) NULL,
    ADI_SIZE_BUILD varchar
(
    20
) NULL,
    CA_INIT_INTVWR_ASSGN_DT datetime2
(
    3
) NULL,
    CA_INTERVIEWER_ASSIGN_DT datetime2
(
    3
) NULL,
    CA_PATIENT_INTV_STATUS varchar
(
    29
) NULL,
    CASE_OID numeric
(
    20,
    0
) NULL,
    CASE_REVIEW_STATUS varchar
(
    20
) NULL,
    CASE_REVIEW_STATUS_DATE datetime2
(
    3
) NULL,
    CC_CLOSED_DT datetime2
(
    3
) NULL,
    D_CASE_MANAGEMENT_KEY float NULL,
    EPI_LINK_ID varchar
(
    20
) NULL,
    FIELD_FOLL_UP_OOJ_OUTCOME varchar
(
    20
) NULL,
    FL_FUP_ACTUAL_REF_TYPE varchar
(
    15
) NULL,
    FL_FUP_DISPO_DT datetime2
(
    3
) NULL,
    FL_FUP_DISPOSITION_CD varchar
(
    20
) NULL,
    FL_FUP_DISPOSITION_DESC varchar
(
    44
) NULL,
    FL_FUP_EXAM_DT datetime2
(
    3
) NULL,
    FL_FUP_EXPECTED_DT datetime2
(
    3
) NULL,
    FL_FUP_EXPECTED_IN_IND varchar
(
    3
) NULL,
    FL_FUP_FIELD_RECORD_NUM varchar
(
    20
) NULL,
    FL_FUP_INIT_ASSGN_DT datetime2
(
    3
) NULL,
    FL_FUP_INTERNET_OUTCOME varchar
(
    41
) NULL,
    FL_FUP_INTERNET_OUTCOME_CD varchar
(
    10
) NULL,
    FL_FUP_INVESTIGATOR_ASSGN_DT datetime2
(
    3
) NULL,
    FL_FUP_NOTIFICATION_PLAN_CD varchar
(
    15
) NULL,
    FL_FUP_OOJ_OUTCOME varchar
(
    44
) NULL,
    FL_FUP_PROV_DIAGNOSIS varchar
(
    3
) NULL,
    FL_FUP_PROV_EXM_REASON varchar
(
    43
) NULL,
    FLD_FOLL_UP_EXPECTED_IN varchar
(
    20
) NULL,
    FLD_FOLL_UP_NOTIFICATION_PLAN varchar
(
    20
) NULL,
    FLD_FOLL_UP_PROV_DIAGNOSIS varchar
(
    20
) NULL,
    FLD_FOLL_UP_PROV_EXM_REASON varchar
(
    20
) NULL,
    INIT_FUP_CLINIC_CODE varchar
(
    50
) NULL,
    INIT_FUP_CLOSED_DT datetime2
(
    3
) NULL,
    INIT_FUP_INITIAL_FOLL_UP varchar
(
    22
) NULL,
    INIT_FUP_INITIAL_FOLL_UP_CD varchar
(
    20
) NULL,
    INIT_FUP_INTERNET_FOLL_UP_CD varchar
(
    20
) NULL,
    INIT_FOLL_UP_NOTIFIABLE varchar
(
    36
) NULL,
    INIT_FUP_NOTIFIABLE_CD varchar
(
    20
) NULL,
    INITIATING_AGNCY varchar
(
    20
) NULL,
    INTERNET_FOLL_UP varchar
(
    3
) NULL,
    INVESTIGATION_KEY numeric
(
    20,
    0
) NULL,
    OOJ_AGENCY varchar
(
    20
) NULL,
    OOJ_DUE_DATE datetime2
(
    3
) NULL,
    OOJ_INITG_AGNCY_OUTC_DUE_DATE datetime2
(
    3
) NULL,
    OOJ_INITG_AGNCY_OUTC_SNT_DATE datetime2
(
    3
) NULL,
    OOJ_INITG_AGNCY_RECD_DATE datetime2
(
    3
) NULL,
    OOJ_NUMBER varchar
(
    20
) NULL,
    PAT_INTV_STATUS_CD varchar
(
    20
) NULL,
    STATUS_900 varchar
(
    44
) NULL,
    SURV_CLOSED_DT datetime2
(
    3
) NULL,
    SURV_INVESTIGATOR_ASSGN_DT datetime2
(
    3
) NULL,
    SURV_PATIENT_FOLL_UP varchar
(
    20
) NULL,
    SURV_PATIENT_FOLL_UP_CD varchar
(
    22
) NULL,
    SURV_PROV_EXM_REASON varchar
(
    20
) NULL,
    SURV_PROVIDER_CONTACT varchar
(
    27
) NULL,
    SURV_PROVIDER_CONTACT_CD varchar
(
    20
) NULL,
    SURV_PROVIDER_DIAGNOSIS varchar
(
    20
) NULL,
    SURV_PROVIDER_EXAM_REASON varchar
(
    43
) NULL
    ) ON [PRIMARY];
/****** Object:  Table dbo.HEPATITIS_DATAMART    Script Date: 8/28/2024 9:35:25 AM ******/
CREATE TABLE dbo.HEPATITIS_DATAMART
(
    
    INIT_NND_NOT_DT 
    datetime
    NULL, 
    CASE_RPT_MMWR_WEEK 
    numeric
(
    18,
    0
) NULL,
    CASE_RPT_MMWR_YEAR numeric
(
    18,
    0
) NULL,
    HEP_D_INFECTION_IND varchar
(
    300
) NULL,
    HEP_MEDS_RECVD_IND varchar
(
    300
) NULL,
    HEP_C_TOTAL_ANTIBODY varchar
(
    300
) NULL,
    DIAGNOSIS_DT datetime NULL,
    DIE_FRM_THIS_ILLNESS_IND varchar
(
    300
) NULL,
    DISEASE_IMPORTED_IND varchar
(
    300
) NULL,
    EARLIEST_RPT_TO_CNTY datetime NULL,
    EARLIEST_RPT_TO_STATE_DT datetime NULL,
    BINATIONAL_RPTNG_CRIT varchar
(
    300
) NULL,
    CHILDCARE_CASE_IND varchar
(
    300
) NULL,
    CNTRY_USUAL_RESIDENCE varchar
(
    300
) NULL,
    CT_BABYSITTER_IND varchar
(
    300
) NULL,
    CT_CHILDCARE_IND varchar
(
    300
) NULL,
    CT_HOUSEHOLD_IND varchar
(
    300
) NULL,
    HEP_CONTACT_IND varchar
(
    300
) NULL,
    HEP_CONTACT_EVER_IND varchar
(
    300
) NULL,
    OTHER_CONTACT_IND varchar
(
    300
) NULL,
    COM_SRC_OUTBREAK_IND varchar
(
    300
) NULL,
    CONTACT_TYPE_OTH varchar
(
    100
) NULL,
    CT_PLAYMATE_IND varchar
(
    300
) NULL,
    SEXUAL_PARTNER_IND varchar
(
    300
) NULL,
    DNP_HOUSEHOLD_CT_IND varchar
(
    300
) NULL,
    HEP_A_EPLINK_IND varchar
(
    300
) NULL,
    FEMALE_SEX_PRTNR_NBR numeric
(
    18,
    0
) NULL,
    FOODHNDLR_PRIOR_IND varchar
(
    300
) NULL,
    DNP_EMPLOYEE_IND varchar
(
    300
) NULL,
    STREET_DRUG_INJECTED varchar
(
    300
) NULL,
    MALE_SEX_PRTNR_NBR numeric
(
    18,
    0
) NULL,
    OUTBREAK_IND varchar
(
    300
) NULL,
    OBRK_FOODHNDLR_IND varchar
(
    300
) NULL,
    FOOD_OBRK_FOOD_ITEM varchar
(
    100
) NULL,
    OBRK_NOFOODHNDLR_IND varchar
(
    300
) NULL,
    OBRK_UNIDENTIFIED_IND varchar
(
    300
) NULL,
    OBRK_WATERBORNE_IND varchar
(
    300
) NULL,
    STREET_DRUG_USED varchar
(
    300
) NULL,
    SEX_PREF varchar
(
    300
) NULL,
    HSPTL_ADMISSION_DT datetime NULL,
    HSPTL_DISCHARGE_DT datetime NULL,
    HSPTL_DURATION_DAYS numeric
(
    18,
    0
) NULL,
    HSPTLIZD_IND varchar
(
    300
) NULL,
    ILLNESS_ONSET_DT datetime NULL,
    INV_CASE_STATUS varchar
(
    300
) NULL,
    INV_COMMENTS varchar
(
    2000
) NULL,
    INV_LOCAL_ID varchar
(
    25
) NULL,
    INV_RPT_DT datetime NULL,
    INV_START_DT datetime NULL,
    INVESTIGATION_STATUS varchar
(
    300
) NULL,
    JURISDICTION_NM varchar
(
    300
) NULL,
    ALT_SGPT_RESULT numeric
(
    18,
    0
) NULL,
    ANTI_HBS_POS_REAC_IND varchar
(
    300
) NULL,
    AST_SGOT_RESULT numeric
(
    18,
    0
) NULL,
    HEP_E_ANTIGEN varchar
(
    300
) NULL,
    HBE_AG_DT date NULL,
    HEP_B_SURFACE_ANTIGEN varchar
(
    300
) NULL,
    HBS_AG_DT date NULL,
    HEP_B_DNA varchar
(
    300
) NULL,
    HBV_NAT_DT date NULL,
    HCV_RNA varchar
(
    300
) NULL,
    HCV_RNA_DT date NULL,
    HEP_D_TEST_IND varchar
(
    300
) NULL,
    HEP_A_IGM_ANTIBODY varchar
(
    300
) NULL,
    IGM_ANTI_HAV_DT date NULL,
    HEP_B_IGM_ANTIBODY varchar
(
    300
) NULL,
    IGM_ANTI_HBC_DT date NULL,
    PREV_NEG_HEP_TEST_IND varchar
(
    300
) NULL,
    ANTIHCV_SIGCUT_RATIO varchar
(
    25
) NULL,
    ANTIHCV_SUPP_ASSAY varchar
(
    300
) NULL,
    SUPP_ANTI_HCV_DT date NULL,
    ALT_RESULT_DT date NULL,
    AST_RESULT_DT date NULL,
    ALT_SGPT_RSLT_UP_LMT numeric
(
    18,
    0
) NULL,
    AST_SGOT_RSLT_UP_LMT numeric
(
    18,
    0
) NULL,
    HEP_A_TOTAL_ANTIBODY varchar
(
    300
) NULL,
    TOTAL_ANTI_HAV_DT date NULL,
    HEP_B_TOTAL_ANTIBODY varchar
(
    300
) NULL,
    TOTAL_ANTI_HBC_DT date NULL,
    TOTAL_ANTI_HCV_DT date NULL,
    HEP_D_TOTAL_ANTIBODY varchar
(
    300
) NULL,
    TOTAL_ANTI_HDV_DT date NULL,
    HEP_E_TOTAL_ANTIBODY varchar
(
    300
) NULL,
    TOTAL_ANTI_HEV_DT date NULL,
    VERIFIED_TEST_DT date NULL,
    LEGACY_CASE_ID varchar
(
    15
) NULL,
    DIABETES_IND varchar
(
    300
) NULL,
    DIABETES_DX_DT date NULL,
    PREGNANCY_DUE_DT date NULL,
    PAT_JUNDICED_IND varchar
(
    300
) NULL,
    PAT_PREV_AWARE_IND varchar
(
    300
) NULL,
    HEP_CARE_PROVIDER varchar
(
    300
) NULL,
    TEST_REASON varchar
(
    300
) NULL,
    TEST_REASON_OTH varchar
(
    150
) NULL,
    SYMPTOMATIC_IND varchar
(
    300
) NULL,
    MTH_BORN_OUTSIDE_US varchar
(
    300
) NULL,
    MTH_ETHNICITY varchar
(
    300
) NULL,
    MTH_HBS_AG_PRIOR_POS varchar
(
    300
) NULL,
    MTH_POS_AFTER varchar
(
    300
) NULL,
    MTH_POS_TEST_DT date NULL,
    MTH_RACE varchar
(
    300
) NULL,
    MTH_BIRTH_COUNTRY varchar
(
    300
) NULL,
    NOT_SUBMIT_DT datetime NULL,
    PAT_REPORTED_AGE numeric
(
    18,
    0
) NULL,
    PAT_REPORTED_AGE_UNIT varchar
(
    300
) NULL,
    PAT_CITY varchar
(
    50
) NULL,
    PAT_COUNTRY varchar
(
    300
) NULL,
    PAT_COUNTY varchar
(
    300
) NULL,
    PAT_CURR_GENDER varchar
(
    300
) NULL,
    PAT_DOB datetime NULL,
    PAT_ETHNICITY varchar
(
    300
) NULL,
    PAT_FIRST_NM varchar
(
    50
) NULL,
    PAT_LAST_NM varchar
(
    50
) NULL,
    PAT_LOCAL_ID varchar
(
    25
) NULL,
    PAT_MIDDLE_NM varchar
(
    50
) NULL,
    PAT_PREGNANT_IND varchar
(
    300
) NULL,
    PAT_RACE varchar
(
    300
) NULL,
    PAT_STATE varchar
(
    300
) NULL,
    PAT_STREET_ADDR_1 varchar
(
    50
) NULL,
    PAT_STREET_ADDR_2 varchar
(
    50
) NULL,
    PAT_ZIP_CODE varchar
(
    10
) NULL,
    RPT_SRC_SOURCE_NM varchar
(
    300
) NULL,
    RPT_SRC_STATE varchar
(
    300
) NULL,
    RPT_SRC_CD_DESC varchar
(
    300
) NULL,
    BLD_EXPOSURE_IND varchar
(
    300
) NULL,
    BLD_RECVD_IND varchar
(
    300
) NULL,
    BLD_RECVD_DT date NULL,
    MED_DEN_BLD_CT_FRQ varchar
(
    300
) NULL,
    MED_DEN_EMPLOYEE_IND varchar
(
    300
) NULL,
    MED_DEN_EMP_EVER_IND varchar
(
    300
) NULL,
    CLOTFACTOR_PRIOR_1987 varchar
(
    300
) NULL,
    BLD_CONTAM_IND varchar
(
    300
) NULL,
    DEN_WORK_OR_SURG_IND varchar
(
    300
) NULL,
    HEMODIALYSIS_IND varchar
(
    300
) NULL,
    LT_HEMODIALYSIS_IND varchar
(
    300
) NULL,
    HSPTL_PRIOR_ONSET_IND varchar
(
    300
) NULL,
    EVER_INJCT_NOPRSC_DRG varchar
(
    300
) NULL,
    INCAR_24PLUSHRS_IND varchar
(
    300
) NULL,
    INCAR_6PLUS_MO_IND varchar
(
    300
) NULL,
    EVER_INCAR_IND varchar
(
    300
) NULL,
    INCAR_TYPE_JAIL_IND varchar
(
    300
) NULL,
    INCAR_TYPE_PRISON_IND varchar
(
    300
) NULL,
    INCAR_TYPE_JUV_IND varchar
(
    300
) NULL,
    LAST6PLUSMO_INCAR_PER numeric
(
    18,
    0
) NULL,
    LAST6PLUSMO_INCAR_YR numeric
(
    18,
    0
) NULL,
    OUTPAT_IV_INF_IND varchar
(
    300
) NULL,
    LTCARE_RESIDENT_IND varchar
(
    300
) NULL,
    LIFE_SEX_PRTNR_NBR numeric
(
    18,
    0
) NULL,
    BLD_EXPOSURE_OTH varchar
(
    200
) NULL,
    PIERC_PRIOR_ONSET_IND varchar
(
    300
) NULL,
    PIERC_PERF_LOC_OTH varchar
(
    150
) NULL,
    PIERC_PERF_LOC varchar
(
    300
) NULL,
    PUB_SAFETY_BLD_CT_FRQ varchar
(
    300
) NULL,
    PUB_SAFETY_WORKER_IND varchar
(
    300
) NULL,
    STD_TREATED_IND varchar
(
    300
) NULL,
    STD_LAST_TREATMENT_YR numeric
(
    18,
    0
) NULL,
    NON_ORAL_SURGERY_IND varchar
(
    300
) NULL,
    TATT_PRIOR_ONSET_IND varchar
(
    300
) NULL,
    TATTOO_PERF_LOC varchar
(
    300
) NULL,
    TATT_PRIOR_LOC_OTH varchar
(
    150
) NULL,
    BLD_TRANSF_PRIOR_1992 varchar
(
    300
) NULL,
    ORGN_TRNSP_PRIOR_1992 varchar
(
    300
) NULL,
    TRANSMISSION_MODE varchar
(
    300
) NULL,
    HOUSEHOLD_TRAVEL_IND varchar
(
    300
) NULL,
    TRAVEL_OUT_USACAN_IND varchar
(
    300
) NULL,
    TRAVEL_OUT_USACAN_LOC varchar
(
    300
) NULL,
    HOUSEHOLD_TRAVEL_LOC varchar
(
    300
) NULL,
    TRAVEL_REASON varchar
(
    300
) NULL,
    IMM_GLOB_RECVD_IND varchar
(
    300
) NULL,
    GLOB_LAST_RECVD_YR date NULL,
    VACC_RECVD_IND varchar
(
    10
) NULL,
    VACC_DOSE_NBR_1 numeric
(
    18,
    0
) NULL,
    VACC_RECVD_DT_1 date NULL,
    VACC_DOSE_NBR_2 numeric
(
    18,
    0
) NULL,
    VACC_RECVD_DT_2 date NULL,
    VACC_DOSE_NBR_3 numeric
(
    18,
    0
) NULL,
    VACC_RECVD_DT_3 date NULL,
    VACC_DOSE_NBR_4 numeric
(
    18,
    0
) NULL,
    VACC_RECVD_DT_4 date NULL,
    VACC_GT_4_IND varchar
(
    300
) NULL,
    VACC_DOSE_RECVD_NBR numeric
(
    18,
    0
) NULL,
    VACC_LAST_RECVD_YR numeric
(
    18,
    0
) NULL,
    ANTI_HBSAG_TESTED_IND varchar
(
    300
) NULL,
    CONDITION_CD varchar
(
    300
) NULL,
    EVENT_DATE datetime NULL,
    IMPORT_FROM_CITY varchar
(
    300
) NULL,
    IMPORT_FROM_COUNTRY varchar
(
    300
) NULL,
    IMPORT_FROM_COUNTY varchar
(
    300
) NULL,
    IMPORT_FROM_STATE varchar
(
    300
) NULL,
    INVESTIGATION_KEY bigint NOT NULL,
    INVESTIGATOR_NAME varchar
(
    300
) NULL,
    PAT_ELECTRONIC_IND varchar
(
    300
) NULL,
    PHYS_CITY varchar
(
    300
) NULL,
    PHYS_COUNTY varchar
(
    300
) NULL,
    PHYS_NAME varchar
(
    300
) NULL,
    PHYS_STATE varchar
(
    300
) NULL,
    PROGRAM_JURISDICTION_OID numeric
(
    20,
    0
) NULL,
    RPT_SRC_CITY varchar
(
    300
) NULL,
    RPT_SRC_COUNTY varchar
(
    300
) NULL,
    RPT_SRC_COUNTY_CD varchar
(
    300
) NULL,
    PHYSICIAN_UID numeric
(
    18,
    0
) NULL,
    PATIENT_UID numeric
(
    18,
    0
) NOT NULL,
    CASE_UID numeric
(
    18,
    0
) NOT NULL,
    INVESTIGATOR_UID numeric
(
    18,
    0
) NULL,
    REPORTING_SOURCE_UID numeric
(
    18,
    0
) NULL,
    REFRESH_DATETIME datetime NOT NULL,
    PAT_BIRTH_COUNTRY varchar
(
    50
) NULL,
    EVENT_DATE_TYPE varchar
(
    100
) NULL,
    INNC_NOTIFICATION_DT datetime NULL
    ) ON [PRIMARY];

CREATE TABLE dbo.LDF_GROUP
(
    
    LDF_GROUP_KEY 
    bigint
    NOT
    NULL, 
    BUSINESS_OBJECT_UID 
    bigint
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    LDF_GROUP_KEY
    ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
    )
  ON [PRIMARY];


CREATE TABLE dbo.PERTUSSIS_SUSPECTED_SOURCE_FLD
(
    
    SOURCE_AGE 
    numeric
(
    18,
    0
) NULL,
    SOURCE_AGE_UNIT varchar
(
    50
) NULL,
    SOURCE_GENDER varchar
(
    50
) NULL,
    SOURCE_RELATION varchar
(
    50
) NULL,
    SOURCE_RELATION_OTHER varchar
(
    2000
) NULL,
    SOURCE_VACC_DOSE_NUMBER varchar
(
    50
) NULL,
    SOURCE_COUGH_ONSET_DT datetime NULL,
    PERTUSSIS_SUSPECT_SRC_FLD_KEY bigint NOT NULL,
    PERTUSSIS_SUSPECT_SRC_GRP_KEY bigint NOT NULL,
    PRIMARY KEY CLUSTERED
(
    
    PERTUSSIS_SUSPECT_SRC_FLD_KEY
    ASC,

    PERTUSSIS_SUSPECT_SRC_GRP_KEY
    ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
    )
  ON [PRIMARY];

ALTER TABLE dbo.PERTUSSIS_SUSPECTED_SOURCE_FLD WITH CHECK ADD FOREIGN KEY (PERTUSSIS_SUSPECT_SRC_GRP_KEY)
    REFERENCES dbo.PERTUSSIS_SUSPECTED_SOURCE_GRP (PERTUSSIS_SUSPECT_SRC_GRP_KEY);

CREATE TABLE dbo.PERTUSSIS_TREATMENT_FIELD
(
    
    ANTIBIOTICS_RECEIVED_DESC 
    varchar
(
    50
) NULL,
    PERTUSSIS_TREATMENT_FLD_KEY bigint NOT NULL,
    ANTIBIOTICS_START_DT datetime NULL,
    ANTIBIOTICS_TAKEN_DAY_NBR numeric
(
    4,
    0
) NULL,
    PERTUSSIS_TREATMENT_GRP_KEY bigint NOT NULL,
    PRIMARY KEY CLUSTERED
(
    
    PERTUSSIS_TREATMENT_FLD_KEY
    ASC,

    PERTUSSIS_TREATMENT_GRP_KEY
    ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
    )
  ON [PRIMARY];

ALTER TABLE dbo.PERTUSSIS_TREATMENT_FIELD WITH CHECK ADD FOREIGN KEY (PERTUSSIS_TREATMENT_GRP_KEY)
    REFERENCES dbo.PERTUSSIS_TREATMENT_GROUP (PERTUSSIS_TREATMENT_GRP_KEY);

CREATE TABLE dbo.HEP_MULTI_VALUE_FIELD_GROUP
(
    
    HEP_MULTI_VAL_GRP_KEY 
    bigint
    NOT
    NULL,
    PRIMARY
    KEY
    CLUSTERED
    (

    HEP_MULTI_VAL_GRP_KEY
    ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
    )
  ON [PRIMARY];

CREATE TABLE dbo.HEP_MULTI_VALUE_FIELD
(
    
    HEP_MULTI_VAL_GRP_KEY 
    bigint
    NOT
    NULL, 
    HEP_MULTI_VAL_DATA_KEY 
    bigint
    NOT
    NULL, 
    REASON_FOR_TESTING 
    varchar
(
    50
) NULL,
    DISEASE_DIAGNOSIS varchar
(
    50
) NULL,
    CNTRY_TRAVELD_OUT_USA_CAN varchar
(
    50
) NULL,
    CNTRY_NPP_TRAVELD_OUT_USA_CAN varchar
(
    50
) NULL,
    HEP_B_CONTACT_TYPE varchar
(
    50
) NULL,
    TATTOOED_IN6WKMON_LOCATION varchar
(
    50
) NULL,
    PIERCING_IN6WKMON_LOCATION varchar
(
    50
) NULL,
    HEPB_INCARCERATION_FACILITY_TY varchar
(
    50
) NULL,
    HEP_C_CONTACT_TYPE varchar
(
    50
) NULL,
    HEP_A_CONTACT_TYPE varchar
(
    50
) NULL,
    PRIMARY KEY CLUSTERED
(
    
    HEP_MULTI_VAL_GRP_KEY
    ASC,

    HEP_MULTI_VAL_DATA_KEY
    ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
  ON [PRIMARY]
    )
  ON [PRIMARY];

ALTER TABLE dbo.HEP_MULTI_VALUE_FIELD WITH CHECK ADD FOREIGN KEY (HEP_MULTI_VAL_GRP_KEY)
    REFERENCES dbo.HEP_MULTI_VALUE_FIELD_GROUP (HEP_MULTI_VAL_GRP_KEY);



