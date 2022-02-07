create table cliente
(cod_cliente varchar2(5) primary key
,nm1_cliente varchar2(20)
,nm2_cliente varchar2(20)
,ap1_cliente varchar2(20)
,ap2_cliente varchar2(20)
,fec_nacimiento date
,nro_hijos number(2)
,sexo char
);

create table actor
(cod_actor varchar2(5) primary key
,nom_actor varchar2(60)
);


create table genero
(cod_genero varchar2(3) primary key
,nom_genero varchar2(30)
,val_alquiler number(10));

create table pelicula
(cod_pelicula varchar2(10) primary key
,nom_pelicula varchar2(60)
,cod_genero varchar2(3) references genero(cod_genero)
);


create table actor_pelicula
(cod_actor varchar2(5) references actor(cod_actor)
,cod_pelicula varchar2(10) references pelicula(cod_pelicula)
,constraint pk_actor_pel primary key (cod_actor,cod_pelicula)
);

create table copia
(nro_copia varchar2(10) primary key
,cod_pelicula varchar2(10) references pelicula(cod_pelicula)
,fec_creacion date);


create table prestamo
(nro_prestamo varchar2(5) primary key
,cod_cliente varchar2(5) references cliente(cod_cliente)
,fec_prestamo date
,valor_descuento number(10)
);

create table detalle_prestamo
(nro_prestamo varchar2(5) references prestamo(nro_prestamo)
,cod_copia varchar2(10) references copia(nro_copia)
,fec_devolucion date
,valor_alquiler number(10)
,valor_multa number(10)
,constraint pk_det_prest primary key(nro_prestamo,cod_copia)
);


Insert into CLIENTE
 Values
   ('1', 'JUAN', 'SEBASTIAN', 'PEREZ', 'LOPEZ', 
    to_date('1977/07/06','yyyy/mm/dd'), 2, 'M');
Insert into CLIENTE
 Values
   ('2', 'MARIA', 'CRISTINA', 'RODRIGUEZ', 'GUTIERREZ', 
    to_date('1944/12/05','yyyy/mm/dd'), 6, 'F');
Insert into CLIENTE
 Values
   ('3', 'CRISTINA', NULL, 'ANDRADE', 'OSPINO', 
    to_date('1936/08/15','yyyy/mm/dd'), 4, 'F');
Insert into CLIENTE
 Values
   ('4', 'ALBERTO', 'LUIS', 'MARTINEZ', 'RODRIGUEZ', 
    to_date('1968/11/01','yyyy/mm/dd'), 3, 'M');
Insert into CLIENTE
 Values
   ('5', 'KELLY', 'JOHANA', 'SARMIENTO', 'GUTIERREZ', 
    to_date('1968/04/05','yyyy/mm/dd'), 1, 'F');
Insert into CLIENTE
 Values
   ('6', 'PEDRO', 'JOSE', 'VANEGAS', 'LOPEZ', 
    to_date('1970/04/17','yyyy/mm/dd'), 4, 'M');
Insert into CLIENTE
 Values
   ('7', 'JUAN', 'CARLOS', 'GOMEZ', 'RUIZ', 
    to_date('1977/12/26','yyyy/mm/dd'), 0, 'M');
Insert into CLIENTE
 Values
   ('8', 'ALFONSO', 'JOSE', 'ANDRADE', 'OSPINO', 
    to_date('1977/05/03','yyyy/mm/dd'), 3, 'M');
Insert into CLIENTE
 Values
   ('9', 'MARISOL', NULL, 'SARMIENTO', 'DUQUE', 
    to_date('1993/01/02','yyyy/mm/dd'), 0, 'F');
Insert into CLIENTE
 Values
   ('10', 'PEDRO', 'LUIS', 'GOMEZ', 'RUIZ', 
    to_date('1977/07/06','yyyy/mm/dd'), 1, 'M');
Insert into CLIENTE
 Values
   ('11', 'FRANCISCO', NULL, 'ULLATE', NULL, 
    to_date('1977/07/20','yyyy/mm/dd'), 0, 'M');
Insert into CLIENTE
 Values
   ('12', 'SUSANA', 'ALONSO', 'ABASCAL', 'FERNANDEZ', 
    to_date('1995/05/15','yyyy/mm/dd'), 0, 'F');
    
    
    
insert into actor
values('A01','Samuel Jackson');

insert into actor
values('A02','Colin Farrell');

insert into actor
values('A03','Jamie Fox');

