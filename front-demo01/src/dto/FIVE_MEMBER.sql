SELECT *
FROM FIVE_MEMBER

INSERT INTO FIVE_MEMBER 
(ID, PASSWORD, NAME, EMAIL, PHONENUMBER, AUTH)
VALUES('aaa', '12345', '관리자','ohShopping@naver.com', '01055555555', 1) ;

DELETE FIVE_MEMBER
WHERE ID='aaa';


SELECT *
FROM FIVE_SUGGEST