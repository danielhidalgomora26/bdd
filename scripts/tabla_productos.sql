drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (123,'manzana','fruta color rojo',2.00,10)

select * from productos