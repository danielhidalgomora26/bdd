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

insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (100441435,'Daniel','Hidalgo','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234567890,'Nico','Livi8','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234545213,'Sean','Cis8','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1204567890,'Nico1','Livi7','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234589213,'Diego1','Cis7','U',3);

insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234512890,'Nico2','Livi6','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234564221,'Diego2','Cis6','U',3);

insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234567769,'Nico3','Livi5','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234567893,'Diego3','Cis5','U',3);

insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234567360,'Nico4','Livi4','U',3);
insert into personas(cedula,nombre,apellido,estado_civil_codigo,numero_hijos)
values (1234567013,'Diego4','Cis4','U',3);



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

create table prestamo(
	cedula_prestamo char(10),
	monto_prestamo money, 
	fcha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint cedula_prestamo_pk primary key (cedula_prestamo)
)

drop table prestamo


insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234567890,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234545213,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1204567890,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234589213,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234512890,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234564221,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234567893,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234567360,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234567013,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (1234567769,10);
insert into prestamo(cedula_prestamo,monto_prestamo)
values (100441435,10);

alter table personas
add constraint personas_prestamos_fk
foreign key (cedula)
references prestamo(cedula_prestamo)


select pe.cedula,pe.nombre, pe.apellido,ec.descripcion from 
personas pe,estado_civil ec
where 
pe.estado_civil_codigo=ec.codigo
and nombre like 'D%'

select pe.nombre,pe.apellido,pe.estatura,pe.fecha_nacimiento,pe.hora_nacimiento,pe.cantidad_ahorrada,pe.numero_hijos
from personas pe,estado_civil ec
where pe.estado_civil_codigo=ec.codigo
and nombre ='Sean'

-----AGREGACION
-----OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS

-----COUNT

select count(ec.codigo) from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo
--Me da el numero de registros del parentesis count(  )
and estado_civil_codigo='U'


--AVG- PROMEDIO
select AVG(cast(cantidad_ahorrada as numeric)) from personas
--Saca el promedio de una columna
--cast sirve para transformar a numeric junto a "as"

select AVG(cast(cantidad_ahorrada as numeric)) 
from personas per, estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='U'

--MAX-MIN-SUM

--Con el mismo formato

--group by
select estado_civil_codigo,sum(numero_hijos) from personas
group by estado_civil_codigo
--Para agrupar variables



select cedula_prestamo,sum(monto_prestamo) from prestamo
group by (cedula_prestamo)

select count(cedula) from personas
where numero_hijos>1



