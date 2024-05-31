-- AGGREGATE
/* 1. Write a query that determines how many times each vendor has rented a booth 
at the farmer’s market by counting the vendor booth assignments per vendor_id. */

SELECT vendor_id, count (booth_number)
FROM vendor_booth_assignments
GROUP by vendor_id

/* 2. The Farmer’s Market Customer Appreciation Committee wants to give a bumper 
sticker to everyone who has ever spent more than $2000 at the market. Write a query that generates a list 
of customers for them to give stickers to, sorted by last name, then first name. 

HINT: This query requires you to join two tables, use an aggregate function, and use the HAVING keyword. */

SELECT customer_first_name, customer_last_name, sum(quantity*cost_to_customer_per_qty) as total_spending
FROM customer_purchases cp
INNER JOIN customer c
	on c.customer_id = cp.customer_id
GROUP by customer_first_name, customer_last_name
HAVING total_Spending > 2000
ORDER by customer_last_name ASC, customer_last_name ASC


--Temp Table
/* 1. Insert the original vendor table into a temp.new_vendor and then add a 10th vendor: 
Thomass Superfood Store, a Fresh Focused store, owned by Thomas Rosenthal

HINT: This is two total queries -- first create the table from the original, then insert the new 10th vendor. 
When inserting the new vendor, you need to appropriately align the columns to be inserted 
(there are five columns to be inserted, I've given you the details, but not the syntax) 

-> To insert the new row use VALUES, specifying the value you want for each column:
VALUES(col1,col2,col3,col4,col5) 
*/

CREATE TEMP TABLE new_vendor as
SELECT *
FROM vendor;

INSERT INTO new_vendor (vendor_id,vendor_name, vendor_type, vendor_owner_first_name, vendor_owner_last_name)
VALUES (10, 'Thomass Superfood Store', 'Fresh Focused', 'Thomas', 'Rosenthal')

-- Date
/*1. Get the customer_id, month, and year (in separate columns) of every purchase in the customer_purchases table.

HINT: you might need to search for strfrtime modifers sqlite on the web to know what the modifers for month 
and year are! */

SELECT customer_id, strftime('%m', market_date), strftime('%Y', market_date)
FROM customer_purchases 
ORDER by '%Y' ASC, '%m' ASC


/* 2. Using the previous query as a base, determine how much money each customer spent in April 2019. 
Remember that money spent is quantity*cost_to_customer_per_qty. 

HINTS: you will need to AGGREGATE, GROUP BY, and filter...
but remember, STRFTIME returns a STRING for your WHERE statement!! */

SELECT customer_id, strftime('%m', market_date), strftime('%Y', market_date)
, sum(quantity*cost_to_customer_per_qty) as money_spent
	
FROM customer_purchases 
	WHERE '%m' = '04' AND '%Y' = '2019'
GROUP by customer_id
