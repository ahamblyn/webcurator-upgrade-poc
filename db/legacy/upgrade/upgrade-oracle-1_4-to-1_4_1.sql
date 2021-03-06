ALTER TABLE DB_WCT.PERMISSION_template ADD (prt_template_subject VARCHAR2(255));
ALTER TABLE DB_WCT.PERMISSION_template ADD (prt_template_overwrite_from NUMBER(1,0) DEFAULT 0 NOT NULL);
ALTER TABLE DB_WCT.PERMISSION_template ADD (prt_template_from VARCHAR2(255));
ALTER TABLE DB_WCT.PERMISSION_template ADD (prt_template_cc VARCHAR2(2048));
ALTER TABLE DB_WCT.PERMISSION_template ADD (prt_template_bcc VARCHAR2(2048));

UPDATE DB_WCT.PERMISSION_template SET prt_template_subject = 'Web Preservation Programme' WHERE prt_template_Type like 'E%' ;

CREATE TABLE DB_WCT.SEED_HISTORY (SH_OID NUMBER(19,0) NOT NULL, SH_TI_OID NUMBER(19,0), SH_SEED VARCHAR2(1024) NOT NULL, SH_PRIMARY NUMBER(1,0) NOT NULL, PRIMARY KEY (SH_OID));
ALTER TABLE DB_WCT.SEED_HISTORY add constraint FK_SEED_HISTORY_TI_OID foreign key (SH_TI_OID) references DB_WCT.TARGET_INSTANCE (TI_OID);
GRANT SELECT, INSERT, UPDATE, DELETE ON DB_WCT.SEED_HISTORY TO USR_WCT;

ALTER TABLE DB_WCT.TARGET_INSTANCE ADD (ti_archived_time DATE);


