--Название и продолжительность самого длительного трека.
SELECT name, length 
  FROM track
 WHERE length IN 
	(
		SELECT MAX(length) 
		  FROM track
	);
	
--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name
  FROM track
 WHERE length >= 210;
 
--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name
  FROM digest
 WHERE release_year BETWEEN 2018 AND 2020;
 
--Исполнители, чьё имя состоит из одного слова.
SELECT *
  FROM artist
 WHERE name NOT LIKE '% %';
 
--Название треков, которые содержат слово «мой» или «my».
SELECT name
  FROM track
 WHERE name LIKE 'my %' 
 	OR name LIKE '% my %';
	
--Количество исполнителей в каждом жанре.
SELECT genre.name, COUNT(genres_of_artist.artist_id)
  FROM genres_of_artist
       LEFT JOIN genre
		      ON genre.id = genres_of_artist.genre_id
       LEFT JOIN artist
		      ON artist.id = genres_of_artist.artist_id
 GROUP BY genre.name;
   
--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track.id)
  FROM track
       LEFT JOIN album
		      ON album.id = track.album_id 
		     AND album.release_year BETWEEN 2019 AND 2020;
		
--Средняя продолжительность треков по каждому альбому.
SELECT album.title, ROUND(AVG(track.length), 2)
  FROM track
  	   JOIN album
  	     ON album.id = track.album_id
 GROUP BY album.title;
  
--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT id, name
  FROM artist
 WHERE name NOT IN (
    SELECT artist.name
	  FROM artist
    	   JOIN artists_of_album
	 		 ON artist.id = artists_of_album.artist_id
    	   JOIN album 
	 		 ON artists_of_album.album_id = album.id
     WHERE album.release_year = 2020
);
 
--Названия сборников, в которых присутствует конкретный исполнитель (Lofi).
SELECT DISTINCT digest.name
  FROM digest
  	   LEFT JOIN tracks_of_digest
  		      ON tracks_of_digest.digest_id = digest.id
       LEFT JOIN track
  	     	  ON track.id = tracks_of_digest.track_id
  	   LEFT JOIN album
  	 	      ON album.id = track.album_id
       LEFT JOIN artists_of_album
  		 	  ON album.id = artists_of_album.album_id
  	   LEFT JOIN artist
  	          ON artist.id = artists_of_album.artist_id
		     AND artist.name = 'Lofi';
		 
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT album.title
  FROM album
  	   JOIN artists_of_album
	   		  ON artists_of_album.album_id = album.id
	   JOIN artist
	   		  ON artists_of_album.artist_id = artist.id
	   JOIN genres_of_artist
	   		  ON artist.id = genres_of_artist.artist_id
 GROUP BY album.id, artist.id 
 HAVING COUNT(DISTINCT genres_of_artist.genre_id) > 1;
			 
--Наименования треков, которые не входят в сборники.
SELECT track.name 
  FROM track
 WHERE track.id NOT IN
 (
	 SELECT track_id
	   FROM tracks_of_digest
 );
 
--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, 
-- — теоретически таких треков может быть несколько.
SELECT DISTINCT artist.name
  FROM artist
  	   JOIN artists_of_album
	   	 ON artists_of_album.artist_id = artist.id
	   JOIN album
	     ON artists_of_album.album_id = album.id
	   JOIN track
	     ON track.album_id = album.id
		AND track.length IN 
		(
			SELECT MIN(length)
			  FROM track
		);
		
--Названия альбомов, содержащих наименьшее количество треков.
SELECT album.title 
  FROM album
       JOIN track 
	     ON album.id = track.album_id
 GROUP BY album.id
HAVING COUNT(track.id) = 
	(
    	SELECT COUNT(*)
    	  FROM track
    	 GROUP BY album_id
    	 ORDER BY COUNT(*) ASC
    	 LIMIT 1
	);