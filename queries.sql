
---Special Q1--The products which have been best seller product 3 consecutive days at least once
select bp.numberofconsecutiveday, bp."bestseller_bestseller-ıd" 
from bestseller_product bp 
where bp.numberofconsecutiveday > 3;

---Special Q2--Top 3 product category that females prefer according to total amount of money spent by them
select max(distinct bp."bestseller_bestseller-ıd") as "bestseller_bestseller-ıd" ,
   bp.totalcategorycost 
	FROM
	 bestseller_product bp, product p2 , customer c2 
	 where  bp."product_p-ıd" = p2."p-ıd" 
	 group by bp.totalcategorycost , bp."bestseller_bestseller-ıd" 
	 order by bp."bestseller_bestseller-ıd"  desc 
	 limit 3;

---Top 3 product category that females prefer according to total amount of money spent by them with numberofconsecutiveday
	select max(distinct bp.numberofconsecutiveday) as numberofconsecutiveday ,bp.totalcategorycost 
	 FROM
	 bestseller_product bp, product p2 , customer c2 
	 where  bp."product_p-ıd" = p2."p-ıd" 
	 group by bp.totalcategorycost , bp.numberofconsecutiveday
	 order by bp.numberofconsecutiveday  desc 
	 limit 3;
	
---Find sneakers' numbers by using SUM and group by the product name
select p."name" ,
sum(o."numberOfItem") as TotalItem 
from "Order" o , product p ,"Category" c 

---Special Q1--The products which have been best seller product 3 consecutive days at least once
select bp.numberofconsecutiveday, bp."bestseller_bestseller-ıd" , bp."product_p-ıd" 
from bestseller_product bp 
where bp.numberofconsecutiveday > 2;

---Special Q2--Top 3 product category that females prefer according to total amount of money spent by them
select max(distinct bp."bestseller_bestseller-ıd" ) as "bestseller_bestseller-ıd" , bp."product_p-ıd",
   bp.totalcategorycost 
	FROM
	 bestseller_product bp, product p2 , customer c2 
	 where  bp."product_p-ıd" = p2."p-ıd" 
	 group by bp.totalcategorycost , bp."bestseller_bestseller-ıd" , bp."product_p-ıd" 
	 order by bp.totalcategorycost desc 
	 limit 3;

---Top 3 product category that females prefer according to numberofconsecutiveday of money spent by them 
	select max(distinct bp.numberofconsecutiveday) as numberofconsecutiveday ,bp.totalcategorycost 
	 FROM
	 bestseller_product bp, product p2 , customer c2 
	 where  bp."product_p-ıd" = p2."p-ıd" 
	 group by bp.totalcategorycost , bp.numberofconsecutiveday
	 order by bp.numberofconsecutiveday  desc 
	 limit 3;
	
---Find sneakers' numbers by using SUM and group by the product name
select p."name" ,
sum(o."numberOfItem") as TotalItem 
from "Order" o , product p ,"Category" c 
where p."name"  = 'sneakers'
group by p."name" 
order by TotalItem;

---Find sneakers' numbers by using SUM and group by the product name that numberOfItem > 100
SELECT
	cp."customer_c-ıd" ,
	SUM (o2."numberOfItem") AS TotalItem
FROM
	"Order" o2 , product p3 , customer_product cp 
where p3."p-ıd" = cp."product_p-ıd" 	
GROUP BY
	cp."customer_c-ıd"
having SUM (o2."numberOfItem")>100
ORDER BY TotalItem;

---Find sneakers' numbers by using SUM and group by the product price equal to 1000
select p.price ,
sum(o."numberOfItem") as TotalItem 
from "Order" o , product p ,"Category" c 
where p.price  = 1000
group by p.price 
order by TotalItem;

---Select brand names starting with b 
select* from "Brand" b
where b."name" like 'b%';

---Find maximum number of product in bestseller
select max("numberOfProduct") 
from bestseller b2 ; 

---Find the cost of all payments which price is greater than 100 the price of all products.
select * from "Payment" p2 
where 100 < all 
(select price 
from product p3 
where p2."p-cost" = p3.price );

