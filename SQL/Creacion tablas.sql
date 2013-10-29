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