drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12345,12345,'2022-09-01',102.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12346,12346,'2022-09-29',422.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12347,12347,'2022-08-28',320.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12348,12348,'2022-09-27',420.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12349,12349,'2022-09-26',352.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12340,12340,'2022-10-25',624.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12341,12341,'2022-09-24',172.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12342,12342,'2022-11-23',822.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12343,12343,'2022-09-22',922.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12344,12344,'2022-09-21',229.00);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12389,12389,'2022-09-21',129.00);

select numero_cuenta,saldo from cuentas 

select * from cuentas where fecha_creacion between '2022-08-31' and '2023-09-21'

select numero_cuenta,saldo,fecha_creacion from cuentas where fecha_creacion between '2022-08-31' and '2023-09-21' 
and saldo between money(100) and money(1000)

delete from cuentas where cedula_propietario like '10%'

drop table usuario

create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito numeric(10,5),
	constraint usuario_cedula_pk primary key (cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12346,'Dani','Hidalgo','Ahorro',6.7);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12347,'Dani0','Hidalgo1','Ahorro',5.4);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12348,'Dani1','Hidalgo2','Ahorro',5.7);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12349,'Dani2','Hidalgo3','Ahorro',6.4);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12340,'Dani3','Hidalgo4','Ahorro',2.8);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12341,'Dani4','Hidalgo5','Ahorro',1.1);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12342,'Dani5','Hidalgo6','Ahorro',10.3);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12343,'Dani6','Hidalgo7','Ahorro',6.2);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12344,'Dani7','Hidalgo8','Ahorro',7.3);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (12389,'Dani8','Hidalgo9','Ahorro',9.2);

select * from usuario

select * from cuentas

select cu.numero_cuenta,us.nombre,us.apellido,cu.saldo from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula
and saldo between money(100) and money(1000)

select cu.numero_cuenta,cu.fecha_creacion,cu.saldo,us.cedula from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula
and fecha_creacion between '2022-09-21' and '2023-09-21'

select AVG(cast(saldo as numeric)) from cuentas
where cedula_propietario like '1%'

select tipo_cuenta,count(tipo_cuenta) from usuario
group by(tipo_cuenta)

