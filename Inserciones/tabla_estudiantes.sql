drop table estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421432,'Daniel','Hidalgo','danielhidalgomora@gmail.com','2007-03-30')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421433,'David','Mora','David123@gmail.com','2001-05-10')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421434,'Damian','Livisaca','Damian456@gmail.com','2009-04-20')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421435,'Derek','Cisneros','Derek789@gmail.com','2015-06-30')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421436,'Danilo','Canchingre','Danilo098@gmail.com','2017-07-24')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421437,'Dani','Rosales','Dani765@gmail.com','2020-08-12')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421438,'Diego','Cardenas','Diego432@gmail.com','1989-09-21')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421439,'Dalia','Luceli','Dalia1020@gmail.com','2020-01-28')

select * from estudiantes
