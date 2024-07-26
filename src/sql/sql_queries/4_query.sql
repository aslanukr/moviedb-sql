SELECT 
    p.id AS "Director ID",
    CONCAT(p.first_name, ' ', p.last_name) AS "Director name",
    ROUND(AVG(m.budget), 2) AS "Average budget"
FROM 
    Person p
JOIN 
    Movie m ON p.id = m.director_id
GROUP BY 
    p.id, p.first_name, p.last_name;
