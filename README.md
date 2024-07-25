# Movie DB SQL Setup
BSA Summer 2024 Homework 8 (DB SQL) Binary Studio Academy HW 7 - JS: DB &amp; SQL


```mermaid
erDiagram
    FILES {
        INT id PK
        VARCHAR file_name
        VARCHAR mime_type
        VARCHAR key
        TEXT url
        DATETIME created_at
        DATETIME updated_at
    }

    COUNTRY {
        INT id PK
        VARCHAR name
    }

    GENRE {
        INT id PK
        VARCHAR name
    }

    PERSON {
        INT id PK
        VARCHAR first_name
        VARCHAR last_name
        TEXT biography
        DATE date_of_birth
        gender_type gender
        INT country_id FK
        INT primary_photo_id FK
        DATETIME created_at
        DATETIME updated_at
    }

    MOVIE {
        INT id PK
        VARCHAR title
        TEXT description
        DECIMAL budget
        DATE release_date
        INT duration
        INT director_id FK
        INT country_id FK
        INT poster_id FK
        DATETIME created_at
        DATETIME updated_at
    }

    CHARACTER {
        INT id PK
        VARCHAR name
        TEXT description
        role_type role
        INT movie_id FK
        INT actor_id FK
        DATETIME created_at
        DATETIME updated_at
    }

    MOVIE_GENRE {
        INT movie_id PK
        INT genre_id PK
    }

    USERS {
        INT id PK
        VARCHAR username UNIQUE
        VARCHAR first_name
        VARCHAR last_name
        VARCHAR email UNIQUE
        VARCHAR password
        INT avatar_id FK
        DATETIME created_at
        DATETIME updated_at
    }

    FAVORITE_MOVIES {
        INT user_id PK
        INT movie_id PK
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