insert into actor
values('A04','Josh Lucas');

insert into actor
values('A05','Kurth Russell');

insert into actor
values('A06','Tom Cruise');

insert into actor
values('A07','Brad Pitt');

insert into actor
values('A08','George Clooney');

insert into actor
values('A09','Matt Damon');

insert into actor
values('A10','Al Pacino');

insert into actor
values('A11','Angelina Jolie');

insert into actor
values('A12','Hayden Christensen');

insert into actor
values('A13','John Cusack');




insert into genero
values('X01','Acci?n',2000);

insert into genero
values('X02','Drama',1500);

insert into genero
values('X03','Aventura',2000);

insert into genero
values('X04','Terror',2200);





insert into pelicula
values('P18','Jumper','X03');

insert into pelicula
values('P03','Cleaner','X02');

insert into pelicula
values('P12','1408','X04');

insert into pelicula
values('P10','Swat','X01');

insert into pelicula
values('P02','Alexander','X02');

insert into pelicula
values('P08','El aprendiz','X02');

insert into pelicula
values('P09','Miami Vice','X01');

insert into pelicula
values('P07','El reino','X01');

insert into pelicula
values('P17','Stealth','X01');

insert into pelicula
values('P14','Poseidon','X01');

insert into pelicula
values('P06','Vanilla sky','X02');

insert into pelicula
values('P01','Mision Imposible I','X01');

insert into pelicula
values('P05','Ocean 13','X01');

insert into pelicula
values('P13','Se?or y Se?ora Smith','X01');

insert into pelicula
values('P04','Tomb Raider II','X03');

insert into pelicula
values('P15','Michael Clayton','X02');

insert into pelicula
values('P16','La supremacia de Bourne','X01');

insert into pelicula
values('P11','88 minutos','X02');


insert into actor_pelicula
Values('A01','P18');

insert into actor_pelicula
Values('A01','P03');

insert into actor_pelicula
Values('A01','P12');

insert into actor_pelicula
Values('A01','P10');

insert into actor_pelicula
Values('A02','P10');

insert into actor_pelicula
Values('A02','P02');

insert into actor_pelicula
Values('A02','P08');

insert into actor_pelicula
Values('A03','P09');

insert into actor_pelicula
Values('A03','P07');

insert into actor_pelicula
Values('A03','P17');

insert into actor_pelicula
Values('A04','P17');

insert into actor_pelicula
Values('A04','P14');

insert into actor_pelicula
Values('A05','P14');

insert into actor_pelicula
Values('A05','P06');

insert into actor_pelicula
Values('A06','P06');

insert into actor_pelicula
Values('A06','P01');

insert into actor_pelicula
Values('A07','P05');

insert into actor_pelicula
Values('A07','P13');

insert into actor_pelicula
Values('A08','P05');

insert into actor_pelicula
Values('A08','P15');

insert into actor_pelicula
Values('A09','P05');

insert into actor_pelicula
Values('A09','P16');

insert into actor_pelicula
Values('A10','P08');

insert into actor_pelicula
Values('A10','P05');

insert into actor_pelicula
Values('A11','P13');

insert into actor_pelicula
Values('A11','P04');

insert into actor_pelicula
Values('A12','P18');

insert into actor_pelicula
Values('A13','P12');





insert into copia
values('C01','P01',to_date('2006/07/01','yyyy/mm/dd'));

insert into copia
values('C02','P01',to_date('2007/02/16','yyyy/mm/dd'));

insert into copia
values('C03','P02',to_date('2004/03/27','yyyy/mm/dd'));

insert into copia
values('C04','P03',to_date('2008/01/03','yyyy/mm/dd'));

insert into copia
values('C05','P04',to_date('2003/11/15','yyyy/mm/dd'));

insert into copia
values('C06','P05',to_date('2007/09/23','yyyy/mm/dd'));

insert into copia
values('C07','P05',to_date('2008/01/05','yyyy/mm/dd'));

insert into copia
values('C08','P06',to_date('2001/06/12','yyyy/mm/dd'));

insert into copia
values('C09','P07',to_date('2007/07/01','yyyy/mm/dd'));

insert into copia
values('C10','P07',to_date('2008/02/14','yyyy/mm/dd'));

insert into copia
values('C11','P08',to_date('2003/11/04','yyyy/mm/dd'));

insert into copia
values('C12','P09',to_date('2006/07/19','yyyy/mm/dd'));

