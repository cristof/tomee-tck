DROP  table ADDRESS cascade;
CREATE TABLE ADDRESS (id VARCHAR2(255) PRIMARY KEY,        street VARCHAR2(255),        city VARCHAR2(255),        state VARCHAR2(255),zip VARCHAR2(255));

DROP table PHONE_TABLE cascade;
CREATE TABLE PHONE_TABLE(id VARCHAR2(255) PRIMARY KEY,area VARCHAR2(255),phone_number VARCHAR2(255),FK_FOR_ADDRESS VARCHAR2(255));

DROP table CUSTOMER_TABLE cascade;
CUSTOMER_TABLE
CREATE TABLE CUSTOMER_TABLE (ID VARCHAR(255)  NOT NULL, NAME VARCHAR(255), COUNTRY VARCHAR(255), CODE VARCHAR(255), FK5_FOR_CUSTOMER_TABLE VARCHAR(255), FK6_FOR_CUSTOMER_TABLE VARCHAR(255), constraint PK_CUSTOMER_TABLE PRIMARY KEY(ID));

DROP table ALIAS_TABLE cascade;
CREATE TABLE ALIAS_TABLE(id VARCHAR2(255) PRIMARY KEY,         alias VARCHAR2(255),         FK1_FOR_CUSTOMER_TABLE  VARCHAR2(255),         FK2_FOR_CUSTOMER_TABLE  VARCHAR2(255));

DROP table FKS_ALIAS_CUSTOMER cascade;
CREATE TABLE FKS_ALIAS_CUSTOMER( FK_FOR_CUSTOMER_TABLE VARCHAR2(255) ,           FK_FOR_ALIAS_TABLE VARCHAR2(255));

DROP table FKS_ANOOP_CNOOP cascade;
CREATE TABLE FKS_ANOOP_CNOOP( FK8_FOR_CUSTOMER_TABLE VARCHAR2(255) ,           FK2_FOR_ALIAS_TABLE VARCHAR2(255));

DROP table CREDITCARD_TABLE cascade;
CREATE TABLE CREDITCARD_TABLE(id VARCHAR2(255) PRIMARY KEY, TYPE VARCHAR2(255), EXPIRES VARCHAR2(255), APPROVED NUMBER,  CREDITCARD_NUMBER VARCHAR2(255), balance DOUBLE, FK3_FOR_CUSTOMER_TABLE VARCHAR2(255),         FK_FOR_ORDER_TABLE VARCHAR2(255));

DROP table ORDER_TABLE cascade;
CREATE TABLE  ORDER_TABLE       (id VARCHAR2(255) PRIMARY KEY,        TOTALPRICE DOUBLE ,        FK4_FOR_CUSTOMER_TABLE VARCHAR2(255),        FK0_FOR_LINEITEM_TABLE VARCHAR2(255));

DROP TABLE PRODUCT_DETAILS cascade;
PRODUCT_DETAILS
CREATE TABLE PRODUCT_DETAILS (ID VARCHAR(255) NOT NULL, WHOUSE VARCHAR(255), LICENSE_KEY INTEGER, constraint PK_PRODUCT_DETAILS PRIMARY KEY(ID));

DROP TABLE PRODUCT_TABLE cascade;
PRODUCT_TABLE
CREATE TABLE PRODUCT_TABLE (ID VARCHAR(255)  NOT NULL, NAME VARCHAR2(255), PRICE DOUBLE, QUANTITY INTEGER, PNUM BIGINT, PRODUCT_TYPE VARCHAR2(255), INCEPTION DATE, SOLD DATE, MODEL INTEGER, REV DOUBLE, constraint PK_PRODUCT_TABLE PRIMARY KEY(ID));

DROP TABLE PRICED_PRODUCT_TABLE cascade; 
PRICED_PRODUCT_TABLE
CREATE TABLE PRICED_PRODUCT_TABLE (ID VARCHAR2(255)NOT NULL, NAME VARCHAR2(255), PRICE DOUBLE, QUANTITY INTEGER, PNUM BIGINT , constraint PK_PRICED_PRODUCT_TABLE PRIMARY KEY(ID));

DROP table SPOUSE_TABLE cascade;
CREATE TABLE SPOUSE_TABLE (ID VARCHAR2(255) PRIMARY KEY,  FIRSTNAME VARCHAR2(255), MAIDENNAME VARCHAR2(255), LASTNAME VARCHAR2(255), SOCSECNUM VARCHAR2(255), FK7_FOR_CUSTOMER_TABLE VARCHAR2(255), FK_FOR_INFO_TABLE VARCHAR2(255) );

DROP table INFO_TABLE cascade;
CREATE TABLE INFO_TABLE (ID VARCHAR2(255) PRIMARY KEY, INFOSTREET VARCHAR2(255), INFOCITY VARCHAR2(255), INFOSTATE VARCHAR2(255), INFOZIP VARCHAR2(255), FK_FOR_SPOUSE_TABLE VARCHAR2(255) );

DROP table LINEITEM_TABLE cascade;
CREATE TABLE LINEITEM_TABLE(id VARCHAR2(255) PRIMARY KEY,quantity integer,FK_FOR_PRODUCT_TABLE VARCHAR2(255),FK1_FOR_ORDER_TABLE VARCHAR2(255));

ALTER TABLE PHONE_TABLE add constraint FK_FOR_ADDRESS Foreign Key (FK_FOR_ADDRESS) references ADDRESS(id)ON DELETE CASCADE;

