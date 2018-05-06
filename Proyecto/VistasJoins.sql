CREATE VIEW Vista1 AS
SELECT street_address, city
FROM LOCATIONS

CREATE VIEW Vista2
AS SELECT A1.departament_name Departaments, A1.manager_id Manager,A2.street_address Direccion , SUM(A2.location_id) Location_id
FROM DEPARTAMENTS A1, LOCATIONS A2
WHERE A1.location_id = A2.location_id
GROUP BY A1.departament_name, A1.manager_id, A2.street_address

CREATE VIEW Vista3
AS SELECT l.street_address Direccion, l.state_province Estado,c.country_name Pais, SUM(c.country_id) country_id
FROM LOCATIONS l, COUNTRIES c
WHERE l.country_id = c.country_id
GROUP BY l.street_address, l.state_province, c.country_name

CREATE VIEW Vista4
AS SELECT c.country_name Pais,r.region_name Continente , SUM(r.region_id) region_id
FROM COUNTRIES c, REGIONS r
WHERE c.region_id = r.region_id
GROUP BY c.country_name, r.region_name

CREATE VIEW Vista5 AS
SELECT departament_name, location_id
FROM DEPARTAMENTS

Create View VistaJoin AS
SELECT departament_name, manager_id, street_address 
FROM DEPARTAMENTS
    JOIN LOCATIONS
    ON DEPARTAMENTS.location_id = LOCATIONS.location_id


Create View VistaJoin2 AS
SELECT 
   d.departament_name Departamentos,
   d.manager_id,
   l.street_address,
   c.country_name Pais
FROM LOCATIONS l
INNER JOIN DEPARTAMENTS d ON l.location_id =  d.location_id
INNER JOIN COUNTRIES c ON l.country_id =  c.country_id

