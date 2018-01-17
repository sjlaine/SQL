SELECT name FROM movies WHERE year = 1991;

SELECT year, COUNT(*) FROM movies WHERE year = 1982;

SELECT first_name, last_name FROM actors WHERE last_name LIKE '%stack%';

SELECT first_name || ' ' || last_name, COUNT(*) FROM actors GROUP BY first_name || " " || last_name ORDER BY COUNT(*) DESC LIMIT 10;

SELECT first_name, COUNT(*) FROM actors GROUP BY first_name ORDER BY COUNT(*) DESC LIMIT 10;

SELECT first_name, last_name FROM actors WHERE id = SELECT actor_id, COUNT(*) FROM roles GROUP BY actor_id ORDER BY COUNT(*) DESC LIMIT 100;



SELECT first_name, last_name, COUNT(*)
  FROM [actors] JOIN roles
    ON [actors].id = roles.actor_id
      GROUP BY actor_id
      ORDER BY COUNT(*)
      DESC LIMIT 100;

SELECT movie_id, genre FROM movies_genres WHERE genre= 'Horror';


SELECT id, name, year FROM movies WHERE name = 'Braveheart' AND year = 1995;

-- 46169 = id

SELECT role, actor_id FROM roles WHERE movie_id = 46169;


SELECT first_name, last_name
  FROM actors JOIN roles
    ON [actors].id = [roles].actor_id
      WHERE movie_id = 46169
      ASC;