ALTER TABLE ALIAS_TABLE add constraint FK1_FOR_CUSTOMER_TABLE Foreign Key (FK1_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE ALIAS_TABLE add constraint FK2_FOR_CUSTOMER_TABLE Foreign Key (FK2_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE FKS_ALIAS_CUSTOMER  add constraint FK_FOR_CUSTOMER_TABLE Foreign Key (FK_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE FKS_ALIAS_CUSTOMER  add constraint FK_FOR_ALIAS_TABLE Foreign Key (FK_FOR_ALIAS_TABLE) references ALIAS_TABLE(id) ON DELETE CASCADE;

ALTER TABLE FKS_ANOOP_CNOOP  add constraint FK2_FOR_ALIAS_TABLE Foreign Key (FK2_FOR_ALIAS_TABLE) references ALIAS_TABLE(id) ON DELETE CASCADE;

ALTER TABLE FKS_ANOOP_CNOOP  add constraint FK8_FOR_CUSTOMER_TABLE Foreign Key (FK8_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE CREDITCARD_TABLE add constraint FK3_FOR_CUSTOMER_TABLE Foreign Key (FK3_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE CREDITCARD_TABLE add constraint FK_FOR_ORDER_TABLE Foreign Key (FK_FOR_ORDER_TABLE) references ORDER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE ORDER_TABLE add constraint FK4_FOR_CUSTOMER_TABLE Foreign Key (FK4_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE ORDER_TABLE add constraint FK0_FOR_LINEITEM_TABLE Foreign Key (FK0_FOR_LINEITEM_TABLE) references LINEITEM_TABLE(id) ON DELETE CASCADE;

ALTER TABLE LINEITEM_TABLE add constraint FK_FOR_PRODUCT_TABLE Foreign Key (FK_FOR_PRODUCT_TABLE) references PRODUCT_TABLE(id) ON DELETE CASCADE;

ALTER TABLE LINEITEM_TABLE add constraint FK1_FOR_ORDER_TABLE Foreign Key (FK1_FOR_ORDER_TABLE) references ORDER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE CUSTOMER_TABLE add constraint FK5_FOR_CUSTOMER_TABLE Foreign Key (FK5_FOR_CUSTOMER_TABLE) references ADDRESS(id) ON DELETE CASCADE;

ALTER TABLE CUSTOMER_TABLE add constraint FK6_FOR_CUSTOMER_TABLE Foreign Key (FK6_FOR_CUSTOMER_TABLE) references ADDRESS(id) ON DELETE CASCADE;

ALTER TABLE SPOUSE_TABLE add constraint FK7_FOR_CUSTOMER_TABLE Foreign Key (FK7_FOR_CUSTOMER_TABLE) references CUSTOMER_TABLE(id) ON DELETE CASCADE;

ALTER TABLE SPOUSE_TABLE add constraint FK_FOR_INFO_TABLE Foreign Key (FK_FOR_INFO_TABLE) references INFO_TABLE(id) ON DELETE CASCADE;

ALTER TABLE INFO_TABLE add constraint FK_FOR_SPOUSE_TABLE Foreign Key (FK_FOR_SPOUSE_TABLE) references SPOUSE_TABLE(id) ON DELETE CASCADE;

DROP  table BEANEJB_1X1_BI_BTOB cascade;
CREATE TABLE BEANEJB_1X1_BI_BTOB   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1X1_BI_BTOB VARCHAR(255),     FK2_FOR_AEJB_1X1_BI_BTOB VARCHAR(255),     FK1_FOR_BEJB_1X1_BI_BTOB VARCHAR(255),     FK2_FOR_BEJB_1X1_BI_BTOB VARCHAR(255));

DROP table AEJB_1X1_BI_BTOB cascade;
CREATE TABLE  AEJB_1X1_BI_BTOB    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1X1_BI_BTOB cascade;
CREATE TABLE BEJB_1X1_BI_BTOB    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1X1_BI_BTOB VARCHAR(255));

ALTER TABLE BEANEJB_1X1_BI_BTOB add constraint FK1_FOR_AEJB_1X1_BI_BTOB  Foreign Key (FK1_FOR_AEJB_1X1_BI_BTOB) references AEJB_1X1_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_BI_BTOB add constraint FK2_FOR_AEJB_1X1_BI_BTOB  Foreign Key (FK2_FOR_AEJB_1X1_BI_BTOB) references AEJB_1X1_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_BI_BTOB add constraint FK1_FOR_BEJB_1X1_BI_BTOB  Foreign Key (FK1_FOR_BEJB_1X1_BI_BTOB) references BEJB_1X1_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_BI_BTOB add constraint FK2_FOR_BEJB_1X1_BI_BTOB  Foreign Key (FK2_FOR_BEJB_1X1_BI_BTOB) references BEJB_1X1_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEJB_1X1_BI_BTOB add constraint FK_FOR_AEJB_1X1_BI_BTOB  Foreign Key (FK_FOR_AEJB_1X1_BI_BTOB) references AEJB_1X1_BI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_1X1_BI_CASCADE cascade;
CREATE TABLE BEANEJB_1X1_BI_CASCADE   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1X1_BI_CASCADE VARCHAR(255),     FK2_FOR_AEJB_1X1_BI_CASCADE VARCHAR(255),     FK1_FOR_BEJB_1X1_BI_CASCADE VARCHAR(255),     FK2_FOR_BEJB_1X1_BI_CASCADE VARCHAR(255));

DROP table AEJB_1X1_BI_CASCADE cascade;
CREATE TABLE  AEJB_1X1_BI_CASCADE    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1X1_BI_CASCADE cascade;
CREATE TABLE BEJB_1X1_BI_CASCADE    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1X1_BI_CASCADE VARCHAR(255));

ALTER TABLE BEANEJB_1X1_BI_CASCADE add constraint FK1_FOR_AEJB_1X1_BI_CASCADE  Foreign Key (FK1_FOR_AEJB_1X1_BI_CASCADE) references AEJB_1X1_BI_CASCADE(id);

ALTER TABLE BEANEJB_1X1_BI_CASCADE add constraint FK2_FOR_AEJB_1X1_BI_CASCADE  Foreign Key (FK2_FOR_AEJB_1X1_BI_CASCADE) references AEJB_1X1_BI_CASCADE(id);

ALTER TABLE BEANEJB_1X1_BI_CASCADE add constraint FK1_FOR_BEJB_1X1_BI_CASCADE  Foreign Key (FK1_FOR_BEJB_1X1_BI_CASCADE) references BEJB_1X1_BI_CASCADE(id);

ALTER TABLE BEANEJB_1X1_BI_CASCADE add constraint FK2_FOR_BEJB_1X1_BI_CASCADE  Foreign Key (FK2_FOR_BEJB_1X1_BI_CASCADE) references BEJB_1X1_BI_CASCADE(id);

DROP  table BEANEJB_1XM_BI_DELETE cascade;
CREATE TABLE BEANEJB_1XM_BI_DELETE   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1XM_BI_DELETE VARCHAR(255),     FK2_FOR_AEJB_1XM_BI_DELETE VARCHAR(255),     FK1_FOR_BEJB_1XM_BI_DELETE VARCHAR(255),     FK2_FOR_BEJB_1XM_BI_DELETE VARCHAR(255));

DROP table AEJB_1XM_BI_DELETE cascade;
CREATE TABLE  AEJB_1XM_BI_DELETE    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1XM_BI_DELETE cascade;
CREATE TABLE BEJB_1XM_BI_DELETE    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1XM_BI_DELETE VARCHAR(255));

