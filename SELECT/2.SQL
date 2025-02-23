SELECT MEMBER_ID, MEMBER_NAME, GENDER,  DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE  MONTH(DATE_OF_BIRTH) = 3
AND TLNO IS NOT NULL AND GENDER = 'W'
ORDER BY MEMBER_ID

-- 정답 코드 

SELECT MEMBER_ID MEMBER_NAME TLNO GENDER DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'W'
 AND TLNO IS NOT NULL
 AND DATE_OF_BIRTH LIKE '*-03-*'
ORDER BY MEMBER_ID 

1. , 없이 Column 조회
2. '*-03-*' 와일드 카드는 %로 사용해야함.

SELECT MEMBER_ID, MEMBER_NAME, GENDER,  DATE_FORMAT(DATE_OF_BIRTH, '%y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE  MONTH(DATE_OF_BIRTH) = 3
AND TLNO IS NOT NULL AND GENDER = 'W'
ORDER BY MEMBER_ID


-- 실수 과정들.

1. DATA TYPE 중 DATE, DATETIME 의 차이점
    1. DATE
        포맷은 YYYY-MM-DD 임
    2. DATETIME
        1. time
            09:00:00.1234567
        2. DATETIME
            2019-04-26 09:00 형식으로 출력
    3. DATE_FORMAT(DATE_OF_BIRTH, '%y-%m-%d') 출력방식

    4. %y 와 %Y의 차이점.
        %y 출력시 96 출력   -> 2자리 연도
        %Y 출력시 1996 출력 -> 4자리 연도

    5. MONTH 함수
        날짜에서 MONTH 월을 추출한다.
    





-- 알아야 하는 개념
