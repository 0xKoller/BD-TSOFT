SELECT A.Legajo AS LegajoAlumno, A.Nombre, A.Apellido
FROM Inscripciones I
JOIN Alumnos A ON I.LegajoAlumno = A.Legajo
JOIN Cursos C ON I.IdentificadorCurso = C.IdentificadorCurso
WHERE C.NombreCurso = 'Lengua';
go

SELECT C.NombreCurso, COUNT(I.LegajoAlumno) AS NumeroDeInscriptos
FROM Inscripciones I
JOIN Cursos C ON I.IdentificadorCurso = C.IdentificadorCurso
GROUP BY C.NombreCurso;
go

SELECT * FROM Profesores;
go