ALTER TABLE BEANEJB_1XM_BI_DELETE add constraint FK1_FOR_AEJB_1XM_BI_DELETE  Foreign Key (FK1_FOR_AEJB_1XM_BI_DELETE) references AEJB_1XM_BI_DELETE(id);

ALTER TABLE BEANEJB_1XM_BI_DELETE add constraint FK2_FOR_AEJB_1XM_BI_DELETE  Foreign Key (FK2_FOR_AEJB_1XM_BI_DELETE) references AEJB_1XM_BI_DELETE(id);

ALTER TABLE BEANEJB_1XM_BI_DELETE add constraint FK1_FOR_BEJB_1XM_BI_DELETE  Foreign Key (FK1_FOR_BEJB_1XM_BI_DELETE) references BEJB_1XM_BI_DELETE(id);

ALTER TABLE BEANEJB_1XM_BI_DELETE add constraint FK2_FOR_BEJB_1XM_BI_DELETE  Foreign Key (FK2_FOR_BEJB_1XM_BI_DELETE) references BEJB_1XM_BI_DELETE(id);

ALTER TABLE BEJB_1XM_BI_DELETE add constraint FK_FOR_AEJB_1XM_BI_DELETE  Foreign Key (FK_FOR_AEJB_1XM_BI_DELETE) references AEJB_1XM_BI_DELETE(id);

DROP  table BEANEJB_1XM_UNI_BTOB cascade;
CREATE TABLE BEANEJB_1XM_UNI_BTOB   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1XM_UNI_BTOB VARCHAR(255),     FK2_FOR_AEJB_1XM_UNI_BTOB VARCHAR(255),     FK1_FOR_BEJB_1XM_UNI_BTOB VARCHAR(255),     FK2_FOR_BEJB_1XM_UNI_BTOB VARCHAR(255),     FK3_FOR_BEJB_1XM_UNI_BTOB VARCHAR(255),      FK4_FOR_BEJB_1XM_UNI_BTOB VARCHAR(255));

DROP table AEJB_1XM_UNI_BTOB cascade;
CREATE TABLE  AEJB_1XM_UNI_BTOB    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1XM_UNI_BTOB cascade;
CREATE TABLE BEJB_1XM_UNI_BTOB    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1XM_UNI_BTOB VARCHAR(255));

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK1_FOR_AEJB_1XM_UNI_BTOB  Foreign Key (FK1_FOR_AEJB_1XM_UNI_BTOB) references AEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK2_FOR_AEJB_1XM_UNI_BTOB  Foreign Key (FK2_FOR_AEJB_1XM_UNI_BTOB) references AEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK1_FOR_BEJB_1XM_UNI_BTOB  Foreign Key (FK1_FOR_BEJB_1XM_UNI_BTOB) references BEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK2_FOR_BEJB_1XM_UNI_BTOB  Foreign Key (FK2_FOR_BEJB_1XM_UNI_BTOB) references BEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK3_FOR_BEJB_1XM_UNI_BTOB  Foreign Key (FK3_FOR_BEJB_1XM_UNI_BTOB) references BEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_UNI_BTOB add constraint FK4_FOR_BEJB_1XM_UNI_BTOB  Foreign Key (FK4_FOR_BEJB_1XM_UNI_BTOB) references BEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEJB_1XM_UNI_BTOB add constraint FK_FOR_AEJB_1XM_UNI_BTOB  Foreign Key (FK_FOR_AEJB_1XM_UNI_BTOB) references AEJB_1XM_UNI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_MX1_UNI_BTOB cascade;
CREATE TABLE BEANEJB_MX1_UNI_BTOB   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_MX1_UNI_BTOB VARCHAR(255),     FK2_FOR_AEJB_MX1_UNI_BTOB VARCHAR(255),     FK1_FOR_BEJB_MX1_UNI_BTOB VARCHAR(255),     FK2_FOR_BEJB_MX1_UNI_BTOB VARCHAR(255),     FK3_FOR_BEJB_MX1_UNI_BTOB VARCHAR(255),     FK4_FOR_BEJB_MX1_UNI_BTOB VARCHAR(255));

