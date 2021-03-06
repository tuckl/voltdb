
CREATE TABLE HADS2(CONTROL VARCHAR(20) NOT NULL,
AGE1 INTEGER,
METRO3 VARCHAR(5),
REGION VARCHAR(5),
LMED INTEGER,
FMR INTEGER,
L30 INTEGER,
L50 INTEGER,
L80 INTEGER,
IPOV INTEGER,
BEDRMS INTEGER,
BUILT INTEGER,
STATUS VARCHAR(5),
TYPE VARCHAR(5),
VALUE INTEGER,
VACANCY INTEGER,
TENURE VARCHAR(5),
NUNITS INTEGER,
ROOMS INTEGER,
WEIGHT FLOAT,
PER INTEGER,
ZINC2 INTEGER,
ZADEQ VARCHAR(5),
ZSMHC INTEGER,
STRUCTURETYPE INTEGER,
OWNRENT VARCHAR(5),
UTILITY FLOAT,
OTHERCOST FLOAT,
COST06 FLOAT,
COST12 FLOAT,
COST08 FLOAT,
COSTMED FLOAT,
TOTSAL INTEGER,
ASSISTED INTEGER,
GLMED INTEGER,
GL30 INTEGER,
GL50 INTEGER,
GL80 INTEGER,
APLMED FLOAT,
ABL30 FLOAT,
ABL50 FLOAT,
ABL80 FLOAT,
ABLMED FLOAT,
BURDEN FLOAT,
INCRELAMIPCT FLOAT,
INCRELAMICAT INTEGER,
INCRELPOVPCT FLOAT,
INCRELPOVCAT INTEGER,
INCRELFMRPCT FLOAT,
INCRELFMRCAT INTEGER,
COST06RELAMIPCT FLOAT,
COST06RELAMICAT INTEGER,
COST06RELPOVPCT FLOAT,
COST06RELPOVCAT INTEGER,
COST06RELFMRPCT FLOAT,
COST06RELFMRCAT INTEGER,
COST08RELAMIPCT FLOAT,
COST08RELAMICAT INTEGER,
COST08RELPOVPCT FLOAT,
COST08RELPOVCAT INTEGER,
COST08RELFMRPCT FLOAT,
COST08RELFMRCAT INTEGER,
COST12RELAMIPCT FLOAT,
COST12RELAMICAT INTEGER,
COST12RELPOVPCT FLOAT,
COST12RELPOVCAT INTEGER,
COST12RELFMRPCT FLOAT,
COST12RELFMRCAT INTEGER,
COSTMedRELAMIPCT FLOAT,
COSTMedRELAMICAT INTEGER,
COSTMedRELPOVPCT FLOAT,
COSTMedRELPOVCAT INTEGER,
COSTMedRELFMRPCT FLOAT,
COSTMedRELFMRCAT INTEGER,
FMTZADEQ VARCHAR(50),
FMTMETRO3 VARCHAR(50),
FMTBUILT VARCHAR(50),
FMTSTRUCTURETYPE VARCHAR(50),
FMTBEDRMS VARCHAR(50),
FMTOWNRENT VARCHAR(50),
FMTCOST06RELPOVCAT VARCHAR(50),
FMTCOST08RELPOVCAT VARCHAR(50),
FMTCOST12RELPOVCAT VARCHAR(50),
FMTCOSTMEDRELPOVCAT VARCHAR(50),
FMTINCRELPOVCAT VARCHAR(50),
FMTCOST06RELFMRCAT VARCHAR(50),
FMTCOST08RELFMRCAT VARCHAR(50),
FMTCOST12RELFMRCAT VARCHAR(50),
FMTCOSTMEDRELFMRCAT VARCHAR(50),
FMTINCRELFMRCAT VARCHAR(50),
FMTCOST06RELAMICAT VARCHAR(50),
FMTCOST08RELAMICAT VARCHAR(50),
FMTCOST12RELAMICAT VARCHAR(50),
FMTCOSTMEDRELAMICAT VARCHAR(50),
FMTINCRELAMICAT VARCHAR(50),
FMTASSISTED VARCHAR(50),
FMTBURDEN VARCHAR(50),
FMTREGION VARCHAR(50),
FMTSTATUS VARCHAR(50),
CONSTRAINT pk_hads PRIMARY KEY ( CONTROL )
);

PARTITION TABLE HADS2 ON COLUMN CONTROL;

CREATE PROCEDURE InsertHADS2 as upsert into HADS2(
CONTROL,
AGE1,
METRO3,
REGION,
LMED,
FMR,
L30,
L50,
L80,
IPOV,
BEDRMS,
BUILT,
STATUS,
TYPE,
VALUE,
VACANCY,
TENURE,
NUNITS,
ROOMS,
WEIGHT,
PER,
ZINC2,
ZADEQ,
ZSMHC,
STRUCTURETYPE,
OWNRENT,
UTILITY,
OTHERCOST,
COST06,
COST12,   
COST08,
COSTMED,
TOTSAL,
ASSISTED,
GLMED,
GL30,
GL50,
GL80,
APLMED,
ABL30,
ABL50,
ABL80,
ABLMED,
BURDEN,
INCRELAMIPCT,
INCRELAMICAT,
INCRELPOVPCT,
INCRELPOVCAT,
INCRELFMRPCT,
INCRELFMRCAT,  
COST06RELAMIPCT,
COST06RELAMICAT,
COST06RELPOVPCT,
COST06RELPOVCAT,
COST06RELFMRPCT,
COST06RELFMRCAT,
COST08RELAMIPCT,
COST08RELAMICAT,
COST08RELPOVPCT,
COST08RELPOVCAT,
COST08RELFMRPCT,
COST08RELFMRCAT,
COST12RELAMIPCT,
COST12RELAMICAT,
COST12RELPOVPCT,
COST12RELPOVCAT,
COST12RELFMRPCT,
COST12RELFMRCAT,
COSTMedRELAMIPCT,
COSTMedRELAMICAT,  
COSTMedRELPOVPCT,
COSTMedRELPOVCAT,
COSTMedRELFMRPCT,
COSTMedRELFMRCAT,
FMTZADEQ,
FMTMETRO3,
FMTBUILT,
FMTSTRUCTURETYPE,
FMTBEDRMS,
FMTOWNRENT,
FMTCOST06RELPOVCAT,
FMTCOST08RELPOVCAT,
FMTCOST12RELPOVCAT,
FMTCOSTMEDRELPOVCAT,
FMTINCRELPOVCAT,
FMTCOST06RELFMRCAT,
FMTCOST08RELFMRCAT,
FMTCOST12RELFMRCAT,
FMTCOSTMEDRELFMRCAT,
FMTINCRELFMRCAT,  
FMTCOST06RELAMICAT,
FMTCOST08RELAMICAT,
FMTCOST12RELAMICAT,
FMTCOSTMEDRELAMICAT,
FMTINCRELAMICAT,
FMTASSISTED,
FMTBURDEN,
FMTREGION,
FMTSTATUS   
) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?, ?,
?, ?, ?, ?, ?, ?, ?, ?, ?
);
PARTITION PROCEDURE InsertHADS2 ON TABLE HADS2 COLUMN CONTROL;

