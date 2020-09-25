DROP TABLE FIVE_CART
CASCADE CONSTRAINTS

CREATE TABLE FIVE_CART(
	SEQ NUMBER(8) PRIMARY KEY,
	ID VARCHAR2(50),
	ITEM_SEQ NUMBER(8),
	QTY	NUMBER(8) NOT NULL
)

CREATE SEQUENCE FIVE_CART_SEQ
START WITH 1
INCREMENT BY 1

ALTER TABLE FIVE_CART
ADD
CONSTRAINT FK_CART_ID FOREIGN KEY(ID)
REFERENCES FIVE_MEMBER(ID)

ALTER TABLE FIVE_CART
ADD
CONSTRAINT FK_CART_ITEMSEQ FOREIGN KEY(ITEM_SEQ)
REFERENCES FIVE_CATEGORY(SEQ)

select *
from five_category

INSERT INTO FIVE_CART VALUES(FIVE_CART_SEQ.NEXTVAL, 'a', 52, 2)
INSERT INTO FIVE_CART VALUES(FIVE_CART_SEQ.NEXTVAL, 'a', 47, 1)


SELECT A.SEQ, A.ID, B.SEQ, B.P_NAME, B.P_PRICE, A.QTY, B.FILENAME, A.COLOR, A.ITEM_SIZE
FROM FIVE_CART A
JOIN FIVE_CATEGORY B ON A.ITEM_SEQ = B.SEQ
WHERE A.ID='a'

select *
from five_cart







