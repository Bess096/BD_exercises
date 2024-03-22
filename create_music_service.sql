
-- Создание таблицы artist
   CREATE TABLE IF NOT EXISTS artist (
      id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      name VARCHAR(50) NOT NULL
   );
   -- Создание таблицы album
   CREATE TABLE IF NOT EXISTS album (
      id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
      title VARCHAR(100) NOT NULL,
      release_year INT NOT NULL
);
-- Создание таблицы artists_of_album
   CREATE TABLE IF NOT EXISTS artists_of_album (
	  artist_id INT NOT NULL,
    CONSTRAINT fk_artist_id_album FOREIGN KEY (artist_id) REFERENCES artist (id),
	  album_id INT NOT NULL,
    CONSTRAINT fk_album_id FOREIGN KEY (album_id) REFERENCES album (id),
	  PRIMARY KEY (artist_id, album_id)
);
-- Создание таблицы track
   CREATE TABLE IF NOT EXISTS track (
      id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      name VARCHAR(150) NOT NULL,
      length timestamp without time zone NOT NULL,
	  album_id INT NOT NULL,
     CONSTRAINT fk_album_id FOREIGN KEY (album_id) REFERENCES album (id)
);
-- Создание таблицы genre
   CREATE TABLE IF NOT EXISTS genre (
      id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      name VARCHAR(150) NOT NULL
);
-- Создание таблицы genres_of_artist
   CREATE TABLE IF NOT EXISTS genres_of_artist (
	  artist_id INT NOT NULL,
    CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES artist (id),
	   genre_id INT NOT NULL,
    CONSTRAINT fk_genre_id FOREIGN KEY (genre_id) REFERENCES genre (id),
	   PRIMARY KEY (artist_id, genre_id)
);
-- Создание таблицы digest
   CREATE TABLE IF NOT EXISTS digest (
      id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      name VARCHAR(150) NOT NULL,
	  release_year INT NOT NULL
);
-- Создание таблицы tracks_of_digest
   CREATE TABLE IF NOT EXISTS tracks_of_digest (
	  track_id INT NOT NULL,
    CONSTRAINT fk_track_id FOREIGN KEY (track_id) REFERENCES track (id),
	  digest_id INT NOT NULL,
    CONSTRAINT fk_digest_id FOREIGN KEY (digest_id) REFERENCES digest (id),
	  PRIMARY KEY (track_id, digest_id)
);

