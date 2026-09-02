
CREATE DATABASE facultad;
USE facultad;


CREATE TABLE ciudad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE titulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    institucion VARCHAR(50) NOT NULL
);

CREATE TABLE materia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    anio INT NOT NULL,
    plan_estudios INT NOT NULL
);

CREATE TABLE persona (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni INT NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE profesor (
    id INT PRIMARY KEY, 
    cuil BIGINT NOT NULL UNIQUE,
    departamento_id INT NOT NULL,
    ciudad_nacimiento_id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES persona(id),
    FOREIGN KEY (departamento_id) REFERENCES departamento(id),
    FOREIGN KEY (ciudad_nacimiento_id) REFERENCES ciudad(id)
);

CREATE TABLE alumno (
    id INT PRIMARY KEY,
    ciudad_nacimiento_id INT NOT NULL,
    ciudad_residencia_id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES persona(id),
    FOREIGN KEY (ciudad_nacimiento_id) REFERENCES ciudad(id),
    FOREIGN KEY (ciudad_residencia_id) REFERENCES ciudad(id)
);


CREATE TABLE profesor_titulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    profesor_id INT NOT NULL,
    titulo_id INT NOT NULL,
    FOREIGN KEY (profesor_id) REFERENCES profesor(id),
    FOREIGN KEY (titulo_id) REFERENCES titulo(id)
);

CREATE TABLE profesor_materia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    profesor_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY (profesor_id) REFERENCES profesor(id),
    FOREIGN KEY (materia_id) REFERENCES materia(id)
);

CREATE TABLE inscripcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumno_id INT NOT NULL,
    materia_id INT NOT NULL,
    nota INT,
    anio INT NOT NULL,
    FOREIGN KEY (alumno_id) REFERENCES alumno(id),
    FOREIGN KEY (materia_id) REFERENCES materia(id)
);
