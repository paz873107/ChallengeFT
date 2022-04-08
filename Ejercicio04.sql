--Creo la tabla con las columnas requeridas
CREATE TABLE    esParOImpar(
    id          INT NOT NULL AUTO_INCREMENT,
    value       INT NOT NULL,
    PRIMARY KEY (id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO esParOImpar(value) values (4);
INSERT INTO esParOImpar(value) values (11);
INSERT INTO esParOImpar(value) values (57);
INSERT INTO esParOImpar(value) values (24);
INSERT INTO esParOImpar(value) values (47);

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM esParOImpar;

--Armo el SELECT de salida para el requerimiento que determinará si el valor es par o impar
SELECT CASE WHEN    value % 2 = 0 
    THEN                'Par' 
    ELSE                'Impar' 
END 
AS                  Resultado 
FROM                esParOImpar;

--DROP de la tabla
DROP TABLE IF EXISTS esParOImpar;