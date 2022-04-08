#Creo las tablas con las columnas requeridas
CREATE TABLE    personas(
    id          INT NOT NULL AUTO_INCREMENT,
    id_nac      INT NOT NULL,
    name        VARCHAR(30),
    age         INT,
    PRIMARY KEY (id)
);

CREATE TABLE    vencimiento(
    id          INT NOT NULL AUTO_INCREMENT,
    fvto        VARCHAR(10),
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio	
INSERT INTO personas VALUES	(1,1,"Bob",21);
INSERT INTO personas VALUES	(2,1,"Sam",19);
INSERT INTO personas VALUES	(3,2,"Jill",18);
INSERT INTO personas VALUES	(4,3,"Jim",21);
INSERT INTO personas VALUES	(5,4,"Sally",21);
INSERT INTO personas VALUES	(6,2,"Jess",20);
INSERT INTO personas VALUES	(7,3,"Will",21);
INSERT INTO vencimiento VALUES	(1,"1/10/23");
INSERT INTO vencimiento VALUES	(2,"22/5/25");
INSERT INTO vencimiento VALUES	(5,"22/1/23");
INSERT INTO vencimiento VALUES	(6,"15/6/28");
    
#Selecciono los datos ingresados en la tabla (consulta a modo de comprobación)
SELECT * FROM personas, vencimiento;

#Armo el SELECT de salida con el requerimiento que obtendrá id, nombre, edad y fecha de vencimiento de pasaporte si la tuviese
SELECT      p.id, p.name, p.age, IFNULL(v.fvto, ' ') 
FROM        personas 
AS          p
LEFT JOIN   vencimiento
AS          v  
ON          v.id = p.id
ORDER BY    p.id;

#DROP de las tablas
DROP TABLE vencimiento, personas;