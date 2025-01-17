/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

select customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) from customer join payment on customer.customer_id = payment.customer_id group by customer.customer_id, customer.first_name, customer.last_name order by customer.last_name;
