SELECT * FROM COUNTRIES WHERE country_name LIKE 'A%'
SELECT * FROM LOCATIONS WHERE  postal_code Like '6%'
SELECT * FROM DEPARTAMENTS WHERE departament_name LIKE 'G%'
SELECT * FROM COUNTRIES WHERE country_id BETWEEN 2 AND 9
SELECT * FROM LOCATIONS WHERE location_id BETWEEN 1 AND 5


SELECT departament_name, SUM(location_id)
FROM DEPARTAMENTS
GROUP BY departament_name

SELECT location_id, SUM(departament_id)
FROM DEPARTAMENTS
GROUP BY location_id

SELECT country_id, SUM(location_id)
FROM LOCATIONS
GROUP BY country_id

SELECT region_id, SUM(country_id)
FROM COUNTRIES
GROUP BY region_id

SELECT country_name, country_id, SUM(region_id)
FROM COUNTRIES
GROUP BY ROLLUP (country_name, country_id)

SELECT Count(*) AS Departamentos FROM DEPARTAMENTS
SELECT Count(*) AS Locations FROM LOCATIONS
SELECT Count(*) AS Regions FROM REGIONS
SELECT Count(*) AS Jobs FROM JOBS
SELECT Count(*) AS Countries FROM COUNTRIES

SELECT departament_name, SUM(location_id)
FROM DEPARTAMENTS
GROUP BY departament_name
HAVING SUM(location_id) > 10

SELECT location_id, SUM(departament_id)
FROM DEPARTAMENTS
GROUP BY location_id
HAVING SUM(departament_id) < 20

SELECT country_id, SUM(location_id)
FROM LOCATIONS
GROUP BY country_id
HAVING SUM(location_id) > 5

SELECT region_id, SUM(country_id)
FROM COUNTRIES
GROUP BY region_id
HAVING SUM(country_id) >= 3

SELECT country_name, country_id, SUM(region_id)
FROM COUNTRIES
GROUP BY ROLLUP (country_name, country_id)
HAVING SUM(region_id) > =3

SELECT TOP 7 * FROM COUNTRIES

SELECT TOP 3 * FROM DEPARTAMENTS
WHERE location_id=1

SELECT TOP 6 * FROM DEPARTAMENTS
WHERE location_id=10

SELECT TOP 50 PERCENT * FROM LOCATIONS

SELECT * FROM COUNTRIES
WHERE country_id <= 5