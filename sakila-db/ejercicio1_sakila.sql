
select * from sakila.rental;
select * from sakila.inventory;
select * from sakila.film;


select
r.rental_id,
f.title as titulo,
r.rental_date as 'Fecha renta'

from sakila.rental r
left join sakila.inventory i on (r.inventory_id = i.inventory_id)
left join sakila.film f on (i.film_id = f.film_id)

