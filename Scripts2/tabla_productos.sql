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
values (123,'manzana','fruta color rojo',2.00,10);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (124,'piña','fruta color amarillo',2.12,10);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (125,'melon','fruta color naranja',1.25,10);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (126,'arandano','fruta color morada',2.75,10);

insert into productos (codigo,nombre,descripcion,precio,stock)
values (127,'kiwi','fruta color verde',2.50,10);

insert into productos (codigo,nombre,precio,stock)
values (134,'pera',1.50,5);

insert into productos (codigo,nombre,precio,stock)
values (144,'platano',2.50,5);

insert into productos (codigo,nombre,precio,stock)
values (154,'mora',1.00,5);

select * from productos where nombre like 'Q%'

select * from productos where nombre like '%m%'

select * from productos where descripcion is null

select * from productos where precio between money(2.00) and money(3.00)

delete from productos where descripcion is null

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint id_venta_pk primary key (id_venta)
)

insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1234,123,'22-06-2025',10);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1235,124,'22-06-2025',11);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1236,125,'22-06-2025',12);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1237,126,'22-06-2025',13);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1238,127,'22-06-2025',14);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1239,134,'22-06-2025',15);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1230,144,'22-06-2025',16);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1231,154,'22-06-2025',17);

alter table ventas
add constraint producto_ventas_fk
foreign key (codigo_producto)
references productos(codigo)

select pr.nombre,pr.stock,ve.cantidad,id_venta from productos pr, ventas ve
where pr.codigo=ve.codigo_producto
and nombre like 'm%' 

select pr.nombre,pr.stock from productos pr, ventas ve
where pr.codigo=ve.codigo_producto
and codigo_producto=5   