--crea la tabla clientes
drop table clientes

create table clientes(
	cedula_cliente char(10),
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	constraint cedula_cliente_pk primary key(cedula_cliente)
)

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1074421432','Daniel','Hidalgo',14);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004471432','Monica','Hidalgo2',32);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1076421432','Daniel2','Hidalgo3',49);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004421732','Daniel3','Hidalgo4',18);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1007421432','Daniel4','Hidalgo5',14);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004427632','Daniel5','Hidalgo6',36);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004721432','Daniel6','Hidalgo7',6);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004421472','Daniel7','Hidalgo8',48);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1704421432','Daniel8','Hidalgo9',26);

insert into clientes (cedula_cliente, nombre, apellido, edad)
values('1004427432','Daniel9','Hidalgo0',17);

select * from clientes where cedula like '%7%'

create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto numeric(10,2) not null,
	constraint id_compra_pk primary key (id_compra)
)

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1001,'1074421432','2022-08-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1002,'1004471432','2022-07-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1003,'1076421432','2022-06-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1004,'1004421732','2022-05-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1005,'1007421432','2022-04-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1006,'1004427632','2022-03-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1007,'1004721432','2022-02-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1008,'1004421472','2022-01-25',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1009,'1704421432','2022-09-27',10);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1010,'1004427432','2022-09-26',10);

alter Table compras
add constraint cientes_compras_fk
foreign key (cedula)
references clientes(cedula_cliente)







