show databases;
create database Academias;
use Academias;
show databases;
select*from academias;
create table academias(
	id int primary key auto_increment not null,
    nombre varchar(100) not null,
    apellido varchar(100)not null,
    telefono varchar(45)not null,
    web text
);
select*from alumnos;
create table profesores(
	id int primary key auto_increment not null,
    nombre varchar(100)not null,
    apellido varchar(100)not null,
    email varchar(50)not null,
    telefono varchar(45)not null
);
create table alumnos(
id int primary key auto_increment not null,
nombre varchar(45) not null,
apellido varchar(45)not null,
email varchar(45) not null,
telefono varchar(45)not null,
academia_id int 
);
create table cursos(
id int primary key auto_increment not null,
nombre varchar(100) not null,
descripcion text not null,
profesor_id int not null
);
create table alumnoxcurso(
id int primary key auto_increment not null,
alumno_id int not null,
curso_id int not null
);
create table notas(
id int not null primary key auto_increment,
calificacion float,
alumno_id int,
curso_id int
);

-- CAMBIAR EL NOMBRE DE MI COLUMNA--
ALTER TABLE login RENAME COLUMN DNI to dni;
-- AGREGAR COLUMNAS-- 
ALTER TABLE usuarios ADD COLUMN telefono varchar(45) null;
-- ELIMINAR COLUMNAS --
ALTER TABLE usuarios drop telefono;
-- MODIFICAR COLUMNAS --
ALTER TABLE usuarios ALTER COLUMN telefono varchar(35) null;
-- MOVER LA POSICIONES DE TUS COLUMNAS--
alter TABLE login MODIFY COLUMN NICK varchar(50) AFTER ID ;
-- ACTUZALIZAR MIS DATOS (UPDATE)--
UPDATE Peridnombrenombresona SET Telefono='202030' WHERE id ='4';
-- ELIMINAR TODA UNA FILA --
DELETE from login where id='4';
-- BUSCAR DATOS --
select*from login where NOMBRE='FREDY';
-- BUSCAR DATOS MAS ESPECIFICOS CON LA LETRA A--
SELECT*FROM LOGIN WHERE NICK LIKE 'A%';

-- CONSULTAR DOS TABLAS --
select p.*,
CONCAT(u.nombre, ' ', u.apellido)as 'PROPIETARIO'
FROM publicacion p,usuarios u
WHERE p.autor_id = u.id;


select*from academias;
insert into academias (nombre,telefono,web,dirreccion)values
	('ACADEMIA GRUPO CACERES','985320874','grupocaceresvirtual.com','Jr. Moises Cavero 348 05001 Ayacucho, Perú');
insert into profesores(nombre,email,telefono,academia_id)values
			('POLLITO','pollito@gmail.com','966325412','1'),
            ('APAICO','apaico@gmail.com','995854126','1'),
            ('ARAUJO','araujo@gmail.com','998471200','1'),
            ('NELSON','nelson@gmail.com','966127451','1'),
            ('CHININ','chinin@gmail.com','966320148','1'),
            ('MIRIAM','miriam@gmail.com','966002741','1'),
            ('JEFERSON','jeferson@gmail.com','998254102','1'),
            ('CHUCKY','chucky@gmail.com','966320874','1'),
            ('DANTE','dante@gmail.com','965022387','1'),
            ('AMIGO','amigo@gmail.com','966302125','1');
select*from academias;
            
insert into alumnos(nombre,apellido,email,telefono,academia_id)values
("Maxine","Cooper","luctus.et@icloud.edu","(342) 447-8681","1"),
  ("Keiko","Price","nullam.suscipit.est@hotmail.org","1-222-271-7111","1"),
  ("Medge","Odonnell","nullam.vitae@outlook.couk","(977) 581-0886","1"),
  ("Tad","Pugh","turpis@outlook.couk","1-477-236-1826","1"),
  ("Chaney","Wilkerson","sit.amet.ante@google.couk","1-987-366-2485","1"),
  ("Mary","Hayes","dapibus.rutrum@google.net","(638) 276-9974","1"),
  ("Josiah","Matthews","sapien.imperdiet.ornare@hotmail.com","1-853-667-2411","1"),
  ("Marny","Baxter","ipsum.suspendisse@icloud.ca","1-154-573-4456","1"),
  ("Regina","Suarez","odio.auctor@protonmail.couk","(558) 277-4668","1"),
  ("Hayes","Sweet","neque.morbi@yahoo.ca","(524) 224-3581","1");
  select*from profesores;
  insert into cursos(nombre,profesor_id)values
		('LENGUAJE','1'),
		('ALGEBRA','2'),
		('RAZONAMIENTO VERBAL','3'),
		('HISTORIA PERU','4'),
		('QUIMICA','5'),
		('ANATOMIA','6'),
		('BIOLOGIA','7'),
        ('CIVICA','8'),
        ('ECONOMIA','9'),
		('ARITMETICA','10');
select*from cursos;
select*from alumnoxcurso;
insert into alumnoxcurso (alumno_id,curso_id)values('6','3');

select*from alumnos;
insert into notas(calificacion,alumno_id,curso_id)values('17','6','3');
use academias;
select*from notas;
select*from alumnos;

select n.*,
CONCAT(a.nombre, ' ', a.apellido)as 'PROPIETARIO'
FROM notas n,alumno a
WHERE n.curso_id = a.id;

use academias;
show databases;




