create or alter proc sp_InsertarAlumno
@cNombre varchar(50)
as
begin
insert into alumno
(cnombre)
values
(@cNombre)
end
go
/*
sp_InsertarAlumno 'Percy'
select * from alumno
*/
