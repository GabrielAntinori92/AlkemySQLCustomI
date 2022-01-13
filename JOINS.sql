DROP table if exists CURSO;
DROP table if exists PROFESOR;

create TABLE PROFESOR(
	id Integer PRIMARY KEY AUTOINCREMENT,
    nombre varchar not NULL,
  	apellido varchar not NULL,
  	fecha_nacimiento varchar not NULL,
  	salario integer not NULL
);

insert into PROFESOR(nombre,apellido,fecha_nacimiento,salario) 
	VALUES('Juan','Pérez', '1990-06-06',55000),
    	  ('María Emilia', 'Paz', '1984-07-15', 72000),
          ('Martín', 'Correa', '1987-12-07', 63000),
          ('Lucía', 'Díaz', '1991-02-24', 45000),
          ('Raúl', 'Martínez', '1980-10-15', 85000),
          ('Mabel', 'Ríos', '1982-06-12', 83000);

create Table CURSO(
	codigo integer PRIMARY KEY not NULL,
  	nombre varchar not NULL,
  	descripcion varchar NOT NULL,
  	turno varchar not NULL,
  	cupo integer,
  	PROFESOR_id integer
);

insert into CURSO(codigo,nombre,descripcion,turno,cupo,PROFESOR_id) 
	values(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35,1),
    	  (102, 'Matemática Discreta','','Tarde',30,2),
          (103, 'Programación Java','POO en Java','Noche',35,4),
          (104, 'Programación Web','','Noche',35,5),
          (105, 'Programación C#', '.NET, Visual Studio 2019','Noche',30,6);
          
select PROFESOR.apellido, CURSO.nombre, CURSO.turno
	from PROFESOR
    LEFT JOIN CURSO
    ON PROFESOR.id = CURSO.PROFESOR_id;