--Creo la tabla con las columnas requeridas
CREATE TABLE    sumaEdades(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO sumaEdades(name,age) VALUES('Bob',21);
INSERT INTO sumaEdades(name,age) VALUES('Sam',19);
INSERT INTO sumaEdades(name,age) VALUES('Jill',18);
INSERT INTO sumaEdades(name,age) VALUES('Jim',21);
INSERT INTO sumaEdades(name,age) VALUES('Sally',19);
INSERT INTO sumaEdades(name,age) VALUES('Jess',20);
INSERT INTO sumaEdades(name,age) VALUES('Will',21);

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM sumaEdades;

--Armo el SELECT de salida con el requerimiento que obtendrá la suma de todas las edades
SELECT  sum(age) 
AS      Resultado 
FROM    sumaEdades;

--DROP de la tabla
DROP TABLE IF EXISTS sumaEdades;