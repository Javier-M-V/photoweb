
create table usuarios(

usuario varchar(20),
contrasenya varchar(15) NOT NULL,
CONSTRAINT PRIMARY KEY(usuario)
);

create table imagenes(

id_imagen integer,
ruta varchar(50) NOT NULL,
CONSTRAINT imagenes_pk PRIMARY KEY(id_imagen)
);

create table fotografos(

nombre varchar (25),
biografia varchar(2000),
quote varchar (150),
CONSTRAINT fotografos_pk PRIMARY KEY(nombre)
);

insert into usuarios (usuario, contrasenya) 
VALUES ('JavierM', '1234');

insert into imagenes(id_imagen, ruta)
VALUES(9,'annie.jpg)';

insert into imagenes(id_imagen, ruta)
VALUES(2,'bresson.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(1,'capa.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(5,'carter.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(4,'fass.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(8,'madoz.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(3,'manray.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(6,'macurry.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(10,'newton.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(7,'sanz.jpg');





