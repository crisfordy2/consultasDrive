create table operadores(
 idoper number primary key,
 cedula number, 
 nombre varchar(20), 
 apellido varchar(20))

create table operadores(
 idoper number primary key,
 cedula number, 
 nombre varchar(20), 
 apellido varchar(20))

create table jefes(
 idjef number primary key,
 cedula number, 
 nombre varchar(20), 
 apellido varchar(20))
 
 
 insert into operadores 
 values(01, 71, 'juan', 'calabria')
 
 insert into operadores 
 values(02, 72, 'Ana', 'Diaz')
 
 insert into operadores 
 values(03, 73, 'Joe', 'Arroyo')
 
 insert into jefes 
 values(01, 71, 'juan', 'calabria')
 
 
 insert into jefes 
 values(02, 74, 'Maria', 'Acuña')
 
 
 
  insert into jefes 
 values(03, 75, 'Armando', 'Escandalo')
 
 desc operadores / el comando desc es para describir una tabla
 desc jefes
 
 select * 
 from operadores
 
 select * 
 from jefes
 
 select cedula, nombre, apellido
 from operadores
 union 
 select cedula, nombre, apellido
 from jefes
 
 
 
 select cedula, nombre, apellido
 from operadores
 intersect
 select cedula, nombre, apellido
 from jefes
 
 
 select cedula, nombre, apellido
 from operadores
 minus
 select cedula, nombre, apellido
 from jefes
 
 

 



 
