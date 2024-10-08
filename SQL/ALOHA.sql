
-- 52
CREATE TABLE MS_STUDENT 
(
  ST_NO NUMBER NOT NULL 
, NAME VARCHAR2(20) NOT NULL 
, CTZ_NO CHAR(14) NOT NULL 
, EMAIL VARCHAR2(100) NOT NULL 
, ADDRESS VARCHAR2(1000) 
, DEPT_NO NUMBER NOT NULL 
, MJ_NO NUMBER NOT NULL 
, REG_DATE DATE DEFAULT SYSDATE NOT NULL 
, UPD_DATE DATE DEFAULT SYSDATE NOT NULL 
, ETC VARCHAR2(1000) DEFAULT '없음' 
, CONSTRAINT MS_STUDENT_PK PRIMARY KEY 
  (
    ST_NO 
  )
  ENABLE 
);

ALTER TABLE MS_STUDENT
ADD CONSTRAINT MS_STUDENT_UK1 UNIQUE 
(
  EMAIL 
)
ENABLE;

COMMENT ON TABLE MS_STUDENT IS '학생들의 정보를 관리한다.';

COMMENT ON COLUMN MS_STUDENT.ST_NO IS '학생번호';

COMMENT ON COLUMN MS_STUDENT.NAME IS '이름';

COMMENT ON COLUMN MS_STUDENT.CTZ_NO IS '주민등록번호';

COMMENT ON COLUMN MS_STUDENT.EMAIL IS '이메일';

COMMENT ON COLUMN MS_STUDENT.ADDRESS IS '주소';

COMMENT ON COLUMN MS_STUDENT.DEPT_NO IS '학부번호';

COMMENT ON COLUMN MS_STUDENT.MJ_NO IS '전공번호';

COMMENT ON COLUMN MS_STUDENT.REG_DATE IS '등록일자';

COMMENT ON COLUMN MS_STUDENT.UPD_DATE IS '수정일자';

COMMENT ON COLUMN MS_STUDENT.ETC IS '특이사항';

INSERT INTO 
"HR"."MS_STUDENT" (ST_NO, NAME, CTZ_NO, EMAIL, ADDRESS, DEPT_NO, MJ_NO, REG_DATE, UPD_DATE) VALUES ('1', '김조은', '030101-1234567', 'ASDFD@ASD.COM', '인천 부평구', '10', '30', TO_DATE('2024-09-05 11:12:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-05 11:12:52', 'YYYY-MM-DD HH24:MI:SS'));

DELETE FROM 
"HR"."MS_STUDENT" WHERE ROWID = 'AAAR2eAAHAAAAIkAAA' AND ORA_ROWSCN = '2108022' and ( "ST_NO" is null or "ST_NO" is not null );

