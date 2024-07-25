# Movie DB SQL Setup
BSA Summer 2024 Homework 8 (DB SQL) Binary Studio Academy HW 7 - JS: DB &amp; SQL

```mermaid
erDiagram
    FILES {
        INT id PK
        VARCHAR(100) file_name
        VARCHAR(50) mime_type
        VARCHAR(255) key
        TEXT url
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    COUNTRY {
        INT id PK
        VARCHAR(50) name
    }

    GENRE {
        INT id PK
        VARCHAR(50) name
    }

    PERSON {
        INT id PK
        VARCHAR(50) first_name
        VARCHAR(50) last_name
        TEXT biography
        DATE date_of_birth
        gender_type gender
        INT country_id FK
        INT primary_photo_id FK
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    MOVIE {
        INT id PK
        VARCHAR(100) title
        TEXT description
        DECIMAL(20, 2) budget
        DATE release_date
        INT duration
        INT director_id FK
        INT country_id FK
        INT poster_id FK
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    CHARACTER {
        INT id PK
        VARCHAR(50) name
        TEXT description
        role_type role
        INT movie_id FK
        INT actor_id FK
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    MOVIE_GENRE {
        INT movie_id FK
        INT genre_id FK
        PK(movie_id, genre_id)
    }

    USERS {
        INT id PK
        VARCHAR(50) username UNIQUE
        VARCHAR(50) first_name
        VARCHAR(50) last_name
        VARCHAR(50) email UNIQUE
        VARCHAR(20) password
        INT avatar_id FK
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    FAVORITE_MOVIES {
        INT user_id FK
        INT movie_id FK
        PK(user_id, movie_id)
    }

    COUNTRY ||--o{ PERSON : "has many"
    COUNTRY ||--o{ MOVIE : "has many"
    FILES ||--o{ PERSON : "has many"
    FILES ||--o{ MOVIE : "has many"
    FILES ||--o{ USERS : "has many"
    PERSON ||--o{ MOVIE : "directed"
    PERSON ||--o{ CHARACTER : "acts in"
    MOVIE ||--o{ CHARACTER : "has many"
    MOVIE ||--o{ MOVIE_GENRE : "has many"
    MOVIE_GENRE }o--|| GENRE : "belongs to"
    USERS ||--o{ FAVORITE_MOVIES : "can favorite"
    MOVIE ||--o{ FAVORITE_MOVIES : "can be favorited"
