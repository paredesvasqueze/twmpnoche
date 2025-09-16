create or alter PROC sp_InsertarMatricula
@cNombreAlumno VARCHAR(50),
@cNombreCurso VARCHAR(50)
AS
BEGIN
DECLARE @idalumno int
DECLARE @idcurso int

	if exists(select * from alumno where cNombre =@cNombreAlumno)
	begin
	set @idalumno = (select idalumno from alumno 
					where cNombre =@cNombreAlumno )
	end
	else
	begin
	insert into alumno (cnombre ) values (@cNombreAlumno)
	set @idalumno = @@IDENTITY
	end

	if exists(select * from curso where cNombre =@cNombreCurso)
	begin
	set @idcurso = (select cNombre from curso 
					where cNombre =@cNombreCurso )
	end
	else
	begin
	insert into curso (cnombre ) values (@cNombrecurso)
	set @idcurso = @@IDENTITY
	end

	-- curso
	insert into matricula
	(idalumno , idcurso , dFechaRegistro) values (@idalumno, @idcurso, getdate())

END


