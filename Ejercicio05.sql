#Creo la tabla con las columnas requeridas
CREATE TABLE    agrupaPorEdad(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO agrupaPorEdad(name,age) VALUES('Bob',21);
INSERT INTO agrupaPorEdad(name,age) VALUES('Sam',19);
INSERT INTO agrupaPorEdad(name,age) VALUES('Jill',18);
INSERT INTO agrupaPorEdad(name,age) VALUES('Jim',21);
INSERT INTO agrupaPorEdad(name,age) VALUES('Sally',19);
INSERT INTO agrupaPorEdad(name,age) VALUES('Jess',20);
INSERT INTO agrupaPorEdad(name,age) VALUES('Will',21);

#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM agrupaPorEdad;

#Armo el SELECT de salida para el requerimiento del ejercicio, seleccionando la edad, haciendo el count de cada edad, agrupando por ese criterio y ordenando de forma ascendente
SELECT      age, count(age) 
AS          Agrupa 
FROM        agrupaPorEdad 
GROUP BY    age 
ORDER BY    age ASC;

#DROP de la tabla
DROP TABLE IF EXISTS agrupaPorEdad;