#Creo las tablas con las columnas requeridas
CREATE TABLE    personas(
    id          INT NOT NULL AUTO_INCREMENT,
    name        VARCHAR(30),
    id_nac      INT NOT NULL,
    age         INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE    vencimiento(
    id          INT NOT NULL AUTO_INCREMENT,
    fvto        DATE,
    PRIMARY KEY (id)
);

#Inserto los datos proporcionados para el ejercicio
INSERT INTO personas(name,id_nac,age) VALUES('Bob',1,21);
INSERT INTO personas(name,id_nac,age) VALUES('Sam',1,19);
INSERT INTO personas(name,id_nac,age) VALUES('Jill',2,18);
INSERT INTO personas(name,id_nac,age) VALUES('Jim',3,21);
INSERT INTO personas(name,id_nac,age) VALUES('Sally',4,19);
INSERT INTO personas(name,id_nac,age) VALUES('Jess',2,20);
INSERT INTO personas(name,id_nac,age) VALUES('Will',3,21);
INSERT INTO vencimiento(id,fvto) VALUES(1,'1/10/23');
INSERT INTO vencimiento(id,fvto) VALUES(2,'22/5/25');
INSERT INTO vencimiento(id,fvto) VALUES(5,'22/1/23');
INSERT INTO vencimiento(id,fvto) VALUES(6,'15/6/28');

#Creo una SP que al ejecutarse borra el registro del id dado
DELIMITER //
CREATE PROCEDURE eliminar_persona(id INT)
BEGIN
    DELETE      p.*,f.* 
    FROM        personas 
    AS          p
    LEFT JOIN   vencimiento 
    AS          f
    ON          p.id=f.id
    WHERE       id=p.id;
END //
DELIMITER ;

#Ejecuto la SP
CALL eliminar_persona(1);

#Hago el SELECT de las tablas personas y vencimiento para corroborar que el registro se haya eliminado con éxito
SELECT * FROM personas, vencimiento;

#DROP de las tablas
DROP TABLE  personas,vencimiento;

#DROP de la SP
DROP PROCEDURE eliminar_persona;