insert into copia
values('C13','P10',to_date('2005/10/17','yyyy/mm/dd'));

insert into copia
values('C14','P10',to_date('2006/03/01','yyyy/mm/dd'));

insert into copia
values('C15','P10',to_date('2006/12/05','yyyy/mm/dd'));


insert into copia
values('C27','P11',to_date('2007/08/01','yyyy/mm/dd'));

insert into copia
values('C16','P12',to_date('2007/05/03','yyyy/mm/dd'));

insert into copia
values('C17','P13',to_date('2005/11/25','yyyy/mm/dd'));

insert into copia
values('C18','P13',to_date('2006/10/12','yyyy/mm/dd'));

insert into copia
values('C19','P14',to_date('2006/03/16','yyyy/mm/dd'));

insert into copia
values('C20','P15',to_date('2007/09/07','yyyy/mm/dd'));

insert into copia
values('C21','P16',to_date('2004/01/27','yyyy/mm/dd'));

insert into copia
values('C22','P16',to_date('2006/02/28','yyyy/mm/dd'));

insert into copia
values('C23','P17',to_date('2005/03/23','yyyy/mm/dd'));

insert into copia
values('C24','P18',to_date('2008/02/18','yyyy/mm/dd'));

insert into copia
values('C25','P18',to_date('2008/02/23','yyyy/mm/dd'));

insert into copia
values('C26','P18',to_date('2008/03/23','yyyy/mm/dd'));



insert into prestamo values('1','1',to_date('2008/01/05','yyyy/mm/dd'),0);

insert into prestamo values('2','1',to_date('2008/02/10','yyyy/mm/dd'),0);

insert into prestamo values('3','1',to_date('2008/03/15','yyyy/mm/dd'),500);

insert into prestamo values('4','2',to_date('2007/12/27','yyyy/mm/dd'),0);

insert into prestamo values('5','2',to_date('2007/01/03','yyyy/mm/dd'),500);

insert into prestamo values('6','6',to_date('2008/03/01','yyyy/mm/dd'),1000);

insert into prestamo values('7','9',to_date('2007/12/25','yyyy/mm/dd'),500);

insert into prestamo values('8','9',to_date('2004/03/05','yyyy/mm/dd'),0);

insert into prestamo values('9','9',to_date('2006/07/12','yyyy/mm/dd'),0);

insert into prestamo values('10','3',to_date('2008/03/05','yyyy/mm/dd'),500);

insert into prestamo values('11','3',to_date('2007/02/18','yyyy/mm/dd'),500);

insert into prestamo values('12','3',to_date('2007/12/07','yyyy/mm/dd'),0);

insert into prestamo values('13','7',to_date('2008/01/09','yyyy/mm/dd'),0);

insert into prestamo values('14','7',to_date('2007/11/27','yyyy/mm/dd'),0);

insert into prestamo values('15','7',to_date('2004/05/20','yyyy/mm/dd'),0);

insert into prestamo values('16','7',to_date('2008/04/03','yyyy/mm/dd'),0);

insert into prestamo values('17','10',to_date('2004/07/07','yyyy/mm/dd'),0);

insert into prestamo values('18','10',to_date('2007/05/12','yyyy/mm/dd'),500);

insert into prestamo values('19','4',to_date('2008/03/16','yyyy/mm/dd'),500);

insert into prestamo values('20','4',to_date('2008/03/29','yyyy/mm/dd'),500);

insert into prestamo values('21','5',to_date('2008/01/19','yyyy/mm/dd'),500);

insert into prestamo values('22','5',to_date('2006/04/19','yyyy/mm/dd'),500);

insert into prestamo values('23','5',to_date('2008/04/21','yyyy/mm/dd'),500);

insert into prestamo values('25','8',to_date('2007/11/23','yyyy/mm/dd'),0);

insert into prestamo values('26','8',to_date('2006/09/05','yyyy/mm/dd'),500);

insert into prestamo values('27','8',to_date('2006/10/12','yyyy/mm/dd'),500);

insert into prestamo values('28','11',to_date('2005/04/07','yyyy/mm/dd'),0);

insert into prestamo values('29','11',to_date('2006/12/07','yyyy/mm/dd'),0);

insert into prestamo values('30','11',to_date('2006/08/13','yyyy/mm/dd'),500);

insert into prestamo values('31','12',to_date('2004/02/07','yyyy/mm/dd'),0);

