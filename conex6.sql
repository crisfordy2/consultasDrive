CREATE TABLE clientes (
Idcli number primary key,
identificacion number unique,
nombre varchar2(20),
apellido varchar2(20),
idref2 number, 
idref3 number)



alter table clientes add constraint clientes_idref2_fk
foreign key(idref2) references clientes (Idcli)

alter table clientes add constraint clientes_idref3_fk
foreign key(idref3) references clientes (Idcli)



insert into clientes values(01, 10, 'Cristian', 'Gomez', null, null)

insert into clientes values(02, 11, 'Daniel', 'Perez', null, null)

insert into clientes values(03, 12, 'Juan', 'Herrera', 01, 02)



select * from clientes

select c.Identificacion, c.nombre, c.apellido, r2.Identificacion, r2.nombre, r2.apellido, r3.Identificacion, r3.nombre, r3.apellido
from clientes c inner join clientes r2 on r2.Idcli = c.idref2
                inner join clientes r3 on r3.Idcli = c.idref3






CASO 3

create table personas(
Idper number primary key,
ident number unique,
nombr varchar2(20),
apellid varchar2(20))


create table usuarios(
Idper number,
preferencias varchar2(20))


create table bibliotecarios(
Idper number,
especialidad varchar2(20))


create table enc_prestamo(
idpres number primary key,
nroPres number,
fecha date,
idusu number,
idbiblio number)



alter table usuarios add constraint usuarios_personas_fk
foreign key (Idper) references personas (Idper)


alter table bibliotecarios add constraint bibliotecarios_personas_fk
foreign key (Idper) references personas (Idper)


alter table enc_prestamo add constraint enc_prestamo_personas1_fk
foreign key (idusu) references personas (Idper)

alter table enc_prestamo add constraint enc_prestamo_personas2_fk
foreign key (idbiblio) references personas (Idper)



insert into personas values(01, 1, 'Cristian', 'Gomez')

insert into personas values(02, 2, 'Andres', 'Monsalve')

insert into personas values(03, 3, 'julian', 'pabon')

insert into usuarios values(01, 'accion')

insert into usuarios values(03, 'Ficcion')

insert into bibliotecarios values(02, 'libros historia')

insert into bibliotecarios values(01, 'libros fisica')

insert into enc_prestamo values(01, 1, to_date('2020/04/20','yyyy/mm/dd'), 01, 02)

insert into enc_prestamo values(02, 2, to_date('2020/05/21','yyyy/mm/dd'), 03, 01)



select nroPres, fecha, p1.nombr nombreBiblio,  p1.apellid apellidoBiblio, p2.nombr nombreUsuario, p2.apellid apellidoUsuario
from personas p1 inner join enc_prestamo e on p1.Idper = e.idbiblio
                 inner join personas p2 on p2.Idper = e.idusu














