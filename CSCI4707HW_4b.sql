--Osama Jerome Michael Ambrose
SELECT movie.title, actor.name 
FROM MOVIE
JOIN casting ON movie.id = casting.movie_id 
JOIN actor ON actor.id = casting.actor_id
WHERE actor.name IN (
SELECT movie.title FROM MOVIE, ACTOR WHERE actor.name ='Lawrence, Jennifer'
INTERSECT 
SELECT movie.title FROM MOVIE, ACTOR WHERE actor.name ='Cooper, Bradley' );


SELECT movie.title, actor.name, movie.director, movie.yr
FROM  MOVIE 
JOIN casting ON movie.id = casting.movie_id 
JOIN actor on actor.id = casting.actor_id
WHERE movie.yr > 2005 AND actor.name=movie.director;


SELECT movie.title, actor.name 
FROM  MOVIE
JOIN casting ON movie.id = casting.movie_id 
JOIN actor on actor.id = casting.actor_id
WHERE movie.title LIKE 'Rocky%';