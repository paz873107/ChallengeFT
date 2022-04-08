#Creo la tabla con las columnas requeridas
CREATE TABLE    ganancia(
    division_id INT NOT NULL,
    year        INT NOT NULL,
    revenue     INT NOT NULL
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO ganancia(division_id,year,revenue) VALUES( 1,2018,60);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 1,2021,40);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 1,2020,70);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 2,2021,-10);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 3,2018,20);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 3,2016,40);
INSERT INTO ganancia(division_id,year,revenue) VALUES( 4,2021,50);

#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM ganancia;

#Armo el SELECT de salida con el requerimiento que traerá los id solicitados.
SELECT  division_id 
FROM    ganancia 
WHERE   year=2021 
AND     revenue >= 0;

#DROP de la tabla
DROP TABLE IF EXISTS ganancia;