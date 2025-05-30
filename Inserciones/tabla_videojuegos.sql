drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1234,'Valorant','juego de disparos',15)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1235,'Minecraft','juego de bloques',20)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1236,'Genshin','juego de exploracion',30)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1237,'Roblox','plataforma de juegos',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (1238,'Cuphead','juego de disparios',5)

insert into videojuegos(codigo,nombre,valoracion)
values (1221,'Subnautica',7)

insert into videojuegos(codigo,nombre,valoracion)
values (1223,'Hollow Night',11)

insert into videojuegos(codigo,nombre,valoracion)
values (1224,'Fornite',95)

select * from videojuegos