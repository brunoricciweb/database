
## Base de datos de aerolínea

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
5) 
