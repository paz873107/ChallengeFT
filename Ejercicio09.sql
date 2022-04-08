#Creo la tabla con las columnas requeridas
CREATE TABLE    edadesUnicas(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO edadesUnicas(name,age) VALUES('Bob',21);
INSERT INTO edadesUnicas(name,age) VALUES('Sam',19);
INSERT INTO edadesUnicas(name,age) VALUES('Jill',18);
INSERT INTO edadesUnicas(name,age) VALUES('Jim',21);
INSERT INTO edadesUnicas(name,age) VALUES('Sally',19);
INSERT INTO edadesUnicas(name,age) VALUES('Jess',20);
INSERT INTO edadesUnicas(name,age) VALUES('Will',21);

#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM edadesUnicas;

#Armo el SELECT de salida con el requerimiento que obtendrá los valores de 'age' sin repetir.
SELECT      DISTINCT(age) 
FROM        edadesUnicas 
ORDER BY    age ASC;

#DROP de la tabla
DROP TABLE IF EXISTS edadesUnicas;