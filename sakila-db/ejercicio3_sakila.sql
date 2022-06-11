Ejercicio 3
Mostrar cuanto han gastado los clientes en rentas y el total de sus rentas;


select 
p.customer_id,
c.first_name as Nombre,
c.last_name as Apellido,
c.email,
sum(p.amount) as 'Total gastado',
count(p.rental_id) as 'Total rentas'

from sakila.payment p
left join sakila.customer c on (p.customer_id = c.customer_id)
group by 1,2,3
order by 4 desc
