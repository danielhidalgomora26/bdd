drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1234,'Dragon City','juego de disparos',15)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1235,'Minecraft','juego de bloques',20)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1236,'God of war','juego de exploracion',30)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1237,'Roblox','plataforma de juegos',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1238,'Cuphead','Guerra',5)

insert into videojuegos(codigo,nombre,valoracion)
values (1221,'Subnautica',7)

insert into videojuegos(codigo,nombre,valoracion)
values (1223,'Hollow Night',11)

insert into videojuegos(codigo,nombre,valoracion)
values (1224,'Fornite',95)

select * from videojuegos where nombre like 'C%' and nombre like 'D%'

select * from videojuegos where valoracion between 9 and 10

select * from videojuegos where descripcion is null

delete from videojuegos where valoracion<7

create table plataformas(
	id_plataformas int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint id_plataformas_pk primary key (id_plataformas)
)

alter table plataformas
add constraint videojuegos_plataformas_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)