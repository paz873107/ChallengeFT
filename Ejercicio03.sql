--Creo la tabla con las columnas requeridas
CREATE TABLE    siglos(
    id          INT NOT NULL AUTO_INCREMENT,
    year        INT NOT NULL,
    PRIMARY KEY (id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO siglos(year) VALUES (1776);
INSERT INTO siglos(year) VALUES (2001);
INSERT INTO siglos(year) VALUES (1643);
INSERT INTO siglos(year) VALUES (1865);
INSERT INTO siglos(year) VALUES (1969);

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM siglos;

--Armo el SELECT de salida con el requerimiento que traerá el siglo correspondiente de cada id
SELECT  CEILING (year/100) 
AS      Siglo 
FROM    siglos;

--DROP de la tabla
DROP TABLE IF EXISTS siglos;