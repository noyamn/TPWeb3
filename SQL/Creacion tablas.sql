
USE PW3;
CREATE TABLE profesor (
id_profesor int primary key identity,
nombre varchar(50), apellido varchar(50),
mail varchar(50), contraseņa varchar(50));

GO
CREATE TABLE alumno (
id_alumno int primary key identity,
nombre varchar(50), apellido varchar(50),
mail varchar(50), contraseņa varchar(50),
dni varchar(50));
GO
CREATE TABLE curso (
id_curso int primary key identity,
nombre varchar(50),
fecha_inicio datetime,
fecha_fin datetime,
id_profesor int, foreign key (id_profesor) references profesor(id_profesor));
GO
CREATE TABLE cursada (
id_alumno int, 
foreign key (id_alumno) references alumno(id_alumno),
id_curso int 
foreign key (id_curso) references curso(id_curso),
primary key(id_alumno,id_curso) );
GO
CREATE TABLE examen (
id_examen int primary key identity,
nombre varchar(50),
descripcion varchar(50),
porc_aprobacion int,
duracion int,
fecha_tope datetime,
id_curso int,
foreign key (id_curso) references curso(id_curso) );
GO
CREATE TABLE pregunta (
id_pregunta int primary key identity,
descripcion varchar(200),
id_examen int,
foreign key (id_examen) references examen(id_examen));
GO
CREATE TABLE respuesta (
id_respuesta int primary key identity,
descripcion varchar(350),
correcta varchar(10),
id_pregunta int,
foreign key (id_pregunta) references pregunta(id_pregunta) );
GO
CREATE TABLE examen_realizado (
id_alumno int,
id_examen int,
estado varchar(15),
resultado int,
foreign key (id_alumno) references alumno(id_alumno),
foreign key (id_examen) references examen(id_examen),
primary key(id_alumno,id_examen) );
