---*TABLAS*---
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

create table proovedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint proovedores_pk primary key (codigo)
)

drop table productos_por_proovedor

create table productos_por_proovedor(
	pp_codigo_producto int not null,
	pp_codigo_proovedor int not null,
	precio money not null,
	constraint producto_fk foreign key (pp_codigo_producto) references productos(codigo),
	constraint proovedores_fk foreign key (pp_codigo_proovedor) references proovedores(codigo),
	constraint productos_por_proovedor_pk primary key (pp_codigo_producto,pp_codigo_proovedor)
)

---*INSERTS*---

--productos
insert into productos (codigo,nombre,stock)
values(100,'Doritos',100);
insert into productos (codigo,nombre,stock)
values(200,'K-chitos',200);
insert into productos (codigo,nombre,stock)
values(300,'Papas',300);
insert into productos (codigo,nombre,stock)
values(400,'takis',0);

--proveedor
insert into proovedores (codigo,nombre, telefono)
values(1,'Snacks SA','1234567890');
insert into proovedores (codigo,nombre, telefono)
values(2,'DistriSnacks','0987654321');

--tabla_rompimiento
insert into productos_por_proovedor(pp_codigo_producto,pp_codigo_proovedor,precio)
values (300,1,0.48);
insert into productos_por_proovedor(pp_codigo_producto,pp_codigo_proovedor,precio)
values (300,2,0.49);
insert into productos_por_proovedor(pp_codigo_producto,pp_codigo_proovedor,precio)
values (100,1,0.50);
insert into productos_por_proovedor(pp_codigo_producto,pp_codigo_proovedor,precio)
values (200,1,0.51);
insert into productos_por_proovedor(pp_codigo_producto,pp_codigo_proovedor,precio)
values (400,2,0.50);

---*SELECT*---
select * from productos

select * from proovedores

select * from productos_por_proovedor

select prod.codigo,prod.nombre,prov.nombre,pp.precio from productos prod,proovedores prov,productos_por_proovedor pp
where pp.pp_codigo_producto=prod.codigo 
and	pp.pp_codigo_proovedor=prov.codigo 	
and prod.codigo=300


