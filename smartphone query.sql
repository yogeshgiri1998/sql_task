select * from smartphone_Product
 select * from customer
 select * from company
  
 select distinct category2 from smartphone_Product
 select count (distinct category2) from smartphone_Product 

select count (category3)as "Android" from  smartphone_Product 
 where category3 = 'Android'
 
 
select category3,count (category3) from smartphone_Product group by category3