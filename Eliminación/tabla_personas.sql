drop table personas

create table personas(
	cedula char(10) not null,
	nombre varchar(50),
	apellido varchar(50),
	estatura numeric ,
	fecha_nacimiento date ,
	hora_nacimiento time ,
	cantidad_ahorrada money ,
	numero_hijos integer,
	constraint cedula_pk primary key(cedula)
)

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values (100441435,'Daniel','Hidalgo','U')
insert into personas(cedula,nombre,apellido)
values (1234567890,'Nico','Livi')
insert into personas(cedula,nombre,apellido)
values (1234567213,'Diego','Cis')

select * from personas

delete from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key (codigo)
)

alter table personas
add constraint personas_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo)



insert into personas (cedula, nombre, apellido,estado_civil_codigo)
values ('1004421435','Santi','Mosquera','U')

select * from estado_civil

insert into estado_civil(codigo,descripcion)
values('U','Union Libre');
insert into estado_civil(codigo,descripcion)
values('C','Casado');
insert into estado_civil(codigo,descripcion)
values('S','Soltero');







