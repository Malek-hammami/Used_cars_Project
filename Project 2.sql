SELECT * from used_cars;

-- checking/cleaning duplicates
SELECT mileage , price , `year`,model, count(*)
FROM used_cars
GROUP BY  Mileage,Price, `year`, model
HAVING count(*) > 1;

DELETE FROM used_cars
WHERE  (mileage , price , `year`,model) IN(
SELECT mileage , price , `year`,model from(
SELECT mileage , price , `year`,model
FROM used_cars
GROUP BY  Mileage,Price, `year`, model
HAVING count(*) > 1) as duplicates);

-- DATA CLEANING 

SELECT * 
FROM used_cars
WHERE horsepower > 1000
ORDER BY price DESC;

UPDATE used_cars
SET horsepower = NULL 
WHERE horsepower > 1000;

SELECT * FROM used_cars
WHERE `year` < 1900 or `year` > 2025;

SELECT * FROM used_cars
WHERE `year` LIKE '9_';

update used_cars
SET `year` = 1997
WHERE `year` LIKE '9_';

SELECT * FROM used_cars
WHERE `year` LIKE '2__';

UPDATE used_cars
SET `year` = 2016
WHERE `year` LIKE '2__';

UPDATE used_cars
SET `year` = NULL 
WHERE `year` < 1900 or `year` > 2025;

SELECT * FROM used_cars
WHERE Mileage > 10000000;

DELETE FROM used_cars
WHERE Mileage > 10000000;

SELECT * FROM used_cars
WHERE `year` is NULL and horsepower is NULL;

-- ANALYSING DATA

SELECT distinct(brand) as BRAND_NAME , sum(price) as TOTAL_PRICE ,ROUND(AVG(price),2) as AVERAGE_PRICE
FROM used_cars
GROUP BY BRAND_NAME
ORDER BY sum(price) desc;


SELECT count(brand) as Brand_count , brand
FROM used_cars
GROUP BY  brand
ORDER BY Brand_count desc ;


