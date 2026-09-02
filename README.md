# Repaso de base de datos I – TP 02 
[TP 02 Base de datos II.pdf](https://github.com/user-attachments/files/31758288/TP.02.Base.de.datos.II.pdf)

Todos los archivos .sql mencionados se encuentran en el repositorio con nombres descriptivos.

Este es el DER en el cual se baso la base de datos:

<img width="1788" height="811" alt="der" src="https://github.com/user-attachments/assets/b8fcdd33-f992-4e9a-a05d-98805bd59510" />


## ¿Considera que el paradigma relacional es la mejor opción? 

1) Considero que el paradigma relacional es la mejor opción ya que la facultad tiene entidades fijas, como profesor, alumno. No es difícil saber de antemano que información voy a necesitar de estos. Además hay muchas relaciones entre sí, Profesor, con materia, materia con alumno, están todas las entidades relacionadas entre sí, esto con una base de datos relacional no es ningún problema.

## Creación de la base de datos:

<img width="1920" height="1039" alt="Create DataBase" src="https://github.com/user-attachments/assets/f94573c4-ce80-4d24-bf63-9daba1fd7976" />

Creamos la base de datos con todas sus tablas y relaciones.

## hacemos un INSERT inicial para mostrar como se hace:

<img width="1920" height="1037" alt="first INSERT" src="https://github.com/user-attachments/assets/f2fb558c-0e4b-40bd-888c-a7b25284e436" />

## Ahora le pedimos a la ia que nos haga un archivo de "carga masiva" para que sea mas interesante hacer las busquedas.

<img width="528" height="705" alt="carga_masiva" src="https://github.com/user-attachments/assets/17a32ca5-c95b-4f9d-a1a7-3ec9ff9ffa24" />

Como podemos ver al archivo tiene mas de 9000 lineas y ni hablar de la cantidad de relaciones.


# consultas:

## 1) Listar profesores con su departamento. 

<img width="1618" height="914" alt="consulta 1" src="https://github.com/user-attachments/assets/df2ec4a7-a918-49d2-b828-d1342843c18a" />

[Ver codigo SQL](./consultas/Consulta_1.sql)

## 2) Mostrar estudiantes y las materias en las que están inscriptos.

<img width="1920" height="1024" alt="Consulta 2" src="https://github.com/user-attachments/assets/8644ddef-0a92-406a-b55d-e050058dabb8" />

[Ver codigo SQL](./consultas/Consulta_2.sql)

## 3)Listar profesores y las materias que dictan. 

<img width="1920" height="1037" alt="Consulta 3" src="https://github.com/user-attachments/assets/f85ed42a-da13-43df-a266-512ae2b76889" />

[Ver codigo SQL](./consultas/Consulta_3.sql)

##  4) Mostrar estudiantes con nota/resultados en cada materia.

Puse el WHERE nota IS NOT NULL para que no muestre las "notas" de las materias que se estan cursando en este momento, ya que estas aun no tienen nota.

Ademas puse un par de as para que se vean mas lindos los resultados.


<img width="1920" height="1032" alt="Consulta 4" src="https://github.com/user-attachments/assets/2e3a66a5-f64c-4769-8bc4-acfcd2e35a2b" />

[Ver codigo SQL](./consultas/Consulta_4.sql)

## 5) Mostrar cantidad de materias por estudiante 

<img width="1920" height="1044" alt="Consulta 5" src="https://github.com/user-attachments/assets/51812da5-3523-4330-a6de-a96531980a84" />

[Ver codigo SQL](./consultas/Consulta_5.sql)

## 6) Mostrar cantidad de estudiantes por materia 

En este no estaba seguro si tenia que mostrar, las que estan cursando en este momento, o históricamente que cursaron esa materia. 

6.1) Estas son cantidad de alumnos que estan cursando cada materia:

<img width="1920" height="1049" alt="Consulta 6 1" src="https://github.com/user-attachments/assets/ccbbbe72-6bc8-487d-8e5f-8b0d0b4d2455" />

[Ver codigo SQL](./consultas/Consulta_6-1.sql)

6.2) Estas son cantidad de alumnos que curaron cada materia, sin tener en cuenta los que la estan cursando:

<img width="1920" height="1040" alt="Consulta 6 2" src="https://github.com/user-attachments/assets/6e29833d-4d48-46e0-8762-a278c376c95e" />

[Ver codigo SQL](./consultas/Consulta_6-2.sql)

## 7) Historial de inscripciones de UN estudiante puntual (con año)

Para esta consulta primero hice una búsqueda auxiliar para elegir un alumno que tenga varias materias cursadas asi el resultado era mas interesante:

<img width="1920" height="1042" alt="auxilari_cosnulta_7" src="https://github.com/user-attachments/assets/eb5b6c87-0d86-49f2-adb6-26198f6f37fb" />

[Ver codigo SQL](./consultas/Conuslta_6-2.sql)

Ahora si la consulta:

<img width="1920" height="853" alt="consulta 7" src="https://github.com/user-attachments/assets/d667c5ef-d883-48e1-9c6c-f947bc04ebb1" />

[Ver codigo SQL](./consultas/Consulta_7.sql)

