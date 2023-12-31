-- 코드를 입력하세요
SELECT DISTINCT(T1.CAR_ID)
FROM CAR_RENTAL_COMPANY_CAR AS T1 INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS T2
ON T1.CAR_ID = T2.CAR_ID
WHERE (T1.CAR_TYPE = '세단') AND (DATE_FORMAT(T2.START_DATE, '%Y-%m-%d') LIKE '2022-10%')
ORDER BY T1.CAR_ID DESC;