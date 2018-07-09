CREATE INDEX IX_HRC_NAME ON DB_WCT.HARVEST_RESOURCE (HRC_NAME);

CREATE INDEX IX_HRC_HARVEST_RESULT_OID ON DB_WCT.HARVEST_RESOURCE (HRC_HARVEST_RESULT_OID);

CREATE INDEX IDX_FLAGGED ON DB_WCT.TARGET_INSTANCE (TI_FLAGGED);

CREATE INDEX IX_AUD_DATE ON DB_WCT.WCTAUDIT (AUD_DATE);

CREATE INDEX IX_SHED_PROC_DATE ON DB_WCT.SCHEDULE (S_LAST_PROCESSED_DATE);

CREATE INDEX IX_SHED_NEXT_TIME ON DB_WCT.SCHEDULE (S_NEXT_SCHEDULE_TIME);