DROP TABLE AEJB_MX1_UNI_BTOB cascade;
CREATE TABLE  AEJB_MX1_UNI_BTOB    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_MX1_UNI_BTOB cascade;
CREATE TABLE BEJB_MX1_UNI_BTOB    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_MX1_UNI_BTOB VARCHAR(255));

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK1_FOR_AEJB_MX1_UNI_BTOB  Foreign Key (FK1_FOR_AEJB_MX1_UNI_BTOB) references AEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK2_FOR_AEJB_MX1_UNI_BTOB  Foreign Key (FK2_FOR_AEJB_MX1_UNI_BTOB) references AEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK1_FOR_BEJB_MX1_UNI_BTOB  Foreign Key (FK1_FOR_BEJB_MX1_UNI_BTOB) references BEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK2_FOR_BEJB_MX1_UNI_BTOB  Foreign Key (FK2_FOR_BEJB_MX1_UNI_BTOB) references BEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK3_FOR_BEJB_MX1_UNI_BTOB  Foreign Key (FK3_FOR_BEJB_MX1_UNI_BTOB) references BEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MX1_UNI_BTOB add constraint FK4_FOR_BEJB_MX1_UNI_BTOB  Foreign Key (FK4_FOR_BEJB_MX1_UNI_BTOB) references BEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEJB_MX1_UNI_BTOB add constraint FK_FOR_AEJB_MX1_UNI_BTOB  Foreign Key (FK_FOR_AEJB_MX1_UNI_BTOB) references AEJB_MX1_UNI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_MX1_UNI_DELETE cascade;
CREATE TABLE BEANEJB_MX1_UNI_DELETE   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_MX1_UNI_DELETE VARCHAR(255) ,     FK2_FOR_AEJB_MX1_UNI_DELETE VARCHAR(255) ,     FK1_FOR_BEJB_MX1_UNI_DELETE VARCHAR(255) ,     FK2_FOR_BEJB_MX1_UNI_DELETE VARCHAR(255) ,     FK3_FOR_BEJB_MX1_UNI_DELETE VARCHAR(255) ,     FK4_FOR_BEJB_MX1_UNI_DELETE VARCHAR(255) );

DROP table AEJB_MX1_UNI_DELETE cascade;
CREATE TABLE  AEJB_MX1_UNI_DELETE    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_MX1_UNI_DELETE cascade;
CREATE TABLE BEJB_MX1_UNI_DELETE    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_MX1_UNI_DELETE VARCHAR(255));

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK1_FOR_AEJB_MX1_UNI_DELETE  Foreign Key (FK1_FOR_AEJB_MX1_UNI_DELETE) references AEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK2_FOR_AEJB_MX1_UNI_DELETE  Foreign Key (FK2_FOR_AEJB_MX1_UNI_DELETE) references AEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK1_FOR_BEJB_MX1_UNI_DELETE  Foreign Key (FK1_FOR_BEJB_MX1_UNI_DELETE) references BEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK2_FOR_BEJB_MX1_UNI_DELETE Foreign Key (FK2_FOR_BEJB_MX1_UNI_DELETE) references BEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK3_FOR_BEJB_MX1_UNI_DELETE Foreign Key (FK3_FOR_BEJB_MX1_UNI_DELETE) references BEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEANEJB_MX1_UNI_DELETE add constraint FK4_FOR_BEJB_MX1_UNI_DELETE Foreign Key (FK4_FOR_BEJB_MX1_UNI_DELETE) references BEJB_MX1_UNI_DELETE(id);

ALTER TABLE BEJB_MX1_UNI_DELETE add constraint FK_FOR_AEJB_MX1_UNI_DELETE Foreign Key (FK_FOR_AEJB_MX1_UNI_DELETE) references AEJB_MX1_UNI_DELETE(id);

DROP  table BEANEJB_MXM_BI_BTOB cascade;
CREATE TABLE BEANEJB_MXM_BI_BTOB   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_MXM_BI_BTOB VARCHAR(255) ,     FK2_FOR_AEJB_MXM_BI_BTOB VARCHAR(255) ,     FK3_FOR_AEJB_MXM_BI_BTOB VARCHAR(255) ,     FK4_FOR_AEJB_MXM_BI_BTOB VARCHAR(255) ,     FK1_FOR_BEJB_MXM_BI_BTOB VARCHAR(255) ,     FK2_FOR_BEJB_MXM_BI_BTOB VARCHAR(255) ,     FK3_FOR_BEJB_MXM_BI_BTOB VARCHAR(255) ,     FK4_FOR_BEJB_MXM_BI_BTOB VARCHAR(255) );

DROP table AEJB_MXM_BI_BTOB cascade;
CREATE TABLE  AEJB_MXM_BI_BTOB    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_MXM_BI_BTOB cascade;
CREATE TABLE BEJB_MXM_BI_BTOB    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL );

DROP table FKEYS_MXM_BI_BTOB cascade;
CREATE TABLE FKEYS_MXM_BI_BTOB    ( FK_FOR_AEJB_MXM_BI_BTOB  VARCHAR(255),     FK_FOR_BEJB_MXM_BI_BTOB  VARCHAR(255));

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK1_FOR_AEJB_MXM_BI_BTOB Foreign Key (FK1_FOR_AEJB_MXM_BI_BTOB) references AEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK2_FOR_AEJB_MXM_BI_BTOB Foreign Key (FK2_FOR_AEJB_MXM_BI_BTOB) references AEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK3_FOR_AEJB_MXM_BI_BTOB Foreign Key (FK3_FOR_AEJB_MXM_BI_BTOB) references AEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK4_FOR_AEJB_MXM_BI_BTOB Foreign Key (FK4_FOR_AEJB_MXM_BI_BTOB) references AEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK1_FOR_BEJB_MXM_BI_BTOB Foreign Key (FK1_FOR_BEJB_MXM_BI_BTOB) references BEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK2_FOR_BEJB_MXM_BI_BTOB Foreign Key (FK2_FOR_BEJB_MXM_BI_BTOB) references BEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK3_FOR_BEJB_MXM_BI_BTOB Foreign Key (FK3_FOR_BEJB_MXM_BI_BTOB) references BEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_BI_BTOB add constraint FK4_FOR_BEJB_MXM_BI_BTOB Foreign Key (FK4_FOR_BEJB_MXM_BI_BTOB) references BEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE FKEYS_MXM_BI_BTOB add constraint FK_FOR_AEJB_MXM_BI_BTOB Foreign Key (FK_FOR_AEJB_MXM_BI_BTOB) references AEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE FKEYS_MXM_BI_BTOB add constraint FK_FOR_BEJB_MXM_BI_BTOB Foreign Key (FK_FOR_BEJB_MXM_BI_BTOB) references BEJB_MXM_BI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_MXM_BI_DELETE cascade;
CREATE TABLE BEANEJB_MXM_BI_DELETE   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_MXM_BI_DELETE VARCHAR(255) ,     FK2_FOR_AEJB_MXM_BI_DELETE VARCHAR(255) ,     FK3_FOR_AEJB_MXM_BI_DELETE VARCHAR(255) ,     FK4_FOR_AEJB_MXM_BI_DELETE VARCHAR(255) ,     FK1_FOR_BEJB_MXM_BI_DELETE VARCHAR(255) ,     FK2_FOR_BEJB_MXM_BI_DELETE VARCHAR(255) ,     FK3_FOR_BEJB_MXM_BI_DELETE VARCHAR(255) ,     FK4_FOR_BEJB_MXM_BI_DELETE VARCHAR(255) );

