-- для таблицы tracks_of_digest
INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (1, 1);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (2, 1);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (2, 4);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (3, 1);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (4, 3);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (5, 3);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (6, 4);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (5, 2);

INSERT INTO public.tracks_of_digest(track_id, digest_id)
VALUES (8, 4);


-- для таблицы track
INSERT INTO public.track(name, length, album_id)
VALUES ( 'about xxx', 180, 4);

INSERT INTO public.track(name, length, album_id)
VALUES ( 'definitely love', 250, 3);

INSERT INTO public.track(name, length, album_id)
VALUES ( 'happy day', 260, 2);

INSERT INTO public.track(name, length, album_id)
VALUES ( 'surprise for you', 220, 1);

INSERT INTO public.track(name, length, album_id)
VALUES ( 'special song', 250, 1);

INSERT INTO public.track(name, length, album_id)
VALUES ( 'honeymoon', 240, 3);

INSERT INTO public.track(name, length, album_id)
VALUES ('my girlfriend', 195, 4);

INSERT INTO public.track(name, length, album_id)
VALUES ('my wife', 170, 3);

INSERT INTO public.track(name, length, album_id)
VALUES ('shine shine', 200, 2);

INSERT INTO public.track(name, length, album_id)
VALUES ('pain', 225, 4);


-- для таблицы genres_of_artist
INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (1, 2);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (3, 1);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (4, 1);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (4, 3);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (5, 4);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (6, 3);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (7, 1);

INSERT INTO public.genres_of_artist(artist_id, genre_id)
VALUES (8, 1);


-- для таблицы genre
INSERT INTO public.genre(name)
VALUES ('pop');

INSERT INTO public.genre(name)
VALUES ('rock');

INSERT INTO public.genre(name)
VALUES ('instrumental');

INSERT INTO public.genre(name)
VALUES ('electronic');


-- для таблицы digest
INSERT INTO public.digest(name, release_year)
VALUES ('Listen, baby', 2018);	

INSERT INTO public.digest(name, release_year)
VALUES ('Lost people', 2019);

INSERT INTO public.digest(name, release_year)
VALUES ('Friends', 2007);

INSERT INTO public.digest(name, release_year)
VALUES ('Enemy and lover', 2020);


-- для таблицы artists_of_album
INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (3, 1);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (4, 1);	

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (1, 4);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (5, 3);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (6, 2);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (7, 3);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (8, 3);

INSERT INTO public.artists_of_album(artist_id, album_id)
VALUES (7, 2);

-- для таблицы artist
INSERT INTO public.artist (name) 
VALUES ('Miley Loles');

INSERT INTO public.artist (name) 
VALUES ('Valli Kim');

INSERT INTO public.artist (name) 
VALUES ('Sandra Tsar');

INSERT INTO public.artist (name) 
VALUES ('Alex Tsar');

INSERT INTO public.artist (name) 
VALUES ('Mike Pol');

INSERT INTO public.artist(name)
VALUES ('Lofi');

INSERT INTO public.artist(name)
VALUES ('Carl');

-- для таблицы album
INSERT INTO public.album (title, release_year) 
VALUES ('happy birthday, dear friend', '2001');

INSERT INTO public.album (title, release_year) 
VALUES ('i am happy', '2019');

INSERT INTO public.album (title, release_year) 
VALUES ('for my honey', '2020');

INSERT INTO public.album (title, release_year) 
VALUES ('without Ann', '2018');