--Creo la tabla con las columnas requeridas
CREATE TABLE        productoPopular(
    id              INT NOT NULL AUTO_INCREMENT,
    name            VARCHAR(30),
    amount_sold     INT NOT NULL,
    PRIMARY KEY     (id)
);

--Inserto los datos proporcionados para el ejercicio
INSERT INTO productoPopular(name,amount_sold) VALUES('Cup',11);
INSERT INTO productoPopular(name,amount_sold) VALUES('Saucer',22);
INSERT INTO productoPopular(name,amount_sold) VALUES('Plate',46);
INSERT INTO productoPopular(name,amount_sold) VALUES('Fork',34);
INSERT INTO productoPopular(name,amount_sold) VALUES('Spoon',45);
INSERT INTO productoPopular(name,amount_sold) VALUES('Knife',78);
INSERT INTO productoPopular(name,amount_sold) VALUES('Mug',23);
INSERT INTO productoPopular(name,amount_sold) VALUES('Glass',64);
INSERT INTO productoPopular(name,amount_sold) VALUES('Tumbler',24);

--Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM productoPopular;

--Armo el SELECT de salida con el requerimiento que obtendrá los productos ordenados de mayor a menor cantidad de ventas y limitando a 5 la cantidad de productos mostrados
SELECT      name 
FROM        productoPopular 
ORDER BY    amount_sold DESC 
LIMIT       5;

--DROP de la tabla
DROP TABLE IF EXISTS productoPopular;
