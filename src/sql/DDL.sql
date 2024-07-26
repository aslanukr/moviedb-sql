CREATE TYPE role_type AS ENUM ('leading', 'supporting', 'background');
CREATE TYPE gender_type AS ENUM ('male', 'female');

CREATE TABLE Files (
  id SERIAL PRIMARY KEY,
  file_name VARCHAR(100) NOT NULL,
  mime_type VARCHAR(50) NOT NULL,
  key VARCHAR(255) NOT NULL,
  url TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Country (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);


CREATE TABLE Genre (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);


CREATE TABLE Person (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  biography TEXT,
  date_of_birth DATE NOT NULL,
  gender gender_type NOT NULL,
  country_id INT NOT NULL,
  primary_photo_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_country_person FOREIGN KEY (country_id) 
    REFERENCES Country(id),
  CONSTRAINT fk_primary_photo FOREIGN KEY (primary_photo_id) 
    REFERENCES Files(id) 
    ON DELETE SET NULL
);


CREATE TABLE Movie (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  budget DECIMAL(20, 2) NOT NULL,
  release_date DATE NOT NULL,
  duration INT NOT NULL,
  director_id INT NOT NULL,
  country_id INT NOT NULL,
  poster_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_director FOREIGN KEY (director_id) 
    REFERENCES Person(id),
  CONSTRAINT fk_country FOREIGN KEY (country_id) 
    REFERENCES Country(id),
  CONSTRAINT fk_poster FOREIGN KEY (poster_id) 
    REFERENCES Files(id) 
    ON DELETE SET NULL
);


CREATE TABLE Character (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  role role_type NOT NULL,
  movie_id INT NOT NULL,
  actor_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_movie FOREIGN KEY (movie_id) 
    REFERENCES Movie(id),
  CONSTRAINT fk_actor FOREIGN KEY (actor_id) 
    REFERENCES Person(id) 
    ON DELETE SET NULL
);


CREATE TABLE MovieGenre (
  movie_id INT NOT NULL,
  genre_id INT NOT NULL,
  PRIMARY KEY (movie_id, genre_id),
  CONSTRAINT fk_movie_genre FOREIGN KEY (movie_id) 
    REFERENCES Movie(id),
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) 
    REFERENCES Genre(id)
);

CREATE TABLE Users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(20) NOT NULL,
  avatar_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_avatar FOREIGN KEY (avatar_id) 
    REFERENCES Files(id) 
    ON DELETE SET NULL
);

CREATE TABLE FavoriteMovies (
  user_id INT NOT NULL,
  movie_id INT NOT NULL,
  PRIMARY KEY (user_id, movie_id),
  CONSTRAINT fk_user_favorite FOREIGN KEY (user_id) 
    REFERENCES Users(id),
  CONSTRAINT fk_movie_favorite FOREIGN KEY (movie_id) 
    REFERENCES Movie(id)
);
