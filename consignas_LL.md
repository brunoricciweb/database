1) Obtener listado de todos los estudiantes. Ordenar por edad de mayor a menor.

- Campo "nombre completo" en el siguiente formato: Apellido, nombre

- Dirección

- Edad en años.

---

2) Mostrar la cantidad de inscripciones que hay por cada materia. Ordenar de mayor a menor.

  ---

3) Obtener un listado de materias con sus respectivos profesores.

	Mostrar:

- Campo "Docente" con formato Apellido, Nombre (apellido y nombre del profesor.)

- Nombre de la materia.

---  

4) Obtener listado de todas las clases de la institución, ordenados de lunes a viernes. Mostrar los siguientes campos:

- Día de la semana en que se dicta la clase

- Horario (desde - hasta)

- Nombre de la materia

- Apellido y nombre del profesor a cargo

---

5) Obtener un listado de los 10 profesores que más horas de clase tienen asignadas, ordenados de mayor a menor. Mostrar columnas:

- "Apellido" -> Apellido del docente

- "Nombre" -> Nombre del docente

- "Total horas" -> Cantidad de horas asignadas

---

6) Realizar una query para obtener el promedio de todas las calificaciones de un determinado alumno (colocando el ID correspondiente a éste), de cada materia. Ordenar alfabéticamente.

	Por ejemplo: 	`ID = 124`

- Columna "Materia": Nombre de la materia

- Columna "promedio": Promedio de todas las calificaciones del alumno para esa materia.

> Consigna opcional: si el alumno no tiene ninguna calificación para alguna materia, en vez de que en el campo "promedio" figure un "0", que figure "Sin notas".

---

7) Obtener cuál es la tasa de aprobación de cada materia. La tasa de aprobación es la relación entre alumnos aprobados y no aprobados. Considerar aprobados a las calificaciones mayores o iguales a 6.00, y desaprobados a las menores a 6. Ordenar descendentemente.

	> Aprobado >= 6
	> No aprobado < 6

	`tasa = aprobados / no aprobados`

	Mostrar:

- "Materia" -> Nombre de la materia

- "Tasa aprobación" -> Tasa de aprobación

---

8) Obtener qué cantidad de alumnos tuvo cada profesor. Ordenar de mayor a menor, de manera que aparezcan primero los que más alumnos tengan. Mostrar:
- "Docente" -> Apellido, Nombre
- "Total alumnos" -> cantidad de alumnos 
