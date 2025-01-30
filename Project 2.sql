SELECT * from used_cars;


-- checking/cleaning duplicates
SELECT mileage , price , `year`,model, count(*)
FROM used_cars
group by Mileage,Price, `year`, model
having count(*) > 1;

DELETE FROM used_cars
WHERE  (mileage , price , `year`,model) IN(
SELECT mileage , price , `year`,model from(
SELECT mileage , price , `year`,model
FROM used_cars
GROUP BY  Mileage,Price, `year`, model
having count(*) > 1) as duplicates);
--
SELECT * 
FROM  used_cars
WHERE horsepower > 1000
ORDER BY  price DESC;

DELETE FROM used_cars
WHERE horsepower > 1000;


--
SELECT DISTINCT(brand) as BRAND_NAME , sum(price)
FROM used_cars
GROUP BY  BRAND_NAME
ORDER BY  sum(price) desc;

--
 SELECT count(brand) as Brand_count , brand
 FROM used_cars
 GROUP BY  brand
 ORDER BY Brand_count desc ;


