
-- 덤프파일 import
--imp userid = 관리자계정/비밀번호 file = 덤프파일경로 fromuser=덤프소유계정 touser=임포트계정
imp userid=system/123456 file=C:\parkho\ORACLE\OracleStudy\DUMP\joeun.dmp fromuser=joeun touser= joeun


-- 덤프파일 export 
exp userid=joeun/123456 file=C:\parkho\ORACLE\OracleStudy\DUMP\community.dmp log=C:\parkho\ORACLE\OracleStudy\DUMP\community.log
