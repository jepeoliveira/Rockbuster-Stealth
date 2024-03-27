SELECT B.customer_id, 
B.first_name, 
B.last_name, 
D.city, 
E.country, 
SUM(A.amount) AS total_amount_paid
FROM Payment A
INNER JOIN customer B on A.customer_id = B.customer_id
INNER JOIN address C on B.address_id = C.address_id
INNER JOIN city D on C.city_id = D.city_id
INNER JOIN country E on D.country_id = E.country_id
GROUP BY B.customer_id, B.first_name, B.last_name, D.city, E.country
ORDER BY total_amount_paid DESC
LIMIT 15
