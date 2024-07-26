SELECT 
    p.id AS "ID",
    p.first_name AS "First name",
    p.last_name AS "Last name",
    SUM(m.budget) AS "Total movies budget"
FROM 
    Person p
JOIN 
    Character c ON p.id = c.actor_id
JOIN 
    Movie m ON c.movie_id = m.id
GROUP BY 
    p.id, p.first_name, p.last_name;
