drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (2201,1004421432,'2023-08-22','08:30:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12344,1004421431,'2023-09-10','09:20:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12343,1004421433,'2023-10-29','10:10:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12342,1004421434,'2023-08-28','11:31:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12341,1004421435,'2023-09-27','12:32:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12346,1004421436,'2023-10-26','08:33:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12347,1004421437,'2023-08-25','10:34:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12348,1004421438,'2023-09-24','11:35:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12349,1004421439,'2023-10-23','12:37:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (12332,1004421430,'2023-08-21','09:38:00');

select cedula_empleado,fecha,hora from registros_entrada

select * from registros_entrada where hora between '08:00' and '13:00'

select * from registros_entrada where hora>'8:00'

delete from registros_entrada where fecha between '2023-08-01' and '2023-12-31'

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null
)

alter table empleado
add constraint empleado_registros_entrada_fk 
foreign key (codigo_empleado)
references registros_entrada(codigo_registro)