DROP table AEJB_MXM_BI_DELETE cascade;
CREATE TABLE  AEJB_MXM_BI_DELETE    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_MXM_BI_DELETE cascade;
CREATE TABLE BEJB_MXM_BI_DELETE    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL );

DROP table FKEYS_MXM_BI_DELETE cascade;
CREATE TABLE FKEYS_MXM_BI_DELETE    ( FK_FOR_AEJB_MXM_BI_DELETE  VARCHAR(255),     FK_FOR_BEJB_MXM_BI_DELETE  VARCHAR(255));

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK1_FOR_AEJB_MXM_BI_DELETE Foreign Key (FK1_FOR_AEJB_MXM_BI_DELETE) references AEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK2_FOR_AEJB_MXM_BI_DELETE Foreign Key (FK2_FOR_AEJB_MXM_BI_DELETE) references AEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK3_FOR_AEJB_MXM_BI_DELETE Foreign Key (FK3_FOR_AEJB_MXM_BI_DELETE) references AEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK4_FOR_AEJB_MXM_BI_DELETE Foreign Key (FK4_FOR_AEJB_MXM_BI_DELETE) references AEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK1_FOR_BEJB_MXM_BI_DELETE Foreign Key (FK1_FOR_BEJB_MXM_BI_DELETE) references BEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK2_FOR_BEJB_MXM_BI_DELETE Foreign Key (FK2_FOR_BEJB_MXM_BI_DELETE) references BEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK3_FOR_BEJB_MXM_BI_DELETE Foreign Key (FK3_FOR_BEJB_MXM_BI_DELETE) references BEJB_MXM_BI_DELETE(id);

ALTER TABLE BEANEJB_MXM_BI_DELETE add constraint FK4_FOR_BEJB_MXM_BI_DELETE Foreign Key (FK4_FOR_BEJB_MXM_BI_DELETE) references BEJB_MXM_BI_DELETE(id);

ALTER TABLE FKEYS_MXM_BI_DELETE add constraint FK_FOR_AEJB_MXM_BI_DELETE Foreign Key (FK_FOR_AEJB_MXM_BI_DELETE) references AEJB_MXM_BI_DELETE(id);

ALTER TABLE FKEYS_MXM_BI_DELETE add constraint FK_FOR_BEJB_MXM_BI_DELETE Foreign Key (FK_FOR_BEJB_MXM_BI_DELETE) references BEJB_MXM_BI_DELETE(id);

DROP  table BEANEJB_MXM_UNI_BTOB cascade;
CREATE TABLE BEANEJB_MXM_UNI_BTOB   ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK2_FOR_AEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK3_FOR_AEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK4_FOR_AEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK1_FOR_BEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK2_FOR_BEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK3_FOR_BEJB_MXM_UNI_BTOB VARCHAR(255) ,     FK4_FOR_BEJB_MXM_UNI_BTOB VARCHAR(255) );

DROP table AEJB_MXM_UNI_BTOB cascade;
CREATE TABLE  AEJB_MXM_UNI_BTOB    ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_MXM_UNI_BTOB cascade;
CREATE TABLE BEJB_MXM_UNI_BTOB    ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL );

DROP table FKEYS_MXM_UNI_BTOB cascade;
CREATE TABLE FKEYS_MXM_UNI_BTOB    ( FK_FOR_AEJB_MXM_UNI_BTOB  VARCHAR(255),     FK_FOR_BEJB_MXM_UNI_BTOB  VARCHAR(255));

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK1_FOR_AEJB_MXM_UNI_BTOB Foreign Key (FK1_FOR_AEJB_MXM_UNI_BTOB) references AEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK2_FOR_AEJB_MXM_UNI_BTOB Foreign Key (FK2_FOR_AEJB_MXM_UNI_BTOB) references AEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK3_FOR_AEJB_MXM_UNI_BTOB Foreign Key (FK3_FOR_AEJB_MXM_UNI_BTOB) references AEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK4_FOR_AEJB_MXM_UNI_BTOB Foreign Key (FK4_FOR_AEJB_MXM_UNI_BTOB) references AEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK1_FOR_BEJB_MXM_UNI_BTOB Foreign Key (FK1_FOR_BEJB_MXM_UNI_BTOB) references BEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK2_FOR_BEJB_MXM_UNI_BTOB Foreign Key (FK2_FOR_BEJB_MXM_UNI_BTOB) references BEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK3_FOR_BEJB_MXM_UNI_BTOB Foreign Key (FK3_FOR_BEJB_MXM_UNI_BTOB) references BEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_MXM_UNI_BTOB add constraint FK4_FOR_BEJB_MXM_UNI_BTOB Foreign Key (FK4_FOR_BEJB_MXM_UNI_BTOB) references BEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE FKEYS_MXM_UNI_BTOB add constraint FK_FOR_AEJB_MXM_UNI_BTOB Foreign Key (FK_FOR_AEJB_MXM_UNI_BTOB) references AEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE FKEYS_MXM_UNI_BTOB add constraint FK_FOR_BEJB_MXM_UNI_BTOB Foreign Key (FK_FOR_BEJB_MXM_UNI_BTOB) references BEJB_MXM_UNI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_1X1_UNI_BTOB cascade;
CREATE TABLE BEANEJB_1X1_UNI_BTOB ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1X1_UNI_BTOB VARCHAR(255),     FK2_FOR_AEJB_1X1_UNI_BTOB VARCHAR(255),     FK1_FOR_BEJB_1X1_UNI_BTOB VARCHAR(255),     FK2_FOR_BEJB_1X1_UNI_BTOB VARCHAR(255));

