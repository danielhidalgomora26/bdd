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
values (1,'22002',199.00,'C','2025-05-21','14:50:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (122,'22003',189.00,'D','2025-05-22','10:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (121,'45670',188.00,'C','2025-05-23','11:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (124,'45671',177.00,'D','2025-05-24','12:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (125,'45672',166.00,'C','2025-05-25','13:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (126,'45673',155.00,'D','2025-05-26','19:30:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (127,'45674',144.00,'D','2025-05-27','18:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (128,'45675',133.00,'C','2025-05-28','17:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (129,'45676',122.00,'C','2025-05-29','16:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (120,'45677',111.00,'C','2025-05-20','15:30:00');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (220,'45377',211.00,'C','2025-05-20','15:30:00');

select * from transacciones where tipo!='C'

select * from transacciones where numero_cuenta between '2001' and '2001'

select * from transacciones where monto between money(200) and money(2000)

select codigo,monto,tipo,fecha from transacciones where fecha!=null

delete from transacciones where hora between '14:00' and '18:00' and fecha between '2025-08-01' and '2025-08-31'

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(50),
	constraint codigo_banco_pk primary key (codigo_banco)
)
insert into banco(codigo_banco)
values(1);
insert into banco(codigo_banco)
values(122);
insert into banco(codigo_banco)
values(121);
insert into banco(codigo_banco)
values(124);
insert into banco(codigo_banco)
values(125);
insert into banco(codigo_banco)
values(126);
insert into banco(codigo_banco)
values(127);
insert into banco(codigo_banco)
values(128);
insert into banco(codigo_banco)
values(129);
insert into banco(codigo_banco)
values(120);
insert into banco(codigo_banco)
values(220);

alter table transacciones
add constraint transacciones_banco_fk
foreign key (codigo)
references banco(codigo_banco)

select tra.codigo,tra.numero_cuenta,tra.monto,tra.tipo from transacciones tra, banco ba
where tra.codigo=ba.codigo_banco
and tipo='C' and numero_cuenta between '22001' and '22004'

select tra.codigo,tra.numero_cuenta,tra.monto,tra.tipo,tra.fecha,tra.hora from transacciones tra, banco ba
where tra.codigo=ba.codigo_banco
and codigo_banco = 1


select count(codigo) from transacciones
where tipo='C'

select numero_cuenta,round(AVG(cast (monto as decimal)),2) from transacciones
group by (numero_cuenta)
