SELECT D.title, 
F.name AS genre, 
COUNT(D.rental_rate) AS rental_cnt, 
SUM(A.amount) AS total_revenue	
FROM payment A
INNER JOIN rental B ON A.rental_id = B.rental_id
INNER JOIN inventory C ON B.inventory_id = C.inventory_id
INNER JOIN film D ON C.film_id = D.film_id
INNER JOIN film_category E ON D.film_id = E.film_id
INNER JOIN category F ON E.category_id = F.category_id
GROUP BY D.title, F.name, D.rental_rate
ORDER BY total_revenue DESC
LIMIT 15


