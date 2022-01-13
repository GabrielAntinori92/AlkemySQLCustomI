/*
Cree una tabla llamada CURSO con los atributos:
Código de curso (clave primaria, entero no nulo)
Nombre (varchar no nulo)
Descripcion (varcha)
Turno (varchar no nulo)
*/
create Table CURSO(
	codigo integer PRIMARY KEY not NULL,
  	nombre varchar not NULL,
  	descripcion varchar NOT NULL,
  	turno varchar not NULL
);

/*Agregue un campo “cupo” de tipo numérico*/
ALTER TABLE CURSO
	add COLUMN cupo integer;
    
/*Inserte datos en la tabla:
(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
(102, “Matemática Discreta”,””,”Tarde”,30)
*/
insert into CURSO(codigo,nombre,descripcion,turno,cupo) 
	values(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35),
    	  (102, 'Matemática Discreta','','Tarde',30);
          
/*Intente ingresar un registro con el nombre nulo y verifique que no funciona.*/
insert into CURSO(codigo,nombre,descripcion,turno,cupo)
	VALUES(103,NULL,'Error por tener numbre NULL','Mañana',36);
    
/*Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.*/
insert into CURSO(codigo,nombre,descripcion,turno,cupo)
	VALUES(102,'Logica','Logica computacional','Mañana',37);
    
/*Actualice, para todos los cursos, el cupo en 25.*/
Update CURSO
	Set cupo = 25;

/*Elimine el curso Algoritmos.*/
Delete from CURSO
	Where nombre like 'Algoritmos';