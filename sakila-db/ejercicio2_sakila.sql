Ejercicio 2
Mostrar el total de rentas que han tenido las peliculas de inventario
Mostrar Id de pelicula, su titulo y el idioma
;

select 
distinct f.film_id as ID,
f.title as Titulo,
l.name as Idioma,
count(r.rental_id) as Rentas
from sakila.inventory i
left join sakila.film f on (i.film_id = f.film_id)
left join sakila.rental r on(i.inventory_id = r.inventory_id)
left join sakila.language l on (f.language_id = l.language_id)
group by 1,2,3

#con group by los agrupamos en 3 columnas



