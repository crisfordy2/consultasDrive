
este es un bloque y su estructura es la siguiente 


set serveroutput on 
Declare

      v_cod number := &p_cod;
      v_nom varchar2(20) := 'juan';
      v_ape varchar2(20) := 'Calabria';
          
Begin

        DBMS_OUTPUT.PUT_LINE('El empleado es :' || v_cod ||' '||v_ape);
        
        
END;


Un cursor implicito es una consulta de una o varias 
tuplas que devuelve una sola tupla, registro o fila 


diseñe una consulta plsql con cursores implicitos que muestre los clientes 
que mas prestamos ha realizado, 2. el que mas consultas ha recivido 


















           
  