insert into prestamo values('32','12',to_date('2003/07/27','yyyy/mm/dd'),0);

insert into prestamo values('33','12',to_date('2008/04/04','yyyy/mm/dd'),0);

insert into prestamo values('34','10',to_date('2008/04/08','yyyy/mm/dd'),0);



insert into detalle_prestamo values('1','C09',to_date('2008/01/07','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('2','C06',to_date('2008/02/12','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('3','C16',to_date('2008/03/18','yyyy/mm/dd'),2200,100);

insert into detalle_prestamo values('3','C13',to_date('2008/03/17','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('4','C09',to_date('2007/12/30','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('5','C01',to_date('2007/01/08','yyyy/mm/dd'),1800,200);

insert into detalle_prestamo values('5','C13',to_date('2007/01/05','yyyy/mm/dd'),1500,0);

insert into detalle_prestamo values('6','C16',to_date('2008/03/03','yyyy/mm/dd'),2200,0);

insert into detalle_prestamo values('6','C05',to_date('2008/03/03','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('6','C15',to_date('2008/03/05','yyyy/mm/dd'),2000,200);

insert into detalle_prestamo values('6','C23',to_date('2008/03/04','yyyy/mm/dd'),2000,100);

insert into detalle_prestamo values('7','C16',to_date('2007/12/27','yyyy/mm/dd'),2200,0);

insert into detalle_prestamo values('7','C21',to_date('2007/12/27','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('8','C05',to_date('2004/03/08','yyyy/mm/dd'),1500,100);

insert into detalle_prestamo values('9','C23',to_date('2006/07/17','yyyy/mm/dd'),1800,300);

insert into detalle_prestamo values('10','C06',to_date('2008/03/06','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('10','C14',to_date('2008/03/08','yyyy/mm/dd'),2000,100);

insert into detalle_prestamo values('11','C03',to_date('2007/02/21','yyyy/mm/dd'),1500,100);

insert into detalle_prestamo values('11','C01',to_date('2007/02/22','yyyy/mm/dd'),2000,200);

insert into detalle_prestamo values('12','C02',to_date('2007/12/09','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('13','C16',to_date('2008/01/10','yyyy/mm/dd'),2200,0);

insert into detalle_prestamo values('14','C02',to_date('2007/11/29','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('15','C11',to_date('2004/05/26','yyyy/mm/dd'),1200,400);

insert into detalle_prestamo values('16','C25',to_date('2008/04/08','yyyy/mm/dd'),2000,300);

insert into detalle_prestamo values('17','C05',to_date('2004/07/09','yyyy/mm/dd'),1500,0);

insert into detalle_prestamo values('18','C02',to_date('2007/05/15','yyyy/mm/dd'),2000,100);

insert into detalle_prestamo values('18','C21',to_date('2007/05/14','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('19','C07',to_date('2008/03/19','yyyy/mm/dd'),2000,100);

insert into detalle_prestamo values('19','C22',to_date('2008/03/20','yyyy/mm/dd'),2000,200);

insert into detalle_prestamo values('20','C01',to_date('2008/04/03','yyyy/mm/dd'),2000,300);

insert into detalle_prestamo values('20','C24',to_date('2008/04/04','yyyy/mm/dd'),2000,400);


insert into detalle_prestamo values('21','C07',to_date('2008/01/20','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('21','C02',to_date('2008/01/20','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('22','C14',to_date('2006/04/20','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('22','C17',to_date('2006/04/20','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('23','C22',to_date('2008/04/22','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('23','C24',to_date('2008/04/22','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('25','C16',to_date('2007/11/24','yyyy/mm/dd'),2200,0);

insert into detalle_prestamo values('26','C03',to_date('2006/09/06','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('26','C17',to_date('2006/09/08','yyyy/mm/dd'),1200,100);

insert into detalle_prestamo values('27','C11',to_date('2006/10/13','yyyy/mm/dd'),1200,0);

insert into detalle_prestamo values('27','C18',to_date('2006/10/17','yyyy/mm/dd'),1800,300);

insert into detalle_prestamo values('28','C03',to_date('2005/04/07','yyyy/mm/dd'),1200,0);

insert into detalle_prestamo values('29','C18',to_date('2006/12/07','yyyy/mm/dd'),1800,0);

insert into detalle_prestamo values('30','C11',to_date('2006/08/14','yyyy/mm/dd'),1200,0);

insert into detalle_prestamo values('30','C23',to_date('2006/08/18','yyyy/mm/dd'),1800,300);

insert into detalle_prestamo values('31','C05',to_date('2004/02/07','yyyy/mm/dd'),1500,0);

insert into detalle_prestamo values('32','C08',to_date('2003/07/28','yyyy/mm/dd'),1000,0);

insert into detalle_prestamo values('33','C24',to_date('2008/04/05','yyyy/mm/dd'),2000,0);

insert into detalle_prestamo values('34','C25',to_date('2008/04/09','yyyy/mm/dd'),2000,0);


commit;


select * from cliente
select * from actor
select * from genero
select * from pelicula
select * from actor_pelicula
select * from copia
select * from prestamo
select * from detalle_prestamo

pruebassss 2022


select count(valor_alquiler) as media from detalle_prestamo



consulta que muestre el cliente con el mayor numero de hijos 

select cod_cliente Id, nm1_cliente Nombre, ap1_cliente Apellido, fec_nacimiento, nro_hijos
from cliente
where nro_hijos = (select max(nro_hijos)
                   from cliente)         



consulta que muestre los cliente que presten la pelicula de El aprendiz

select c.cod_cliente, nm1_cliente, ap1_cliente, nom_pelicula
from cliente c, prestamo p, detalle_prestamo dp, copia co, pelicula pe
where c.cod_cliente = p.cod_cliente and p.nro_prestamo = dp.nro_prestamo and dp.cod_copia = co.nro_copia and co.cod_pelicula = pe.cod_pelicula and pe.nom_pelicula = 'El aprendiz'



consulta que muetre los clientes que tienen un descuento de 1000 

select c.cod_cliente, nm1_cliente, ap1_cliente
from cliente c inner join prestamo p on  c.cod_cliente = p.cod_cliente
where p.valor_descuento = 1000



consulta que muestre la cantidad de peliculas en la que ha participado Angelina Jolie

select nom_actor, count(nom_pelicula)
from actor a, actor_pelicula ap, pelicula p
where a.cod_actor = ap.cod_actor and ap.cod_pelicula = p.cod_pelicula and a.nom_actor = 'Angelina Jolie'
group by nom_actor



consulta que muestre las peliculas en la que ha participado Angelina Jolie

select nom_pelicula, nom_actor
from actor a, actor_pelicula ap, pelicula p
where a.cod_actor = ap.cod_actor and ap.cod_pelicula = p.cod_pelicula and a.nom_actor = 'Angelina Jolie'


 
muestre el cod, nom1, nom2, ap1, ap2 y la cantidad de prestamos que ha realizado 

desc cliente

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
where ap1_cliente like'S%' and ap2_cliente like'%E'
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente
having count(*) = 3
order by cod_cliente desc 



select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nro_prestamo
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
where c.cod_cliente = 3



consulta que muestra la persona con mas hijos

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, c.nro_hijos
from cliente c
where nro_hijos = (select max(nro_hijos)
                   from cliente c)  
                   


 mostrar la persona con mas hijos y con menos hijos 
 
select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, c.nro_hijos
from cliente c
where nro_hijos = (select max(nro_hijos)
                   from cliente c)
union
select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, c.nro_hijos
from cliente c
where nro_hijos = (select min(nro_hijos)
                   from cliente c)
                   
                   
                   
muetre cuantas pelculas ha alquilado el cliente con codigo 12 

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
where c.cod_cliente = 12
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente



mostrar los clientes que han alquilado 3 peliculas 

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula       
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente
having count(*) = 3



mostar los clientes, el nombre de la pleicula y cuando dias duraron con ellas del genero accion

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nom_pelicula, fec_devolucion-fec_prestamo
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
               inner join genero ge on pe.cod_genero = ge.cod_genero
where nom_genero = 'Acci?n'               
      


muestre los datos del cliente, numero de dias que duro con la pelicula y han prestado pelicula del genero comedia

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula               
where nom_pelicula = 'Acci?n'               
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente
having count(*) = 3  



muetre cada genero cuantas peliculas tiene 

select nom_genero, count(*) cantidad
from genero g inner join pelicula pe on g.cod_genero = pe.cod_genero
group by nom_genero 



mostrar el cliente que mas prestamos ha realizado 

select c.cod_cliente, c.nm1_cliente, c.ap1_cliente, count(nro_prestamo) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente 
group by c.cod_cliente, c.nm1_cliente, c.ap1_cliente
having count(*) = (select max(count(*))
                   from  cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente 
                   group by c.cod_cliente, c.nm1_cliente, c.ap1_cliente)

      

mostrar la cantidad de prestamos y cantidad de peliculas prestada 

select c.cod_cliente, c.nm1_cliente, c.ap1_cliente, count(p.nro_prestamo) numPrestamos, count(pe.cod_pelicula) numPeliculas
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo de on p.nro_prestamo = de.nro_prestamo
               inner join copia co on de.cod_copia = co.nro_copia
               inner join pelicula pe on co.cod_pelicula = pe.cod_pelicula
group by c.cod_cliente, c.nm1_cliente, c.ap1_cliente   



por que esto sale diferente ? (PRWEGUNTA AL PROFESOR )
alfonso tienes 3 prestamos pero 2 de ellos tienen 2 peliculas 

select c.cod_cliente, c.nm1_cliente, c.ap1_cliente, count(de.nro_prestamo) numPrestamos
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo de on p.nro_prestamo = de.nro_prestamo              
group by c.cod_cliente, c.nm1_cliente, c.ap1_cliente 

select c.cod_cliente, c.nm1_cliente, c.ap1_cliente, count(nro_prestamo) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente 
group by c.cod_cliente, c.nm1_cliente, c.ap1_cliente
order by count(nro_prestamo)



               
muestre el genero que mas peliculas tienes 

select nom_genero, count(*) cantidad
from genero g inner join pelicula pe on g.cod_genero = pe.cod_genero
group by nom_genero
having count(*) = (select max(count(*))
                   from genero g inner join pelicula pe on g.cod_genero = pe.cod_genero
                   group by nom_genero) 
                   
                   

 

mostrar el cliente que mas pelicula ha alquilado y el que menos realizo 

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente
having count(*) = (select max(count(*))
                   from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
               group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente)
union 
select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, count(*) cantidad
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente
having count(*) = (select min(count(*))
                   from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
               group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente)
                   
                   

mostrar los datos del cliente que mas plata ha pagado en multa             
                   
select  c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente, sum (d.valor_multa)
from cliente c inner join prestamo p on c.cod_cliente=p.cod_cliente
               inner join detalle_prestamo d on p.nro_prestamo = d.nro_prestamo              
group by c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente
having sum(d.valor_multa) = (select max(sum(d.valor_multa))
                                from cliente c inner join prestamo p on c.cod_cliente=p.cod_cliente
                                               inner join detalle_prestamo d on p.nro_prestamo = d.nro_prestamo
                               group by  c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente)                
                   


mostrar los datos del y cuantas multas aa pagado                   
                   
select  c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente, count(d.valor_multa)
from cliente c inner join prestamo p on c.cod_cliente=p.cod_cliente
               inner join detalle_prestamo d on p.nro_prestamo = d.nro_prestamo              
group by c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente                   
                   


mostrar los datos del cliente con codigo 4 y el valor de sus multas 

select  c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente, d.valor_multa
from cliente c inner join prestamo p on c.cod_cliente=p.cod_cliente
               inner join detalle_prestamo d on p.nro_prestamo = d.nro_prestamo              
where c.cod_cliente = 4
                   


mostrar los clientes que has prestado a samuel jaczon  y mostrarlo una sola vez                 
                   
                   
select distinct (c.cod_cliente), c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nom_actor            
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
               inner join actor_pelicula ap on pe.cod_pelicula = ap.cod_pelicula
               inner join actor a on a.cod_actor = ap.cod_actor
where nom_actor = 'Samuel Jackson'    



mostrar los datos del cliente, fecha prestamo, fecha devolucion, cantidad de dias que duro con la peli, 
cod copia, nombre pelicula, de que aquellas pelis que se devolvieron el mismo dia 

select c.cod_cliente, nm1_cliente, nm2_cliente, ap1_cliente, ap2_cliente, fec_devolucion, fec_prestamo,  fec_devolucion-fec_prestamo, nom_pelicula
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
where fec_devolucion = fec_prestamo 



muestre los clientes que mas han prestado a samuel jackosn 

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nom_actor, count(nom_actor)
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
               inner join actor_pelicula ap on pe.cod_pelicula = ap.cod_pelicula
               inner join actor a on a.cod_actor = ap.cod_actor
where nom_actor = 'Samuel Jackson'   
group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente,nom_actor
having count(nom_actor) = (select max(count(nom_actor))
                           from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
                           inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
                           inner join copia co on co.nro_copia = d.cod_copia
                           inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
                           inner join actor_pelicula ap on pe.cod_pelicula = ap.cod_pelicula
                           inner join actor a on a.cod_actor = ap.cod_actor
                           group by c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nom_actor)
               
               
               
1.	Muestre por cada película quien fue el primer cliente que la alquiló.  Visualice nombre de película, nombre completo del cliente y fecha de alquiler

select c.cod_cliente, c.nm1_cliente, c.nm2_cliente, c.ap1_cliente, c.ap2_cliente, nom_pelicula, fec_prestamo
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
                           inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
                           inner join copia co on co.nro_copia = d.cod_copia
                           inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula
where (nom_pelicula, fec_prestamo) in (select nom_pelicula, min(fec_prestamo)
                       from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
                           inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
                           inner join copia co on co.nro_copia = d.cod_copia
                           inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula 
                           group by nom_pelicula)
order by c.cod_cliente desc


select nom_pelicula, min(fec_prestamo)
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
                           inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
                           inner join copia co on co.nro_copia = d.cod_copia
                           inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula                                                     
group by nom_pelicula


2.	Mostrar por cada género el código de la copia que más veces se ha prestado

select nom_genero, nro_copia, count(nro_copia)
from copia co inner join pelicula pe on co.cod_pelicula = pe.cod_pelicula
              inner join genero g on pe.cod_genero = g.cod_genero
  
group by nom_genero, nro_copia, 
having count(nro_copia) = (select max(count(nro_copia))
                           from copia co inner join pelicula pe on co.cod_pelicula = pe.cod_pelicula
                                         inner join genero g on pe.cod_genero = g.cod_genero
                           group by nom_genero, nro_copia)           
                           
select nom_genero, nro_copia
from copia co inner join pelicula pe on co.cod_pelicula = pe.cod_pelicula
              inner join genero g on pe.cod_genero = g.cod_genero                           



3.	Mostrar las películas en las cuales todas sus copias se han prestado más de dos veces. 

select nom_pelicula, co.cod_pelicula, count(co.cod_pelicula)
from pelicula pe inner join copia co on pe.cod_pelicula = co.cod_pelicula
                 inner join detalle_prestamo de on co.nro_copia = de.cod_copia  
group by nom_pelicula, co.cod_pelicula
having count(co.cod_pelicula) >= 2

select nom_pelicula, pe.cod_pelicula, co.nro_copia
from pelicula pe inner join copia co on pe.cod_pelicula = co.cod_pelicula
                 inner join detalle_prestamo de on co.nro_copia = de.cod_copia 
order by nom_pelicula asc                 



select nom_pelicula, pe.cod_pelicula, co.nro_copia, count(co.nro_copia)
from pelicula pe inner join copia co on pe.cod_pelicula = co.cod_pelicula
                 
group by nom_pelicula, pe.cod_pelicula, co.nro_copia                 
                 

select nom_pelicula, pe.cod_pelicula, co.nro_copia, count(de.nro_prestamo)
from pelicula pe inner join copia co on pe.cod_pelicula = co.cod_pelicula
                 inner join detalle_prestamo de on co.nro_copia = de.cod_copia
                
group by nom_pelicula, pe.cod_pelicula, co.nro_copia                 
having count(de.nro_prestamo) = 0



4.	Mostrar cuales películas se han prestado por las mujeres que tienen hijos

select distinct nom_pelicula, nm1_cliente Nombre, ap1_cliente, nro_hijos
from cliente c inner join prestamo p on c.cod_cliente = p.cod_cliente
               inner join detalle_prestamo d on d.nro_prestamo = p.nro_prestamo
               inner join copia co on co.nro_copia = d.cod_copia
               inner join pelicula  pe on pe.cod_pelicula = co.cod_pelicula         
where sexo = 'F' and nro_hijos >= 1 
order by nm1_cliente asc



5.	Muestre las películas prestadas en el año 2007.  Visualice los nombres de película

select pe.cod_pelicula, nom_pelicula, fec_prestamo
from prestamo p inner join detalle_prestamo d on p.nro_prestamo = d.nro_prestamo    
                inner join copia co on co.nro_copia = d.cod_copia
                inner join pelicula pe on pe.cod_pelicula = co.cod_pelicula
where to_char(fec_prestamo , 'YYYY') = '2007'                                
              




















               
               

               
               
