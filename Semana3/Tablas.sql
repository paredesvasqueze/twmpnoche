create table alumno
(
idAlumno int identity primary key,
cNombre varchar(50)
)
go
create table curso 
(
idcurso int identity primary key,
cNombre varchar(50)
)
go
create table matricula
(
idmatricula int identity primary key,
idalumno int,
idcurso int,
dFechaRegistro datetime,
foreign key (idalumno) references alumno(idalumno),
foreign key (idcurso) references curso(idcurso)
)