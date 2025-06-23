drop table estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	codigo_profesor int,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1004421432,'Daniel','Hidalgo','danielhidalgomora@gmail.com','2007-03-30',123);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421434,'Damian','Livisaca','Damian456@gmail.com','2009-04-20');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421435,'Derek','Cisneros','Derek789@gmail.com','2015-06-30');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421436,'Danilo','Canchingre','Danilo098@gmail.com','2017-07-24');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421437,'Dani','Rosales','Dani765@gmail.com','2020-08-12');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421438,'Diego','Cardenas','Diego432@gmail.com','1989-09-21');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1004421439,'Dalia','Luceli','Dalia1020@gmail.com','2020-01-28');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1704421239,'Dalia','Luceli','Dalia1020@gmail.com','2020-01-28');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1704321239,'Alia','Luceli','Dalia1020@gmail.com','2020-01-28');

select nombre,cedula from estudiantes 

select nombre from estudiantes where cedula like '17%'

select nombre,apellido from estudiantes where nombre like 'A%'

select nombre,apellido from estudiantes where nombre like '%n%'

delete from estudiantes where cedula like '%05'

create table profesores(
	codigo int,
	nombre varchar(50)not null,
	constraint codigo_pk primary key (codigo) 
)

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)

insert into profesores(codigo, nombre)
values (123, 'Francisco');
insert into profesores(codigo, nombre)
values (124, 'Gabriel');
insert into profesores(codigo, nombre)
values (125, 'Juan');
insert into profesores(codigo, nombre)
values (126, 'Pepe');
insert into profesores(codigo, nombre)
values (127, 'Joaco');

select pr.codigo,es.nombre,es.apellido from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
and apellido like '%n%'

select es.cedula,es.nombre,es.apellido from estudiantes es, profesores pr
where codigo_profesor = 123

select es.codigo_profesor,count(es.nombre) from estudiantes es,profesores pr
where es.codigo_profesor=pr.codigo
group by (es.codigo_profesor)

SELECT ROUND(AVG(EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
FROM estudiantes;
