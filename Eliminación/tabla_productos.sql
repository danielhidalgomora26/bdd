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

insert into productos (codigo,nombre,descripcion,precio,stock)
values (124,'piña','fruta color amarillo',2.12,10)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (125,'melon','fruta color naranja',1.25,10)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (126,'arandano','fruta color morada',2.75,10)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (127,'kiwi','fruta color verde',2.50,10)

insert into productos (codigo,nombre,precio,stock)
values (134,'pera',1.50,5)

insert into productos (codigo,nombre,precio,stock)
values (144,'platano',2.50,5)

insert into productos (codigo,nombre,precio,stock)
values (154,'fresa',1.00,5)

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between money(2.00) and money(3.00)

delete from productos where descripcion is null

