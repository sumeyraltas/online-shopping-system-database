BEGIN;
---tables----

CREATE TABLE public.customer
(
    "c-�d" integer NOT NULL,
    name character(50) NOT NULL,
    address character(100) NOT NULL,
    email character NOT NULL,
    "phoneNumber" integer NOT NULL,
    PRIMARY KEY ("c-�d")
);

CREATE TABLE public.product
(
    price integer NOT NULL,
    "p-�d" integer NOT NULL,
    name character NOT NULL,
    PRIMARY KEY ("p-�d")
);

CREATE TABLE public."Brand"
(
    name character NOT NULL,
    "b-�d" integer NOT NULL,
    PRIMARY KEY ("b-�d")
);

CREATE TABLE public."Category"
(
    "c-�d" integer,
    type "char" NOT NULL,
    size integer NOT NULL,
    "name " character NOT NULL,
    color character,
    PRIMARY KEY ("c-�d")
);

CREATE TABLE public."Order"
(
    "order-�d" integer NOT NULL,
    "numberOfItem" integer NOT NULL,
    "payment-�d" integer NOT NULL,
    PRIMARY KEY ("order-�d")
);

CREATE TABLE public."Payment"
(
    amount integer NOT NULL,
    "p-type" character NOT NULL,
    "payment-�d" integer NOT NULL,
    "p-cost" integer NOT NULL,
    PRIMARY KEY ("payment-�d")
);

CREATE TABLE public.bestseller
(
    "bestseller-�d" integer,
    "numberOfProduct" integer NOT NULL,
    PRIMARY KEY ("bestseller-�d")
);

CREATE TABLE public.customer_product
(
    "customer_c-�d" integer NOT NULL,
    "product_p-�d" integer NOT NULL
);

CREATE TABLE public."product_Brand"
(
    "product_p-�d" integer NOT NULL,
    "Brand_b-�d" integer NOT NULL
);

CREATE TABLE public."Brand_Category"
(
    "Brand_b-�d" integer NOT NULL,
    "Category_c-�d" integer
);

CREATE TABLE public.bestseller_product
(
    "bestseller_bestseller-�d" integer,
    "product_p-�d" integer NOT NULL
);
---alter tables----

ALTER TABLE public.customer_product
    ADD FOREIGN KEY ("customer_c-�d")
    REFERENCES public.customer ("c-�d")
    NOT VALID;


ALTER TABLE public.customer_product
    ADD FOREIGN KEY ("product_p-�d")
    REFERENCES public.product ("p-�d")
    NOT VALID;


ALTER TABLE public."product_Brand"
    ADD FOREIGN KEY ("product_p-�d")
    REFERENCES public.product ("p-�d")
    NOT VALID;


ALTER TABLE public."product_Brand"
    ADD FOREIGN KEY ("Brand_b-�d")
    REFERENCES public."Brand" ("b-�d")
    NOT VALID;


ALTER TABLE public."Brand_Category"
    ADD FOREIGN KEY ("Brand_b-�d")
    REFERENCES public."Brand" ("b-�d")
    NOT VALID;


ALTER TABLE public."Brand_Category"
    ADD FOREIGN KEY ("Category_c-�d")
    REFERENCES public."Category" ("c-�d")
    NOT VALID;


ALTER TABLE public.customer
    ADD FOREIGN KEY ("c-�d")
    REFERENCES public."Payment" ("payment-�d")
    NOT VALID;


ALTER TABLE public.bestseller_product
    ADD FOREIGN KEY ("bestseller_bestseller-�d")
    REFERENCES public.bestseller ("bestseller-�d")
    NOT VALID;


ALTER TABLE public.bestseller_product
    ADD FOREIGN KEY ("product_p-�d")
    REFERENCES public.product ("p-�d")
    NOT VALID;

END;
--insertions---------
INSERT INTO "Brand"
("name", "b-�d")
VALUES('zara', 123);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('p&b', 124);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('beymen', 125);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('bershka', 126);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('addax', 127);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('ipekyol', 129);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('koton', 130);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('boyner', 128);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('nike', 131);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('puma', 132);
INSERT INTO "Brand"
("name", "b-�d")
VALUES('oysho', 133);
------------------------------------
INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(125, 36);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(125, 42);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(126, 34);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(126, 40);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(126, 43);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(127, 39);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(127, 37);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(128, 38);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(128, 41);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(129, 34);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(129, 40);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(130, 35);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(130, 32);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(130, 42);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(131, 36);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(131, 37);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(132, 36);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(132, 41);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(133, 41);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(133, 37);

INSERT INTO public."Brand_Category"
("Brand_b-�d", "Category_c-�d")
VALUES(124, 34);
------------------------------------
INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(39, 'accessory','0' , 'earring', 'gold');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(42, 'accessory', '0', 'ring', 'silver');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(43, 'accessory', '0', 'necklace', 'rose');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(32, 'clothes', 36, 'skirt', 'red');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(33, 'clothes', 38, 'jean', 'blue');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(34, 'clothes', 40, 'dress', 'yellow');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(35, 'clothes', 42, 'skirt', 'green');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(36, 'shoes', 37, 'sneakers', 'white');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(37, 'clothes', 34, 't-shirt', 'white');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(38, 'shoes', 40, 'babette', 'black');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(40, 'clothes', 37, 'trousers', 'purple');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(41, 'clothes', 37, 'sweatshirt', 'pink');

INSERT INTO public."Category"
("c-�d", "type", "size", "name ", color)
VALUES(44, 'clothes', '', 'sweatshirt', 'purple');

UPDATE public."Category"
SET "size"='44'
WHERE "c-�d"=44;

DELETE FROM public."Category"
WHERE "c-�d"=44;

