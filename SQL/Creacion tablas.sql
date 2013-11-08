CREATE TABLE profesor (
id_profesor int primary key identity,
nombre varchar(50), apellido varchar(50),
mail varchar(50), contraseña varchar(50));

CREATE TABLE alumno (
id_alumno int primary key identity,
nombre varchar(50), apellido varchar(50),
mail varchar(50), contraseña varchar(50));

CREATE TABLE curso (
id_curso int primary key identity,
nombre varchar(50),
fecha_inicio datetime,
fecha_fin datetime,
id_profesor int, foreign key (id_profesor) references profesor(id_profesor));

CREATE TABLE cursada (
id_alumno int, 
foreign key (id_alumno) references alumno(id_alumno),
id_curso int 
foreign key (id_curso) references curso(id_curso),
primary key(id_alumno,id_curso) );

CREATE TABLE examen (
id_examen int primary key identity,
nombre varchar(50),
descripcion varchar(50),
porc_aprobacion int,
duracion int,
fecha_tope datetime,
id_curso int,
foreign key (id_curso) references curso(id_curso) );

CREATE TABLE pregunta (
id_pregunta int primary key identity,
descripcion varchar(100),
id_examen int,
foreign key (id_examen) references examen(id_examen));

CREATE TABLE respuesta (
id_respuesta int primary key identity,
descripcion varchar(100),
correcta varchar(10),
id_pregunta int,
foreign key (id_pregunta) references pregunta(id_pregunta) );
