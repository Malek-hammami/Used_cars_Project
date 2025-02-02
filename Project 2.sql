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

-- price Analysis

SELECT distinct(brand) as BRAND_NAME , sum(price) as TOTAL_PRICE ,  COUNT(*) AS num_cars
FROM used_cars
GROUP BY BRAND_NAME
ORDER BY sum(price) desc;

SELECT `Year`, brand as Brand_Name,  ROUND(AVG(price),2) as AVERAGE_PRICE
FROM used_cars
GROUP BY `year` , Brand_Name
ORDER BY `year` DESC ;

(SELECT  `year`,brand as brand_name , round(sum(price)/COUNT(BRAND),2) as AVG_price 
FROM used_cars
GROUP BY brand_name,`year`
ORDER BY  AVG_price desc
LIMIT 1 )
union 
(SELECT `year`, brand as brand_name , round(sum(price)/COUNT(BRAND),2) as AVG_price 
FROM used_cars
GROUP BY brand_name,`year`
ORDER BY  AVG_price asc
LIMIT 1 );

-- location analysis
SELECT distinct(Location)as city  ,sum( price) as Total_price 
FROM used_cars
GROUP BY  city
ORDER BY  total_price desc
limit 5;

SELECT distinct(Location)as city  ,brand , count(*) as number_of_cars
FROM used_cars
GROUP BY city,brand
HAVING city in('Tunis', 'Ariana','Sousse','Ben Arous','Sfax')
ORDER by number_of_cars DESC;

--  Most popular Models 
SELECT  brand , count(brand) as Brand_count
FROM used_cars
GROUP BY  brand
ORDER BY Brand_count DESC 
limit 10;

SELECT distinct(brand), Model , count(*) as Number_of_Models
FROM used_cars
GROUP BY brand , model
having brand in ('Volkswagen', 'Peugeot', 'Renault', 'Citroen', 'Mercedes-Benz', 'Fiat', 'Kia', 'BMW', 'Ford', 'Hyundai')
ORDER BY Number_of_Models desc;

-- Measure of how the columns influences the price using correlation_coefficient
-- Horsepower and price 

select (count(*)*sum(horsepower*price)-sum(horsepower)*sum(price))/
(sqrt((COUNT(*)*SUM(price*price)-sum(price)*sum(price))*
(count(*)*SUM(horsepower*horsepower)-sum(horsepower)*sum(horsepower)))) as correlation_coefficient
FROM used_cars ; -- when horsepower + ==> price++

-- year and price

select (count(*)*sum(`year`*price)-sum(`year`)*sum(price))/
(sqrt((COUNT(*)*SUM(price*price)-sum(price)*sum(price))*
(count(*)*SUM(`year`*`year`)-sum(`year`)*sum(`year`)))) as correlation_coefficient
FROM used_cars ; -- when year + ==> price+

-- Mileage and price

select (count(*)*sum(Mileage*price)-sum(Mileage)*sum(price))/
(sqrt((COUNT(*)*SUM(price*price)-sum(price)*sum(price))*
(count(*)*SUM(Mileage*Mileage)-sum(Mileage)*sum(Mileage)))) as correlation_coefficient
FROM used_cars ; -- when Mileage+ ==> price--
-- Mileage > Horsepower > year

-- Mileage
