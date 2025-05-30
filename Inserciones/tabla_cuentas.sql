drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12345,67890,'2025-05-30',12.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12346,67890,'2025-05-29',22.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12347,67890,'2025-05-28',32.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12348,67890,'2025-05-27',42.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12349,67890,'2025-05-26',52.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12340,67890,'2025-05-25',62.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12341,67890,'2025-05-24',72.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12342,67890,'2025-05-23',82.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12343,67890,'2025-05-22',92.00)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (12344,67890,'2025-05-21',29.00)

select * from cuentas
