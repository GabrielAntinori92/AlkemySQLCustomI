/*Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente*/
select nombre, apellido, fecha_nacimiento
	from PROFESOR
	order by fecha_nacimiento ASC;

/*Todos los profesores cuyo salario sea mayor o igual a 65000.*/
Select *
	from PROFESOR
    where salario >= 65000;
    
/*Todos los profesores que nacieron en la década del 80.*/
select *
	from PROFESOR
    where fecha_nacimiento BETWEEN '1980' and '1989';

/*5 registros*/
Select *
	from PROFESOR
    limit 5;

/*Todos los profesores cuyo apellido inicie con la letra “P”*/
Select *
	from PROFESOR
    where apellido like 'P%';

/*Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000*/
select *
	from PROFESOR
    where (fecha_nacimiento BETWEEN '1980' and '1989') and (salario > 80000);