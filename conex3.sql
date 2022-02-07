create table empleado(
id varchar(10) primary key,
nombre varchar2(20),
apellido  varchar2(20),
fechana date,
salario number,
comision number,
coddep varchar2(10))
/

create table departamento(
coddep varchar2(10) primary key,
nomdep varchar2(20))
/

alter table empleado add constraint empleado_coddep_fk
foreign key (coddep) references departamento (coddep)
/

insert into departamento
values (1000,'nomina')
/

insert into departamento
values (2000,'ventas')
/

insert into departamento
values (3000,'compras')
/

insert into departamento
values (4000,'marketing')
/

insert into empleado
values (72, 'ana', 'gonzalez','02/10/1980',1000000,100000,1000)
/

insert into empleado
values (73, 'pedro', 'garcia','04/11/1979',2000000,200000,1000)
/

insert into empleado
values (74, 'luis', 'perez','03/12/1977',3000000,300000,2000)
/

insert into empleado
values (75, 'maria', 'sarmiento','01/01/1976',4000000,400000,2000)
/

insert into empleado
values (76, 'carlos', 'payares','02/02/1975',5000000,500000,3000)
/

insert into empleado
values (77, 'margarita', 'pertuz','02/04/1974',6000000,600000,3000)
/

insert into empleado
values (78, 'Andres', 'Monsalve','04/04/1986',2000000,500000,null)
/



Prueba de right y left 

select * from empleado

select * from departamento

select nombre persona, nomdep Departa
from empleado e inner join departamento d on e.coddep=d.coddep


select nombre persona, nomdep Departa
from empleado e left join departamento d on e.coddep=d.coddep 


select nombre persona, nomdep Departa
from empleado e right join departamento d on e.coddep=d.coddep



CUENTE LA CANTIDAD DE PERSONAS POR DEPARTAMENTOS

 
select nomdep Departa,  count(nombre) CantPersona
from empleado e right join departamento d on e.coddep=d.coddep
group by nomdep


select nomdep Departa,  count(nombre) CantPersona
from empleado e inner join departamento d on e.coddep=d.coddep
group by nomdep




PLSQL

-- Diseñe un bloque plsql que reciba como parametros el codigo del empleados y actualice su comision 
-- Si su salario es menor de 2000000 tine aumento en la comision del 15%
-- Si su salario es está entre 2000000  y 5000000 su aumento es del 7.5%
-- Si es mayor de 5000000 su aumento será del 5%
set serveroutput on 

Accept p_id PROMPT 'Codigo del  empleado: '
declare 
  v_id   empleado.id%type :=&p_id;
  v_sal  empleado.salario%type;
  v_com number;
  
  begin 
      select id, salario
      into v_id, v_sal
      from empleado
      where id = v_id;
      
      if v_sal <=2000000 then
          v_com := 0.15;
        
        elsif v_sal between 2000000 and 5000000 then 
            v_com := 0.1;
            else 
                 v_com := 0.05;
                 
      end if;
      
      update empleado
      set comision =  comision + (nvl(salario,0)*v_com)
      where id=v_id;
   
      
end;

select * from empleado

ROllBACK     




--Sin parametros 
create or replace procedure mostrar is
      cursor mostraemple is 
         select id, nombre, apellido, nomdep 
         from empleado e inner join departamento d on e.coddep=d.coddep;         
         
 begin      
       for i in mostraemple loop
       dbms_output.put_line('El empleados es: '||i.id ||' ' ||i.nombre||' '||i.apellido||' '||i.nomdep);
       end loop;
end;

execute mostrar;




--Con parametros
create or replace procedure mostrar (cod number)is
      cursor mostraemple is 
         select id, nombre, apellido, nomdep 
         from empleado e inner join departamento d on e.coddep=d.coddep
         where id=cod;
         
 begin    
       for i in mostraemple loop
       dbms_output.put_line('El empleados es: '||i.id ||' ' ||i.nombre||' '||i.apellido||' '||i.nomdep);
       end loop;
end;

execute mostrar(72);



--Digite un codigo de departamento y enviarlo por parametro y luego aumente los salarios de los empleados de ese departamento en un 10%

create or replace procedure incremento(codidep number) is
      cursor incre is 
         select id, nombre||' '||apellido nombres,salario,  nomdep 
         from empleado e inner join departamento d on e.coddep=d.coddep
         where d.coddep = codidep;
         
 begin 
     for i in incre loop
       dbms_output.put_line('El empleados es: '||i.id ||' ' ||i.nombres||' '||i.salario ||' '||i.nomdep);
    end loop;
    
    update empleado e
    set salario = salario + (nvl(salario,0)*0.1)
    where e.coddep=codidep;
    
    for i in incre loop
       dbms_output.put_line('El empleados Actualizado  es: '||i.id ||' ' ||i.nombres||' '||i.salario ||' '||i.nomdep);
    end loop;
end;    

execute incremento(1000);







create or replace procedure emple1 is
     regemp  empleado%rowtype;
        

begin 
        select *
        into regemp
        from empleado
        where id=72;
        
      dbms_output.put_line('El empleado es: ' ||regemp.id||' ' ||regemp.nombre||' ' ||regemp.apellido
                            ||' ' ||regemp.salario);   
end;

execute emple1





create or replace procedure incrementos (v_coddep varchar) is
         cursor mostrar is
           select id, nombre, apellido, salario, nomdep Departamentos
           from empleado e inner join departamento d on d.coddep=e.coddep 
           where e.coddep=v_coddep;
           
v_nomdep departamento.nomdep%type;
          
           
    begin 
          select nomdep
          into v_nomdep
          from departamento
          where coddep= v_coddep;
          
          
          DBMS_OUTPUT.PUT_LINE('Antes de la Actualización');
          DBMS_OUTPUT.PUT_LINE('Los empleados del departamento de '||v_nomdep);
          for i in mostrar loop 
          DBMS_OUTPUT.PUT_LINE('Empleado :  '||i.id||' ' ||i.nombre||' '||i.apellido||' '||i.salario);
          end loop;
          
          update empleado
          set salario = salario + nvl(salario,0)*0.1
          where coddep =v_coddep;
          
          DBMS_OUTPUT.PUT_LINE('Despues de la Actualización');
          
          for i in mostrar loop 
          DBMS_OUTPUT.PUT_LINE('Empleado :  '||i.id||' ' ||i.nombre||' '||i.apellido||' '||i.salario);
          end loop;
end;          

 execute incrementos(3000);



rollback








 

 
                                                                  

