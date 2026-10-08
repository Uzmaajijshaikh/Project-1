Output 1
SELECT type, COUNT(*) AS title_count FROM netflix_titles GROUP BY type ORDER BY title_count DESC;

Output 2
SELECT substr(date_added, -4) AS year_added, COUNT(*) AS title_count FROM netflix_titles WHERE date_added IS NOT NULL GROUP BY year_added ORDER BY year_added;

Output 3
SELECT rating, COUNT(*) AS title_count FROM netflix_titles WHERE rating NOT LIKE '% min' AND rating NOT IN ('') GROUP BY rating ORDER BY title_count DESC;

Output 4
SELECT listed_in,COUNT(*) AS title_count FROM netflix_titles GROUP BY listed_in ORDER BY title_count DESC LIMIT 10;

Output 5
SELECT country,COUNT(*) AS title_count FROM netflix_titles WHERE country IS NOT NULL GROUP BY country ORDER BY title_count DESC LIMIT 10;

Output 6
SELECT release_year, type, COUNT(*) AS title_count FROM netflix_titles GROUP BY release_year, type ORDER BY release_year, type;