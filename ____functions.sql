--.....executing functions

--select func_Name() from table_Name;
--DECLARE
--variable
--BEGIN
    --variable := func_Name();
--END;



--......................FUNCTIONS................................


create or replace function fSetNextIndex return flag.client_id%TYPE as
    cursor c_nextIndex is select max(client_id) from flag;
    v_nextIndex flag.client_id%type;
    begin
        
        open c_nextIndex;
        fetch c_nextIndex into v_nextIndex;
        close c_nextIndex;
        return v_nextIndex + 1;
    
    end fSetNextIndex;
    
    
