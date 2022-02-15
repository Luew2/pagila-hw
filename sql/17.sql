/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

select country.country, sum(payment.amount) as profit from country join city on country.country_id = city.country_id join address on city.city_id = address.city_id join customer on address.address_id = customer.address_id join rental on customer.customer_id = rental.customer_id join payment on payment.rental_id = rental.rental_id group by country.country order by country.country;
