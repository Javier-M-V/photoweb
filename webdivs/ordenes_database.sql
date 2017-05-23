create database photoweb;

create table usuarios(

usuario varchar(20),
contraseña number(10)
);

create table imagenes(

id_imagen varchar(20),
ruta varchar(50)
);

create table fotografos(

nombre varchar (25),
biografia varchar(2000),
quote varchar (150)
);
