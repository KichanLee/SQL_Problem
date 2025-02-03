SELECT ROUND(AVG(DAILY_FEE),0)  AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'
GROUP BY CAR_TYPE


/*
    group by 절에서 조건 사용법

    SELECT JOB, SUM(SAL)
    FROM EMP
    WHERE DEPTO IN (20,30)
    GROUP BY JOB HAVING SUM(SAL) > 5000.


    자주 사용하는 집계함수

    COUNT 건수 -> NULL값인 경우 제외
    SUM -> 합계
    AVG -> 평균
    MAX -> 최댓값
    MIN -> 최솟값
    STRING_AGG -> 칼럼 문자열 합치기 NULL인경우 제외

 
    SELECT DEPTNO,
           STRING_AGG(ENAME, ',') AS ENAMES
     FROM EMP
     WHERE DEPTO = 30
     GROUP BY DEPTO

    하게 되면 DETNO = 30 인경우 
    ENAMES 이기찬, 삼기찬, 사기찬, 오기찬, 육기찬 등등 나오게 된다.
*/