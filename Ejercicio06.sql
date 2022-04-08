#Creo la tabla con las columnas requeridas
CREATE TABLE    saludo(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO saludo(name) VALUES('Bob');
INSERT INTO saludo(name) VALUES('Sam');
INSERT INTO saludo(name) VALUES('Jill');
INSERT INTO saludo(name) VALUES('Jim');
INSERT INTO saludo(name) VALUES('Sally');
INSERT INTO saludo(name) VALUES('Jess');
INSERT INTO saludo(name) VALUES('Will');

#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM saludo;

#Armo el SELECT de salida para el requerimiento del ejercicio 
SELECT      CONCAT('¡Hola ',name,'! ¿Cómo estás hoy?') 
AS          Saludo
FROM        saludo; 

#DROP de la tabla
DROP TABLE IF EXISTS saludo;