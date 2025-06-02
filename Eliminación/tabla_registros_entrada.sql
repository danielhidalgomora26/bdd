drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12345,1004421432,'2025-05-22','14:30:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12344,1004421431,'2025-01-10','12:20:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12343,1004421433,'2025-09-29','11:10:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12342,1004421434,'2025-03-28','15:31:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12341,1004421435,'2025-04-27','16:32:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12346,1004421436,'2025-06-26','17:33:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12347,1004421437,'2025-07-25','18:34:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12348,1004421438,'2025-08-24','19:35:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12349,1004421439,'2025-09-23','10:37:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12332,1004421430,'2025-05-21','6:38:00')

select cedula_empleado,fecha,hora from registros_entrada

select * from registros_entrada where hora between '7:00' and '14:00'

select * from registros_entrada where hora>'8:00'

delete from registros_entrada where fecha between '2025-06-01' and '2025-06-30'