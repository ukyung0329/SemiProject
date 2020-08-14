CREATE table FIVE_ORDER(
	SEQ NUMBER(8) PRIMARY KEY,
	ID VARCHAR2(50),
	ITEM_SEQ NUMBER(8),
	QTY NUMBER(8) NOT NULL,
	ITEM_SIZE VARCHAR2(30) NOT NULL,
	COLOR VARCHAR2(30) NOT NULL
);

ALTER TABLE FIVE_ORDER
ADD CONSTRAINT FK_TB_ORDER FOREIGN KEY(ID)
REFERENCES FIVE_MEMBER(ID)


ALTER TABLE FIVE_ORDER
ADD CONSTRAINT FK_TB_ORDER1 FOREIGN KEY(ITEM_SEQ)
REFERENCES FIVE_CATEGORY(SEQ)

CREATE SEQUENCE FIVE_ORDER_SEQ
START WITH 1
INCREMENT BY 1