DROP table AEJB_1X1_UNI_BTOB cascade;
CREATE TABLE  AEJB_1X1_UNI_BTOB ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1X1_UNI_BTOB cascade;
CREATE TABLE BEJB_1X1_UNI_BTOB ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1X1_UNI_BTOB VARCHAR(255));

ALTER TABLE BEANEJB_1X1_UNI_BTOB add constraint FK1_FOR_AEJB_1X1_UNI_BTOB  Foreign Key (FK1_FOR_AEJB_1X1_UNI_BTOB) references AEJB_1X1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_UNI_BTOB add constraint FK2_FOR_AEJB_1X1_UNI_BTOB  Foreign Key (FK2_FOR_AEJB_1X1_UNI_BTOB) references AEJB_1X1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_UNI_BTOB add constraint FK1_FOR_BEJB_1X1_UNI_BTOB  Foreign Key (FK1_FOR_BEJB_1X1_UNI_BTOB) references BEJB_1X1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1X1_UNI_BTOB add constraint FK2_FOR_BEJB_1X1_UNI_BTOB  Foreign Key (FK2_FOR_BEJB_1X1_UNI_BTOB) references BEJB_1X1_UNI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEJB_1X1_UNI_BTOB add constraint FK_FOR_AEJB_1X1_UNI_BTOB  Foreign Key (FK_FOR_AEJB_1X1_UNI_BTOB) references AEJB_1X1_UNI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_1XM_BI_BTOB cascade;
CREATE TABLE BEANEJB_1XM_BI_BTOB ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1XM_BI_BTOB VARCHAR(255),     FK2_FOR_AEJB_1XM_BI_BTOB VARCHAR(255),     FK1_FOR_BEJB_1XM_BI_BTOB VARCHAR(255),     FK2_FOR_BEJB_1XM_BI_BTOB VARCHAR(255),     FK3_FOR_BEJB_1XM_BI_BTOB VARCHAR(255),     FK4_FOR_BEJB_1XM_BI_BTOB VARCHAR(255));

DROP table AEJB_1XM_BI_BTOB cascade;
CREATE TABLE  AEJB_1XM_BI_BTOB ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1XM_BI_BTOB cascade;
CREATE TABLE BEJB_1XM_BI_BTOB ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1XM_BI_BTOB VARCHAR(255));

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK1_FOR_AEJB_1XM_BI_BTOB  Foreign Key (FK1_FOR_AEJB_1XM_BI_BTOB) references AEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK2_FOR_AEJB_1XM_BI_BTOB Foreign Key (FK2_FOR_AEJB_1XM_BI_BTOB) references AEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK1_FOR_BEJB_1XM_BI_BTOB Foreign Key (FK1_FOR_BEJB_1XM_BI_BTOB) references BEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK2_FOR_BEJB_1XM_BI_BTOB Foreign Key (FK2_FOR_BEJB_1XM_BI_BTOB) references BEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK3_FOR_BEJB_1XM_BI_BTOB Foreign Key (FK3_FOR_BEJB_1XM_BI_BTOB) references BEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEANEJB_1XM_BI_BTOB add constraint FK4_FOR_BEJB_1XM_BI_BTOB Foreign Key (FK4_FOR_BEJB_1XM_BI_BTOB) references BEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

ALTER TABLE BEJB_1XM_BI_BTOB add constraint FK_FOR_AEJB_1XM_BI_BTOB Foreign Key (FK_FOR_AEJB_1XM_BI_BTOB) references AEJB_1XM_BI_BTOB(id)ON DELETE CASCADE;

DROP  table BEANEJB_1XM_BI_CASCADE cascade;
CREATE TABLE BEANEJB_1XM_BI_CASCADE ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL,     FK1_FOR_AEJB_1XM_BI_CASCADE VARCHAR(255),     FK2_FOR_AEJB_1XM_BI_CASCADE VARCHAR(255),     FK1_FOR_BEJB_1XM_BI_CASCADE VARCHAR(255),     FK2_FOR_BEJB_1XM_BI_CASCADE VARCHAR(255));

DROP table AEJB_1XM_BI_CASCADE cascade;
CREATE TABLE  AEJB_1XM_BI_CASCADE ( id VARCHAR(255)  PRIMARY KEY,      name VARCHAR(255) ,      value NUMBER NOT NULL);

DROP table BEJB_1XM_BI_CASCADE cascade;
CREATE TABLE BEJB_1XM_BI_CASCADE ( id  VARCHAR(255) PRIMARY KEY,      name VARCHAR(255),      value NUMBER NOT NULL,     FK_FOR_AEJB_1XM_BI_CASCADE VARCHAR(255));

ALTER TABLE BEANEJB_1XM_BI_CASCADE add constraint FK1_FOR_AEJB_1XM_BI_CASCADE Foreign Key (FK1_FOR_AEJB_1XM_BI_CASCADE) references AEJB_1XM_BI_CASCADE(id);

