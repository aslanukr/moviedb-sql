SELECT
  m.id AS "ID",
  m.title AS "Title",
  m.release_date AS "Release date",
  m.duration AS "Duration",
  m.description AS "Description",
  
  jsonb_build_object(
    'file_name', p.file_name,
    'mime_type', p.mime_type,
    'key', p.key,
    'url', p.url
  ) AS "Poster",
  
  jsonb_build_object(
    'ID', d.id,
    'First name', d.first_name,
    'Last name', d.last_name,
    'Photo', jsonb_build_object(
      'file_name', dp.file_name,
      'mime_type', dp.mime_type,
      'key', dp.key,
      'url', dp.url
    )
  ) AS "Director",
  
  (
    SELECT jsonb_agg(
      jsonb_build_object(
        'ID', a.id,
        'First name', a.first_name,
        'Last name', a.last_name,
        'Photo', jsonb_build_object(
          'file_name', ap.file_name,
          'mime_type', ap.mime_type,
          'key', ap.key,
          'url', ap.url
        )
      )
    )
    FROM Character c
    JOIN Person a ON c.actor_id = a.id
    LEFT JOIN Files ap ON a.primary_photo_id = ap.id
    WHERE c.movie_id = m.id
  ) AS "Actors",
  
  (
    SELECT jsonb_agg(
      jsonb_build_object(
        'ID', g.id,
        'Name', g.name
      )
    )
    FROM MovieGenre mg
    JOIN Genre g ON mg.genre_id = g.id
    WHERE mg.movie_id = m.id
  ) AS "Genres"
FROM Movie m
LEFT JOIN Files p ON m.poster_id = p.id
JOIN Person d ON m.director_id = d.id
LEFT JOIN Files dp ON d.primary_photo_id = dp.id
WHERE m.id = 1;
