/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */



select s.first_name as "first_name", s.last_name as "last_name", sum(p.amount) as "sum" from payment as p join staff as s on p.staff_id = s.staff_id where payment_date >= '2020-01-01%' and payment_date < '2020-02-01%' group by "last_name", "first_name" order by "first_name";
