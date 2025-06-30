--solution to part B question 1
SELECT actor.name FROM actor JOIN casting ON actor.id = casting.actor_id JOIN movie ON movie.id = casting.movie_id WHERE actor.name LIKE 'O%' AND movie.score > 8.1 AND movie.score < 8.25;
--solution to part B question 2
SELECT movie.director FROM movie WHERE movie.votes > 0.75 * (SELECT MAX(movie.votes) FROM movie);