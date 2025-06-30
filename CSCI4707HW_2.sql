--Movie--Casting--Actor
--Access actors through casting
SELECT actor.name FROM actor JOIN casting ON actor.id = casting.actor_id JOIN movie ON movie.id = casting.movie_id WHERE movie.title = 'Frozen';
SELECT movie.title, actor.name FROM  movie JOIN casting ON movie.id = casting.movie_id JOIN actor ON actor.id = casting.actor_id WHERE movie.yr = 2012 AND casting.ord = 1;
SELECT movie.title, movie.score FROM  movie JOIN casting ON movie.id = casting.movie_id JOIN actor on actor.id = casting.actor_id WHERE casting.ord = 1 AND actor.name = 'Freeman, Morgan';
SELECT movie.title FROM movie JOIN casting ON movie.id = casting.movie_id JOIN actor ON actor.id = casting.actor_id WHERE movie.director = actor.name AND casting.ord = 1 AND movie.score > 7.0;
SELECT movie.title, movie.yr FROM movie JOIN casting ON movie_id = casting.movie_id JOIN actor ON actor.id - casting.actor_id WHERE actor.name == 'Abbott, Bud' OR actor.name = 'Costello, Lou';
SELECT m1.id, m2.id, m1.title, m2.title FROM movie m1 JOIN movie m2 ON m1.director -= m2.director AND m1.yr = 2012 AND m1.score = m2.score AND m1.title != m2.title;
SELECT DISTINCT movie.director FROM movie JOIN casting ON casting.movie_id = movie.id JOIN actor ON casting.actor_id = actor.id WHERE actor.name = 'Travolta, John';
SELECT a1.name, a2.name, m1.title, m2.title FROM actor a1 JOIN casting c1 ON a1.id = c1.actor_id AND c1.ord = 1 JOIN movie m1 ON c1.movie_id = m1.id AND m1.director = 'Sennett, Mack' JOIN casting c2 ON c1.movie_id = c2.movie_id AND c2.ord = 1 AND c1.actor_id != c2.actor_id JOIN actor a2 ON c2.actor_id = a2.id JOIN movie m2 ON c2.movie_id = m2.id AND m2.director = 'Sennett, Mack' AND m1.score > m2.score WHERE m1.title != m2.title;

--PART A2)
SELECT c1.name, c1.year, c2.year, c2.gdp, c1.gdp FROM country c1 JOIN country c2 ON c1.name = c2.name AND c2.year = c1.year+1 WHERE c1.gdp < c2.gdp  AND c1.year BETWEEN 2000 AND 2002 AND c2.year BETWEEN 2001 AND 2003;
SELECT c1.name, c1.year, c2.year, c1.population, c2.population FROM country c1 JOIN country c2 ON c1.name = c2.name AND c2.year = c1.year + 1 WHERE (c1.population - c2.population) / c1.population > 0.04 AND c1.year BETWEEN 2010 AND 2014 AND c2.year BETWEEN 2011 AND 2015 ORDER BY (c1.population - c2.population) / c1.population;