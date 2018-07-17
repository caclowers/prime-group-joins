-- Question  1.	Get all customers and their addresses.

SELECT * FROM "customers"
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";



-- Question	2.	Get all orders and their line items.

SELECT * FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id";



--Question 3.	Which warehouses have cheetos?

SELECT "warehouse", "warehouse_product"."on_hand" AS "Cheetos on Hand" FROM "products"
JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
WHERE "products"."description" = 'cheetos';



-- Question 4.	Which warehouses have diet pepsi?

SELECT "warehouse", "warehouse_product"."on_hand" AS "Diet Pepsi on Hand" FROM "products"
JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
WHERE "products"."description" = 'diet pepsi';


-- Question 5. Get the number of orders for each customer.

SELECT "customers"."first_name", "customers"."last_name", count("orders") AS "# of Orders" FROM "orders"
JOIN  "addresses" ON "orders"."address_id" = "addresses"."id"
JOIN "customers" ON "addresses"."customer_id" = "customers"."id"
GROUP BY "customers"."first_name", "customers"."last_name"
;


-- Question 6.	How many customers do we have?
SELECT COUNT(*) AS "# of Customers" FROM "customers";
