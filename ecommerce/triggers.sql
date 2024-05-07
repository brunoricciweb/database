
DROP FUNCTION trigger_facturas_stock;
CREATE OR REPLACE FUNCTION public.trigger_facturas_stock()
 RETURNS trigger  -- las funciones para trigger siempre deben devolver TRIGGER
 LANGUAGE plpgsql
AS $function$
BEGIN

    -- ejercicio 1: Verificar si el producto que quiero vender tiene stock > 0. Si tiene, 
    -- restar uno del stock de ese producto, y si no tiene, levantar excepción.

    -- llamo a la tabla "productos"
    if (SELECT stock FROM productos WHERE id = NEW.id_producto) > 0 THEN
    
        -- restar 1 del stock
        UPDATE productos SET stock = stock-1 where id = NEW.id_producto;
        
        return NEW;  -- siempre debe devolver NEW.
    end if;

    Raise Exception 'NO HAY STOCK -> %' ,NEW;
    
END;
$function$


-- DROP TRIGGER trigger_facturas_verificar_stock on facturas;   

CREATE  TRIGGER trigger_facturas_verificar_stock
BEFORE INSERT
ON facturas    -- nombre de la tabla
FOR EACH ROW
EXECUTE FUNCTION trigger_facturas_stock();  --nombre de la función a ejecutar.
