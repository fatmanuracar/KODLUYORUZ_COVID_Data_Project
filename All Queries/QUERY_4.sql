--korona virüsü belirti gösteren ilk on ülkenin 2020 ocak ayýndaki total cases ve total deaths bul

SELECT * FROM 
(
SELECT  cou.countryýd,  countryname , MIN(DATE_), max(TOTAL_CASES), MAX(TOTAL_DEATHS)
FROM CASES_BY_COUNTRIES CBC 
INNER JOIN COUNTRY COU ON COU.COUNTRYID=CBC.COUNTRY_ID
INNER JOIN CONTINENT CONT ON CONT.ID=COU.CONTINENTID
WHERE TOTAL_CASES IS NOT NULL
GROUP BY cou.countryname,cou.countryýd,TOTAL_CASES, TOTAL_DEATHS
ORDER BY MIN(DATE_)
)
WHERE 1=1
AND ROWNUM<=10