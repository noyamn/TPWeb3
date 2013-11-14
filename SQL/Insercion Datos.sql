INSERT INTO	alumno values
('luciano','soro','luciano@hotmail.com','1234','1'),
('leandro','ramos','leandro@hotmail.com','1234','1'),
('mariano','noya','mariano@hotmail.com','1234','1'),
('pablo','haylan','pablo@hotmail.com','1234','1'),
('lucas','vega','lucas@hotmail.com','1234','1'),
('alexis','sanches','alexis@hotmail.com','1234','1');

INSERT INTO profesor values
('carlos','sanchez','carlos@hotmail.com','1234'),
('hugo','gomez','hugo@hotmail.com','1234');

INSERT INTO curso values
('Programacion Web','1/1/2014','12/12/2014',1),
('Taller','2/2/2014','13/10/2014',1),
('HTML5','1/1/2014','1/2/2014',2),
('CSS','1/1/2014','1/2/2014',2);

INSERT INTO cursada values
(1,1),(1,2),(1,3),(1,4),
(2,1),(2,2),(2,3),(2,4),
(3,1),(3,2),(3,3),(3,4),
(4,1),(4,2),
(5,3),(4,4);

INSERT INTO examen values
('Primer parcial','parcial de PW3',70,120,'15/1/2014',1),
('Repaso','repaso taller',70,120,'15/1/2014',2),
('Primer parcial','parcial de HTML5',70,120,'15/1/2014',3);

INSERT INTO pregunta values 
('primer pregunta',1),
('segunda pregunta',1),
('primer pregunta',2),
('primer pregunta',3);

INSERT INTO respuesta values
('a','on',1),
('b','',1),
('c','',1),
('a','on',2),
('b','',2),
('c','',2),
('a','on',3),
('b','',3),
('c','',3);

INSERT INTO examen_realizado values 
(1,1,'aprobado',70),
(2,1,'desaprobado',50),
(3,1,'aprobado',70),
(1,2,'aprobado',70),
(2,3,'aprobado',70),
(3,3,'aprobado',70);