ALTER TABLE BEANEJB_1XM_BI_CASCADE add constraint FK2_FOR_AEJB_1XM_BI_CASCADE Foreign Key (FK2_FOR_AEJB_1XM_BI_CASCADE) references AEJB_1XM_BI_CASCADE(id);

ALTER TABLE BEANEJB_1XM_BI_CASCADE add constraint FK1_FOR_BEJB_1XM_BI_CASCADE Foreign Key (FK1_FOR_BEJB_1XM_BI_CASCADE) references BEJB_1XM_BI_CASCADE(id);

ALTER TABLE BEANEJB_1XM_BI_CASCADE add constraint FK2_FOR_BEJB_1XM_BI_CASCADE Foreign Key (FK2_FOR_BEJB_1XM_BI_CASCADE) references BEJB_1XM_BI_CASCADE(id);

ALTER TABLE BEJB_1XM_BI_CASCADE add constraint FK_FOR_AEJB_1XM_BI_CASCADE Foreign Key (FK_FOR_AEJB_1XM_BI_CASCADE) references AEJB_1XM_BI_CASCADE(id);


DROP TABLE EMPLOYEE cascade;
EMPLOYEE
CREATE TABLE EMPLOYEE (ID INTEGERNOT NULL, FIRSTNAME VARCHAR(255), LASTNAME VARCHAR(255), HIREDATE DATE, SALARY REAL NOT NULL, STATUS VARCHAR(255), FK_MGR INTEGER, FK_DEPT INTEGER, FK_PROJECT INTEGER, FK_INS INTEGER, constraint PK_EMPLOYEE PRIMARY KEY(ID));

DROP TABLE DEPARTMENT cascade;
DEPARTMENT
CREATE TABLE DEPARTMENT (NAME VARCHAR(255), ID INTEGERNOT NULL, COMPANY_COMPANYID INTEGER , constraint PK_DEPARTMENT PRIMARY KEY(ID));

DROP TABLE INSURANCE cascade;
INSURANCE
CREATE TABLE INSURANCE (INSID INTEGERNOT NULL, CARRIER VARCHAR(255) , constraint PK_INSURANCE PRIMARY KEY(INSID));

DROP TABLE COFFEE cascade;
COFFEE
CREATE TABLE COFFEE (ID INTEGERNOT NULL, BRANDNAME VARCHAR(25), PRICE REAL, constraint PK_COFFEE PRIMARY KEY(ID));

DROP TABLE COMPANY cascade ;
COMPANY
CREATE TABLE COMPANY (COMPANYID INTEGERNOT NULL, NAME VARCHAR(25), ADDRESS_ID VARCHAR(255) , constraint PK_COMPANY PRIMARY KEY(COMPANYID));

DROP TABLE TEAM cascade ;
TEAM
CREATE TABLE TEAM (NAME VARCHAR(255) NOT NULL, TEAMID INTEGERNOT NULL, COMPANY_COMPANYID INTEGER, constraint PK_TEAM PRIMARY KEY(TEAMID));

ALTER TABLE TEAM ADD CONSTRAINT COMPANY_COMPANYID FOREIGN KEY (COMPANY_COMPANYID) REFERENCES COMPANY(COMPANYID) ON DELETE CASCADE ;
ALTER TABLE COMPANY ADD CONSTRAINT FK_ADDRESS FOREIGN KEY (ADDRESS_ID) REFERENCES ADDRESS(ID) ON DELETE CASCADE;

ALTER TABLE DEPARTMENT ADD CONSTRAINT FK_COMPANY FOREIGN KEY (COMPANY_COMPANYID) REFERENCES COMPANY(COMPANYID) ON DELETE CASCADE ;

DROP TABLE PROJECT cascade;
PROJECT
CREATE TABLE PROJECT (PROJID INTEGERNOT NULL, NAME VARCHAR(25), BUDGET DECIMAL(18, 0), constraint PK_PROJECT PRIMARY KEY(PROJID));

DROP TABLE PERSON  cascade;
CREATE TABLE PERSON (PERSONID INTEGER NOT NULL, FIRSTNAME VARCHAR(255) , LASTNAME VARCHAR(255) , PROJECT_PROJID INTEGER , INSURANCE_INSID INTEGER , TEAM_TEAMID INTEGER , CONSTRAINT PK_PERSON PRIMARY KEY (PERSONID)) ;

DROP TABLE ANNUALREVIEW ;
CREATE TABLE ANNUALREVIEW (AID INTEGER NOT NULL, SERVICE INTEGER, CONSTRAINT PK_ANNUAL PRIMARY KEY (AID));

DROP TABLE PROJECT_PERSON cascade;
CREATE TABLE PROJECT_PERSON (PROJECTS_PROJID INTEGER , PERSONS_PERSONID INTEGER );

DROP TABLE PERSON_INSURANCE cascade;
CREATE TABLE PERSON_INSURANCE (PERSON_PERSONID INTEGER, INSURANCE_INSID INTEGER );

DROP TABLE PERSON_ANNUALREVIEW cascade;
CREATE TABLE PERSON_ANNUALREVIEW (PERSON_PERSONID INTEGER, ANNUALREVIEWS_AID INTEGER );

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_MGR FOREIGN KEY (FK_MGR) REFERENCES EMPLOYEE(ID) ON DELETE CASCADE;
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_DEPT FOREIGN KEY (FK_DEPT) REFERENCES DEPARTMENT(ID) ON DELETE CASCADE;
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_PROJECT FOREIGN KEY (FK_PROJECT) REFERENCES PROJECT(PROJID) ON DELETE CASCADE ;
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_INS FOREIGN KEY (FK_INS) REFERENCES INSURANCE(INSID) ON DELETE CASCADE ;

