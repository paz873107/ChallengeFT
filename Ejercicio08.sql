--Creo la tabla con las columnas requeridas
create table    necesitaPasaporte(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    country     VARCHAR(30),
    PRIMARY KEY (id)
);
--Inserto los datos proporcionados para el ejercicio
INSERT INTO necesitaPasaporte(name,country) VALUES('Bob Smith','United States');
INSERT INTO necesitaPasaporte(name,country) VALUES('Jim Jones','China');
INSERT INTO necesitaPasaporte(name,country) VALUES('Sam White','Japan');
INSERT INTO necesitaPasaporte(name,country) VALUES('Jess Black','Canada');
INSERT INTO necesitaPasaporte(name,country) VALUES('Will Wilson','Germany');
INSERT INTO necesitaPasaporte(name,country) VALUES('Wilson Scott','England');
INSERT INTO necesitaPasaporte(name,country) VALUES('Scott Daniels','France');
INSERT INTO necesitaPasaporte(name,country) VALUES('Daniel Jackson','Canada');
INSERT INTO necesitaPasaporte(name,country) VALUES('Jack Johnson','United States');

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM necesitaPasaporte;

--Armo el SELECT de salida con el requerimiento que obtendrá los nombres de las personas que necesitan pasaporte para ingresar a Canadá
SELECT  name 
FROM    necesitaPasaporte 
WHERE   country NOT LIKE '%United States%' 
AND     country NOT LIKE '%Canada%';

--DROP de la tabla
DROP TABLE IF EXISTS necesitaPasaporte;