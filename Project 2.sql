select* from new_cars;
select * from used_cars;


-- checking/cleaning duplicates
select mileage , price , `year`,model, count(*)
from used_cars
group by Mileage,Price, `year`, model
having count(*) > 1;

delete from used_cars
WHERE  (mileage , price , `year`,model) IN(
select mileage , price , `year`,model from(
select mileage , price , `year`,model
from used_cars
group by Mileage,Price, `year`, model
having count(*) > 1) as duplicates);
--
select * 
from used_cars
where horsepower > 16;


--
select distinct(brand) as BRAND_NAME , sum(price)
from used_cars
group by BRAND_NAME
order by sum(price) desc;

--
 select count(brand) as Brand_count , brand
 from used_cars
 group by brand
 order by Brand_count desc ;


