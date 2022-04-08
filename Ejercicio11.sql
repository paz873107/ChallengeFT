--Creo las tablas con las columnas requeridas
CREATE TABLE    personas(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    id_nac      INT NOT NULL,
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE    nacionalidad(
    id          INT NOT NULL AUTO_INCREMENT,
    descr       VARCHAR(30),
    PRIMARY KEY (id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO personas(name,id_nac,age) VALUES('Bob',1,21);
INSERT INTO personas(name,id_nac,age) VALUES('Sam',1,19);
INSERT INTO personas(name,id_nac,age) VALUES('Jill',2,18);
INSERT INTO personas(name,id_nac,age) VALUES('Jim',3,21);
INSERT INTO personas(name,id_nac,age) VALUES('Sally',4,19);
INSERT INTO personas(name,id_nac,age) VALUES('Jess',2,20);
INSERT INTO personas(name,id_nac,age) VALUES('Will',3,21);
INSERT INTO nacionalidad(descr) VALUES ('Argentino');
INSERT INTO nacionalidad(descr) VALUES ('Italiano');
INSERT INTO nacionalidad(descr) VALUES ('Español');
INSERT INTO nacionalidad(descr) VALUES ('Aleman');

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM personas, nacionalidad;

--Armo el SELECT de salida con el requerimiento que obtendrá los nombres de las personas con sus respectivos valores de id, nacionalidad y edad 
SELECT  p.id,n.descr,p.name,p.age 
FROM    personas AS p
JOIN    nacionalidad AS n
ON      p.id_nac=n.id;

--DROP de las tablas
DROP TABLE IF EXISTS personas,nacionalidad;