ALTER TABLE PERSON ADD CONSTRAINT TEAM_TEAMID FOREIGN KEY (TEAM_TEAMID) REFERENCES TEAM(TEAMID) ON DELETE CASCADE;
ALTER TABLE PERSON ADD CONSTRAINT PROJECT_PROJID FOREIGN KEY (PROJECT_PROJID) REFERENCES PROJECT(PROJID) ON DELETE CASCADE;

ALTER TABLE PROJECT_PERSON ADD CONSTRAINT PROJECTS_PROJID Foreign Key (PROJECTS_PROJID) references PROJECT(PROJID) ON DELETE CASCADE;
ALTER TABLE PROJECT_PERSON ADD CONSTRAINT PERSONS_PERSONID Foreign Key (PERSONS_PERSONID) references PERSON(PERSONID) ON DELETE CASCADE;

ALTER TABLE PERSON_ANNUALREVIEW ADD CONSTRAINT ANNUALREVIEWS_AID Foreign Key (ANNUALREVIEWS_AID) references ANNUALREVIEW(AID) ON DELETE CASCADE;
ALTER TABLE PERSON_ANNUALREVIEW ADD CONSTRAINT PERSON_PERSONID Foreign Key (PERSON_PERSONID) references PERSON(PERSONID) ON DELETE CASCADE;

ALTER TABLE PERSON_INSURANCE ADD CONSTRAINT P_PERSONID Foreign Key (PERSON_PERSONID) references PERSON(PERSONID) ON DELETE CASCADE;
ALTER TABLE PERSON_INSURANCE  ADD CONSTRAINT INS_INSID Foreign Key (INSURANCE_INSID) references INSURANCE(INSID) ON DELETE CASCADE;

DROP TABLE PKEY cascade;
CREATE TABLE PKEY ( PMIDINTEGER INTEGER  NOT NULL, PMIDSTRING VARCHAR(25) NOT NULL, PMIDFLOAT REAL NOT NULL, BRANDNAME VARCHAR(25) , PRICE REAL, constraint PKEY PRIMARY KEY(PMIDINTEGER,PMIDSTRING,PMIDFLOAT) );

DROP TABLE DATATYPES cascade;
DATATYPES
CREATE TABLE DATATYPES (BOOLEANDATA SMALLINT, CHARDATA CHAR, SHORTDATA SMALLINT, INTDATA INTEGER, LONGDATA BIGINT, DBLDATA DOUBLE, FLOATDATA FLOAT, ID INTEGERNOT NULL, ENUMODATA INTEGER, ENUMSDATA VARCHAR(25), BYTEDATA SMALLINT, constraint PK_DATATYPES PRIMARY KEY(ID));

DROP TABLE DATATYPES2 cascade;
DATATYPES2
CREATE TABLE DATATYPES2 (DATATYPES2_ID TIMESTAMPNOT NULL, TIMEDATA TIMESTAMP, TSDATA TIMESTAMP, BYTEDATA LONGVARBINARY, CHARDATA VARCHAR(448), constraint PK_DATATYPES2 PRIMARY KEY(DATATYPES2_ID));

DROP TABLE GENERATOR_TABLE cascade ;
GENERATOR_TABLE
CREATE TABLE GENERATOR_TABLE (PK_COL VARCHAR2(10)NOT NULL, VAL_COL INTEGER , constraint PK_GENERATOR_TABLE PRIMARY KEY(PK_COL));
INSERT into GENERATOR_TABLE(PK_COL, VAL_COL) values ('DT_ID', 1) ;

DROP TABLE SEQUENCE;
SEQUENCE
CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR2(10)NOT NULL, SEQ_COUNT INTEGER , constraint PK_SEQUENCE PRIMARY KEY(SEQ_NAME));
INSERT into SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0) ;

DROP TABLE PURCHASE_ORDER cascade;
PURCHASE_ORDER
CREATE TABLE PURCHASE_ORDER (ID INTEGERNOT NULL, TOTAL INTEGER, constraint PK_PURCHASE_ORDER PRIMARY KEY(ID));

DROP TABLE ORDER1 cascade;
CREATE TABLE ORDER1 (ID VARCHAR2(255) NOT NULL PRIMARY KEY, TOTALPRICE DOUBLE , FK1_FOR_ITEM VARCHAR2(255));
 
DROP TABLE ORDER2 cascade;
CREATE TABLE ORDER2 (ID VARCHAR2(255) NOT NULL PRIMARY KEY, TOTALPRICE DOUBLE , FK2_FOR_ITEM VARCHAR2(255));

DROP TABLE ORDER3 cascade;
CREATE TABLE ORDER3 (ID VARCHAR2(255) NOT NULL PRIMARY KEY, TOTALPRICE DOUBLE , FK3_FOR_ITEM VARCHAR2(255));

DROP TABLE ITEM ;
CREATE TABLE ITEM (ID VARCHAR2(255) PRIMARY KEY, ITEMNAME VARCHAR2(255)) ;

ALTER TABLE ORDER1 add constraint FK1_FOR_ITEM Foreign Key (FK1_FOR_ITEM) references ITEM(ID) ;
ALTER TABLE ORDER2 add constraint FK2_FOR_ITEM Foreign Key (FK2_FOR_ITEM) references ITEM(ID) ;
ALTER TABLE ORDER3 add constraint FK3_FOR_ITEM Foreign Key (FK3_FOR_ITEM) references ITEM(ID) ;

DROP TABLE MEMBER cascade ; 
CREATE TABLE MEMBER (MEMBER_ID INTEGER NOT NULL PRIMARY KEY, MEMBER_NAME VARCHAR(255), DUES SMALLINT NULL, VERSION INTEGER, DONATION NUMBER) ;

DROP TABLE ACCOUNT cascade ;
CREATE TABLE ACCOUNT (ID INTEGER NOT NULL PRIMARY KEY, BALANCE DOUBLE , DEPOSIT DOUBLE , WITHDRAW DOUBLE ) ;