---Find minimum number of item in order.
select min("numberOfItem") 
from "Order" o2 ; 

---String operations. Matches any string containing “k” as a substring. (bershka, ipekyol, koton, nike)
select b2."name" 
from "Brand" b2 
where name like '%k%'; 

---Find the total number of customers with product ID = 222.
select count (distinct "customer_c-ıd")
from customer_product cp
where "product_p-ıd" =222;

---Find brand that include ID = 555 and ID = 888 products.
(select pb."Brand_b-ıd" 
from "product_Brand" pb 
where pb."product_p-ıd" = 555)
intersect
(select pb."Brand_b-ıd" 
from "product_Brand" pb 
where pb."product_p-ıd" = 888);

---Find the mail that is null in the customer. Select phone number for communication.
select "c-ıd" ,"phoneNumber" 
from customer c2 
where email is null;

---Find names, address, phone number of customers with customer ıd is equal to that of some payment in the payment type is cash. 
select c3."name", c3.address,c3."phoneNumber" 
from  customer c3 
where c3."c-ıd"=  some (select p2."payment-ıd" 
                        from "Payment" p2 
                        where p2."p-type"='cash');
                       
---For combining result sets from more than one SELECT statement into one result set. (Any duplicate rows from the results of the SELECT statements are eliminated.)
select distinct b."name". 
FROM "Brand" b 
UNION
SELECT c."name " 
FROM "Category" c ;

---Find product name,ıd,size in white color and in shoes.                      
select c2."c-ıd" ,c2."name ", c2."size" 
from "Category" c2 
where c2.color ='white' and c2."name " in (select c3."name "   
from "Category" c3 where c3."type"='shoes');                    
       
---Find item color which size is 40 but not in the clothes.                       
select c2.color 
from "Category" c2 
where c2."size" ='40' and c2.color not in (select c3.color   from "Category" c3 where c3."type"='clothes');

---Find names of all products with price between 100 and 500.
select p2."name" 
from product p2 
where p2.price between 100 and 500;

---Find the average cost of payment.
select avg("p-cost") from "Payment" p2;

--- Find customers who have taken products where product ıd is 111. 
select c2."name" 
from customer c2 
where exists (select cp."customer_c-ıd" 
                      from customer_product cp
                      where c2."c-ıd" = cp."customer_c-ıd" and cp."product_p-ıd"=111 );
                     
   
---Find all brands that are not in category ID = 34.     
select b2."name" 
from "Brand" b2 
where not exists (select b."Category_c-ıd" 
                      from "Brand_Category" b
                      where b2."b-ıd" = b."Brand_b-ıd" and b."Category_c-ıd" = 34 );    

---Find customers with product ID = 666.        
select c2."c-ıd" ,c2."name" 
from customer c2 
where c2."c-ıd"  = all (select cp."customer_c-ıd" 
                      from customer_product cp
                      where cp."product_p-ıd"=666);

---Find the products which are not ID = 999 by using EXCEPT.
SELECT pb."product_p-ıd"  
FROM "product_Brand" pb 
EXCEPT 
SELECT p."p-ıd" 
FROM product p 
where p."p-ıd" = 999;

--create a view for bestseller as BESTSELL.                     
  CREATE VIEW BESTSEL AS
  SELECT b2."numberOfProduct" , b2."bestseller-ıd" 
  FROM bestseller b2 
  WHERE b2."bestseller-ıd" > 3;

--JOINS
---3 join: product & customer & customer_product
select product."name" ,
	   customer."name"  
	   from product 
	   join customer_product cp
	   on product."p-ıd"  = cp."product_p-ıd" 
	   join customer  
	   on customer."c-ıd" = cp."customer_c-ıd" ; 

--- outerjoin: customer & order
SELECT * FROM customer 
FULL OUTER JOIN "Order" ON customer."c-ıd" = "Order"."order-ıd" ;

---outerjoin: payment & order
select * FROM "Payment" p2 
FULL OUTER JOIN "Order" ON p2."payment-ıd" = "Order"."order-ıd" ;	  

---natural join: order-product
SELECT * 
FROM "Order" o2 
NATURAL JOIN product p ;
