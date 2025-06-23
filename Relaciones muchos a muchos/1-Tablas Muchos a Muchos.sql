---Tablas Muchos a Muchos 
-----1 
create table usuarios(
	id_usuarios int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint id_usuarios_pk primary key (id_usuarios)
)

create table grupo(
	id_grupo int,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint id_grupo_pk primary key (id_grupo)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint id_usuarios_fk foreign key (us_id) references usuarios(id_usuarios),
	constraint id_grupo_fk foreign key (gr_id) references grupo(id_grupo),
	constraint usuario_grupo_pk primary key (us_id,gr_id)
)
--------------------------------
--consulta1
select usu.nombre,gru.nombre from usuarios usu, grupo gru, usuario_grupo ug
where usu.id_usuarios=ug.us_id
and gru.id_grupo=ug.gr_id

select nombre  from usuarios
where id_usuarios  in(select us_id from usuario_grupo where gr_id=1)

select gru.nombre, count(us_id) from grupo gru, usuario_grupo ug
where gru.id_grupo=ug.gr_id
group by (gru.nombre)

--consulta2
select usu.nombre,gru.nombre from usuarios usu, grupo gru, usuario_grupo ug
where usu.id_usuarios=ug.us_id
and gru.id_grupo=ug.gr_id
and gru.nombre like '%intensivo%'

select nombre from usuarios
where id_usuarios in (select us_id from usuario_grupo where gr_id=2)

select gru.nombre, max(ug.us_id) from grupo gru, usuario_grupo ug
where gru.id_grupo=ug.gr_id
group by (gru.nombre)

--consulta3
select usu.nombre,gru.fecha_creacion from usuarios usu, grupo gru, usuario_grupo ug
where usu.id_usuarios=ug.us_id
and gru.id_grupo=ug.gr_id
and gru.fecha_creacion between '2020-03-08' and '2022-03-08'

select nombre from usuarios
where id_usuarios in(select us_id from usuario_grupo where gr_id=3)

select gru.descripcion,count(ug.us_id) from grupo gru, usuario_grupo ug
where gru.id_grupo=ug.gr_id
and gru.descripcion like '%matutino%'
group by (gru.descripcion)
---RELACION MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO



insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							
							
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
								 
							 
								 
------2------------
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitacion_numero_pk primary key (habitacion_numero)
)

create table huespedes (
	id_huespedes int,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	paies varchar (45),
	constraint id_huespedes_pk primary key (id_huespedes)
)

create table reservas (
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitaciones_numero_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references huespedes(id_huespedes),
	constraint reservas_pk primary key (habitacion,huesped_id)
)
--------------------------------
--consulta1
select hab.habitacion_numero,hue.nombres, hue.apellidos from habitaciones hab,huespedes hue,reservas res
where hab.habitacion_numero=res.habitacion
and hue.id_huespedes=res.huesped_id

select nombres,apellidos from huespedes
where id_huespedes in(select huesped_id from reservas where habitacion=2)

select hab.habitacion_numero,count(res.huesped_id) from habitaciones hab, reservas res
where hab.habitacion_numero=res.habitacion
group by (hab.habitacion_numero)
--consulta2
select hab.habitacion_numero,hab.piso,hue.nombres,hue.apellidos  from habitaciones hab,huespedes hue,reservas res
where hab.habitacion_numero=res.habitacion
and hue.id_huespedes=res.huesped_id
and hab.piso=4

select nombres,apellidos from huespedes
where id_huespedes in(select huesped_id from reservas where habitacion=3)

select hab.habitacion_numero,AVG(res.huesped_id) from habitaciones hab, reservas res
where hab.habitacion_numero=res.habitacion
group by (hab.habitacion_numero)
--consulta3
select hab.habitacion_numero,hab.piso,hue.nombres,hue.apellidos from habitaciones hab,huespedes hue,reservas res
where hab.habitacion_numero=res.habitacion
and hue.id_huespedes=res.huesped_id

select nombres,apellidos from huespedes
where id_huespedes in(select huesped_id from reservas where habitacion=4)

select hab.habitacion_numero,sum(hab.precio_por_noche) from habitaciones hab, reservas res
where hab.habitacion_numero=res.habitacion
group by (hab.habitacion_numero)

--RELACION MUCHOS A MUCHOS HABITACIONES Y HUESPEDES

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
							


-------------3
create table ciudad (
	id_ciudad int,
	nombre varchar(45) not null,
	constraint id_ciudad_pk primary key (id_ciudad)
)

create table municipio(
	id_municipio int,
	nombre varchar(45),
	ciudad_id int,
	constraint ciudad_id_fk foreign key (ciudad_id) references ciudad(id_ciudad),
	constraint id_municipio_pk primary key (id_municipio)
)

create table proyecto(
	id_proyecto int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint id_proyecto_pk primary key (id_proyecto)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_id_fk foreign key (municipio_id) references municipio(id_municipio),
	constraint proyecto_id_fk foreign key (proyecto_id) references proyecto(id_proyecto),
	constraint proyecto_municipio_pk primary key (municipio_id,proyecto_id)
)
-------------------------------------
--consulta1
select mun.nombre,pro.proyecto from municipio mun,proyecto pro,proyecto_municipio pm
where mun.id_municipio=pm.municipio_id
and pro.id_proyecto=pm.proyecto_id

select proyecto from proyecto
where id_proyecto in(select proyecto_id from proyecto_municipio where municipio_id=1)

select mun.nombre, count(pm.proyecto_id) from municipio mun, proyecto_municipio pm
where mun.id_municipio=pm.municipio_id
group by (mun.nombre)
--consulta2
select mun.nombre,pro.proyecto from municipio mun,proyecto pro,proyecto_municipio pm
where mun.id_municipio=pm.municipio_id
and pro.id_proyecto=pm.proyecto_id
and mun.nombre like '%GAD%'

select mun.nombre,min(pm.proyecto_id) from municipio mun, proyecto_municipio pm
where mun.id_municipio=pm.municipio_id
group by (mun.nombre)
--consulta3
select mun.nombre, ciu.nombre from municipio mun, ciudad ciu
where mun.id_municipio=ciu.id_ciudad

select proyecto from proyecto 
where id_proyecto in(select proyecto_id from proyecto_municipio where municipio_id=3)

select mun.nombre, max(pm.proyecto_id) from municipio mun,proyecto_municipio pm
where mun.id_municipio=pm.municipio_id
group by (mun.nombre)
--RELACION MUCHOS A MUCHOS MUNICIPIO Y PROYECTOS


insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023'),
insert into proyecto values	(4, 'Mejoramiento Vial Urbano', 5000.00, '2023-01-01', '2023-12-31'),
							(5, 'Construcción de Plantas de Reciclaje', 8000.00, '2023-02-01', '2023-11-30'),
							(6, 'Programa de Agua Potable y Saneamiento', 6000.00, '2023-03-01', '2023-09-15'),
							(7, 'Fortalecimiento de Turismo Local', 7200.00, '2023-04-01', '2023-10-20'),
							(9, 'Digitalización de Servicios Municipales', 9200.00, '2023-05-01', '2023-11-10'),
							(10, 'Plan de Reforestación Urbana', 8100.00, '2023-06-01', '2023-12-01');
							

insert into proyecto_municipio values (1,5),
									  (3,5),
									  (1,2),
									  (2,1),
									  (1,4),
									  (2,9),
									  (1,10),
									  (3,6),
									  (1,3),
									  (2,7);