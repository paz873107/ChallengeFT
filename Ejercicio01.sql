--Creo la tabla con las columnas requeridas
CREATE TABLE 	nrosOpuestos (
	id 			INT NOT NULL AUTO_INCREMENT,
	value 		INT NOT NULL,
    PRIMARY KEY	(id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO nrosOpuestos (value) valueS (-56);
INSERT INTO nrosOpuestos (value) valueS (76);
INSERT INTO nrosOpuestos (value) valueS (-84);
INSERT INTO nrosOpuestos (value) valueS (96);
INSERT INTO nrosOpuestos (value) valueS (-47);

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM nrosOpuestos;

--Armo el SELECT de salida con el requerimiento que obtendrá los números opuestos a los ingresados inicialmente
SELECT 	id,(value*-1) 
AS 		Resultado 
FROM 	nrosOpuestos;

--DROP de la tabla
DROP TABLE IF EXISTS nrosOpuestos;