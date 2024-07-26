SELECT 
    m.id AS "ID",
    m.title AS "Title",
    m.release_date AS "Release date",
    m.duration AS "Duration",
    m.description AS "Description",
    json_build_object(
        'id', f.id,
        'file_name', f.file_name,
        'mime_type', f.mime_type,
        'key', f.key,
        'url', f.url
    ) AS "Poster",
    json_build_object(
        'ID', p.id,
        'First name', p.first_name,
        'Last name', p.last_name
    ) AS "Director"
FROM 
    Movie m
JOIN 
    Person p ON m.director_id = p.id
JOIN 
    Files f ON m.poster_id = f.id
JOIN 
    MovieGenre mg ON m.id = mg.movie_id
JOIN 
    Genre g ON mg.genre_id = g.id
WHERE 
    m.country_id = 1
    AND m.release_date >= '2022-01-01'
    AND m.duration > 135
    AND g.name IN ('Action', 'Drama')
GROUP BY 
    m.id, m.title, m.release_date, m.duration, m.description, f.id, p.id, p.first_name, p.last_name;
