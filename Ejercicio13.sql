#Creo la tabla con las columnas requeridas
CREATE TABLE    tieneEdad(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO tieneEdad(name,age) VALUES('Bob',21);
INSERT INTO tieneEdad(name,age) VALUES('Sam',19);
INSERT INTO tieneEdad(name,age) VALUES('Jill',18);
INSERT INTO tieneEdad(name,age) VALUES('Jim',21);
INSERT INTO tieneEdad(name,age) VALUES('Sally',19);
INSERT INTO tieneEdad(name,age) VALUES('Jess',20);
INSERT INTO tieneEdad(name,age) VALUES('Will',21);

#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM   tieneEdad;

#Creo una SP que al ejecutarse devuelva la cantidad de registros con la edad dada
DELIMITER //
CREATE PROCEDURE cantidad (IN cantidad INT)
BEGIN
	SELECT  count(age) 
    AS      Resultado
    FROM    tieneEdad
    WHERE   age=cantidad;
END //
DELIMITER ;

#Ejecuto la SP
CALL cantidad(21);

#DROP de la tabla
DROP TABLE tieneEdad;

#DROP de la SP
DROP PROCEDURE cantidad;