drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (123,'45678',199.00,'C','2025-05-21','14:50:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (122,'45679',189.00,'D','2025-05-22','10:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (121,'45670',188.00,'C','2025-05-23','11:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (124,'45671',177.00,'D','2025-05-24','12:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (125,'45672',166.00,'C','2025-05-25','13:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (126,'45673',155.00,'D','2025-05-26','19:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (127,'45674',144.00,'D','2025-05-27','18:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (128,'45675',133.00,'C','2025-05-28','17:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (129,'45676',122.00,'C','2025-05-29','16:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (120,'45677',111.00,'C','2025-05-20','15:30:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (220,'45377',211.00,'C','2025-05-20','15:30:00')

select * from transacciones where tipo!='C'

select * from transacciones where monto between money(200) and money(2000)

select codigo,monto,tipo,fecha from transacciones where fecha!=null