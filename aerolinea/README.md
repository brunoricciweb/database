
## Base de datos de aerolínea

![diagram](https://github.com/brunoricciweb/database/assets/114032017/604d4c73-ad2a-4aa2-96f5-ef3692b16301)


1) A partir del diagrama relacional, hacer las queries necesarias para crear las tablas. Guardar estas consultas en un archivo `.sql`. 
#####
2) Usando las herramientas de generación de datos, poblar las tablas con datos de prueba:
    - generatedata.com/generator
    - mockaroo.com
    - excel
    - etc...

    Tener en cuenta que los campos con relación FK deben tener **valores que existan** en la tabla foránea. 
    Por ejemplo:
    Si en los campos de la tabla "pasajeros" tengo dni con valores 
    >1,2,4,7,9    

    y en la tabla "tickets" tengo valores 
    >1,2,22,71,105
    
    entonces hay valores de "tickets" que tienen asociado un pasajero que no existe. Eso nos tirará un error al momento de ejecutar la query. Para evitar este problema, configurar correctamente el generador de datos, o asegurarse manualmente que **no existan estos conflictos**, con ayuda de excel, por ejemplo.

#####
3) Guardar las queries con los datos de prueba en un archivo, por si hubiera que volver a cargarlos eventualmente.
---
### Ejercicios:

1) Se desea mostrar en pantalla a los pasajeros la información sobre los próximos vuelos, ordenados por el más próximo a partir. No se deben mostrar vuelos que partieron hace más de 30 minutos ni que van a partir en más de 12hs respecto del momento en que se ejecuta la query.
**La información requerida es:**
    - Código de vuelo
    - Ciudad de destino
    - Hora de partida (en formato 24hs)
    - Hora de llegada
######
2) Para el sistema de check-in se requiere obtener la información de los pasajeros:
    - Apellido, Nombre (con ese formato)
    - e-mail
    - Documento
    - Nacionalidad (nombre del país)
######
3) Para el sistema de check-in, también se requiere modificar el estado del campo "checked_in" del pasajero una vez que lo haya realizado. Realizar query que actualice dicho valor, especificando el documento del usuario.
######
4) Obtener todos los aviones disponibles, ordenados por consumo, apareciendo el que menos consume primero y el que más consume, al final.
######
5) Mostrar la cantidad de pasajeros de cada nacionalidad que hay cargados en el sistema. Ordenar de mayor cantidad a menor cantidad.
######
6) Mostrar cuántos vuelos realiza cada avión, ordenados de mayor cantidad a menor cantidad. Mostrar patente, modelo y cantidad de vuelos.
######
7) Mostrar los vuelos ordenados por consumo de combustible. Mostrar código de vuelo, y qué consumo de combustible tiene en función del avión asignado.
######
8) Ordenar los vuelos por duración (en tiempo), ordenados de mayor a menor.
9) A partir de la duración de cada vuelo, obtener cuántos litros de combustible se utiliza para cada uno. Mostrar código de vuelo, ciudad de origen, ciudad de destino y litros de combustible totales. Esta última columna debe aparecer con el nombre "litros_consumidos"
#####
10) Crear función que permita hacer el check-in (ver punto 3). La misma debe poder invocarse y sin devolver nada como resultado, ésta debe actualizar el campo checked_in del ticket correspondiente. Debe tomar el `dni` y el `cod_vuelo` como parámetros de entrada.
    - Luego, hacer validación para que, si el pasajero de ese vuelo ya tiene realizado el check-in, no vuelva a sobrescribir el campo, sino que levante una excepción (raise exception).
######
11) Crear una función "setAsiento" que asigne el asiento al pasajero. Debe recibir el código de vuelo, el DNI y el numero de asiento a asignar. A su vez, la función debe validar que en ese vuelo no esté ocupado el asiento que se desea asignar. En caso de que se elija un asiento ocupado, levantar una excepción. En caso de que el asiento esté disponible, actualizar el campo `asiento`.
######


borrador

12) Crear un trigger __'trigger_assign_gate'__ que se ejecute después de actualizar el campo 'checked_in' de la tabla **tickets**. Cuando la ocupación del vuelo supere el 50%, se debe 
