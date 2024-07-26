SELECT 
    m.id AS "ID",
    m.title AS "Title",
    COUNT(c.actor_id) AS "Actors count"
FROM 
    Movie m
LEFT JOIN 
    Character c ON m.id = c.movie_id
WHERE 
    m.release_date >= CURRENT_DATE - INTERVAL '5 years'
GROUP BY 
    m.id, m.title;