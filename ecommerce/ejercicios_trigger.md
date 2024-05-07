### Ejercicios:
1. Verificar si el producto que quiero vender tiene stock > 0. Si tiene, restar uno del stock de ese producto, y si no tiene, levantar excepción.
2. Implementar mediante un trigger, una función que se encargue de validar si el `id_producto` del producto que se quiere vender (en la tabla **facturas**) es válido. Para ello, hay que verificar que ese `id_producto` exista dentro de la tabla **productos**.
En caso de que el id_producto sea inválido, lanzar una excepción con el texto "EL PRODUCTO NO EXISTE".
