--------------------------------------------------------
-- Archivo creado  - martes-mayo-10-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "PERSON" 
   (	"ID" NUMBER(11,0) not null, 
	"NAME" VARCHAR2(20 BYTE) not null, 
	"COUNTRY" VARCHAR2(20 BYTE) DEFAULT NULL
   );

Insert into PERSON (ID,NAME,COUNTRY) values ('1','titin1','cusco1');
Insert into PERSON (ID,NAME,COUNTRY) values ('12','titin333','cusco444');
Insert into PERSON (ID,NAME,COUNTRY) values ('14','titin111','cusco7');
Insert into PERSON (ID,NAME,COUNTRY) values ('15','igjhg','yugyu');
Insert into PERSON (ID,NAME,COUNTRY) values ('16','lllllll','kkk');

--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PERSON" ADD PRIMARY KEY ("ID");
--  DDL for Trigger TRG_PERS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_PERS_ID" 
before insert on Person
for each row
begin
  select pers_id_seq.nextval
  into :new.id
  from dual;
end;
/
ALTER TRIGGER "TRG_PERS_ID" ENABLE;