--------------------------------
INSERT INTO "Order"
("order-�d", "numberOfItem", "payment-�d")
VALUES(897, 2, 1);
INSERT INTO "Order"
("order-�d", "numberOfItem", "payment-�d")
VALUES(898, 3,  2);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(899, 1, 3);
INSERT INTO "Order"
("order-�d", "numberOfItem", "payment-�d")
VALUES(900, 5,  4);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(901, 4,  5);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(902, 3, 6);
INSERT INTO "Order"
("order-�d", "numberOfItem", "payment-�d")
VALUES(903, 6, 7);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(904, 1,  8);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(905, 10, 9);
INSERT INTO "Order"
("order-�d", "numberOfItem",  "payment-�d")
VALUES(906, 8, 10);
-----------------------------------
INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('2', 'card', 1, '80');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('3', 'card', 2, '110');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('1', 'cash', 3, '50');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('5', 'cash', 4, '460');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('4', 'card', 5, '650');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('3', 'cash', 6, '30');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('6', 'card', 7, '300');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('1', 'cash', 8, '250');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('10', 'card', 9, '350');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('8', 'card', 10, '320');

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('8', 'card', 11, '32000');
-------------------------------------
INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(50, 2);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(51, 3);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(52, 1);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(53, 5);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(54, 4);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(55, 3);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(56, 6);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(57, 1);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(58, 10);

INSERT INTO public.bestseller
("bestseller-�d", "numberOfProduct")
VALUES(59, 8);
-----------------------------------
INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(1, 'serra', 'antalya', 'serrasabah@gmail.com', '5532145010');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(2, 's�meyra', 'k�tayha', 'sumeyraltas@gmail.com', '5552368956');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(3, 'r�meysa', 'ankara', 'rumeysaoz@gmail.com', '5052147856');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(4, 'mehmet', 'izmir', 'an�ly�lmaz@gmail.com', '5321472312');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(5, 'furkan', 'istanbul', 'furkanasc�@gmail.com', '5248581144');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(6, 'ali', 'antalya', 'aliongun@gmail.com', '5552654815');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(7, 'turgut', 'eski�ehir', 'turgutmekik@gmail.com', '5261478592');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(8, 'ayse', 'van', 'aysegoynuk@gmail.com', '5051472356');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(9, 'mehmet', 'rize', 'mehmetsahin@gmail.com', '5472184520');

INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(10, 'melis', 'antakya', 'melisefe@gmail.com', '5552367899');
---------------------------------------------
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(1, 111);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(1, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(2, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(2, 555);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(2, 777);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(3, 444);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")--50
VALUES(4, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")--50
VALUES(4, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")--60
VALUES(4, 333);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")--60
VALUES(4, 333);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")--111
VALUES(4, 111);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(5, 888);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(5, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(5, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(6, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(6, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(6, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 333);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 777);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 333);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(5, 888);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(2, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(7, 888);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(8, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 222);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 888);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(9, 1010);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 999);
INSERT INTO public.customer_product
("customer_c-�d", "product_p-�d")
VALUES(10, 555);
----------------------------------------------------

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(50, 111, 2, 160);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(51, 222, 8, 400);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(52, 333, 4, 180);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(53, 444, 1, 1000);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(54, 555, 2, 320);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(55, 666, 0, 70);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(56, 777, 2, 200);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(57, 888, 4, 160);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(58, 1010, 12, 360);

INSERT INTO bestseller_product
("bestseller_bestseller-�d", "product_p-�d", numberofconsecutiveday, totalcategorycost)
VALUES(59, 999, 8, 1200);
-----------------------------------
INSERT INTO public.product
(price, "p-�d", "name")
VALUES(80, 111, 'dress');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(80, 545, 'dress');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(50, 222, 'skirt');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(60, 333, 't-shirt');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(1000, 444, 'sneakers');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(160, 555, 'trousers');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(70, 666, 'sweatshirt');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(100, 777, 'ring');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(40, 888, 'necklace');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(150, 999, 'babette');

INSERT INTO public.product
(price, "p-�d", "name")
VALUES(30, 1010, 'earring');
--------------Product_Brand
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(111, 126);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(111, 129);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(111, 124);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(222, 130);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(333, 127);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(333, 133);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(333, 131);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(444, 125);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(444, 131);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(444, 132);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(555, 126);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(555, 129);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(666, 128);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(666, 132);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(666, 133);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(777, 125);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(777, 130);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(888, 126);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(999, 128);
INSERT INTO public."product_Brand"
("product_p-�d", "Brand_b-�d")
VALUES(1010, 127);
-------------------------------------

-------------------------------------

INSERT INTO public."Payment"
(amount, "p-type", "payment-�d", "p-cost")
VALUES('10', 'card', 15, '350');
INSERT INTO public.customer
("c-�d", "name", address, email, "phoneNumber")
VALUES(15, 'turgut', 'eski�ehir', 'turgutmekik@gmail.com', '5261478592');

-------------------
---updates and deletions 
UPDATE public.product
SET "p-�d" =1;
WHERE "p-�d"=111;

UPDATE public.customer
SET email=null 
WHERE "c-�d"=4;

UPDATE public.customer
SET email=null 
WHERE "c-�d"=10;

DELETE FROM public."Payment"
WHERE "payment-�d"=11;

DELETE FROM public."Category"
WHERE "c-�d"=0;

delete from product where "p-�d" = 545;

delete from product where "p-�d" = 111;

---view--
--create a view for bestseller as BESTSELL                     
  CREATE VIEW BESTSELL AS
  SELECT b2."numberOfProduct" , b2."bestseller-�d" 
  FROM bestseller b2 
  WHERE b2."bestseller-�d" > 3;
------------

