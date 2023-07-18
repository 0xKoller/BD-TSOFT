USE C3;

CREATE TABLE Alumnos
(
    DNI INT  NOT NULL,
    Nombre VARCHAR(50)  NOT NULL,
    Apellido VARCHAR(50)  NOT NULL,
    Legajo INT PRIMARY KEY  NOT NULL,
    Direccion VARCHAR(100),
    FechaDeNacimiento DATE,
    TelefonoResponsables VARCHAR(20)
);
go
CREATE TABLE Cursos
(
    IdentificadorCurso INT PRIMARY KEY  NOT NULL,
    NombreCurso VARCHAR(50)  NOT NULL,
    LegajoProfesor INT  NOT NULL
);
go
CREATE TABLE Inscripciones
(
    LegajoAlumno INT  NOT NULL,
    IdentificadorCurso INT  NOT NULL,
    PRIMARY KEY (LegajoAlumno, IdentificadorCurso),
    FOREIGN KEY (LegajoAlumno) REFERENCES Alumnos(Legajo),
    FOREIGN KEY (IdentificadorCurso) REFERENCES Cursos(IdentificadorCurso)
);
go

CREATE TABLE Profesores
(
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Legajo INT NOT NULL PRIMARY KEY,
    Direccion VARCHAR(100),
    DNI INT NOT NULL,
    Telefono VARCHAR(20)
);
go


-- Cargar alumnos
INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables) 
VALUES ('Juan', 'Pérez', 1234567, 12345678, 'Av. Corrientes 1234, Buenos Aires, Argentina', '2001-03-21', '+54 11 1234-5678');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables) 
VALUES ('María', 'González', 2345678, 23456789, 'Av. Santa Fe 5678, Buenos Aires, Argentina', '2000-06-15', '+54 11 2345-6789');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Carlos', 'Rodríguez', 3456789, 34567890, 'Calle Falsa 123, Rosario, Argentina', '2002-09-05', '+54 341 5678-900');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Laura', 'Martínez', 4567890, 45678901, 'Av. Libertador 456, Córdoba, Argentina', '2003-12-18', '+54 351 8901-234');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Roberto', 'Gómez', 5678901, 56789012, 'Calle 9 de Julio 789, Mendoza, Argentina', '2000-01-30', '+54 261 0123-456');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Florencia', 'López', 6789012, 67890123, 'Av. Pellegrini 890, Rosario, Argentina', '2004-04-25', '+54 341 3456-789');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Miguel', 'Díaz', 7890123, 78901234, 'Calle San Martín 901, Salta, Argentina', '2005-08-16', '+54 387 7890-123');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Lucía', 'García', 8901234, 89012345, 'Av. Sarmiento 234, Tucumán, Argentina', '2001-12-10', '+54 381 0123-456');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Ricardo', 'Fernández', 9012345, 90123456, 'Calle Rivadavia 567, Buenos Aires, Argentina', '2002-05-20', '+54 11 3456-7890');

INSERT INTO Alumnos (Nombre, Apellido, DNI, Legajo, Direccion, FechaDeNacimiento, TelefonoResponsables)
VALUES ('Carmen', 'Morales', 123456, 12345678, 'Av. Belgrano 890, La Plata, Argentina', '2003-08-30', '+54 221 7890-123');
go


-- Cargar profesores
INSERT INTO Profesores (Nombre, Apellido, Legajo, Direccion, DNI, Telefono)
VALUES ('Pedro', 'González', 87654321, 'Av. Rivadavia 1234, Buenos Aires, Argentina', 2345678, '+54 11 1234-5678');

INSERT INTO Profesores (Nombre, Apellido, Legajo, Direccion, DNI, Telefono)
VALUES ('Luisa', 'Martínez', 98765432, 'Calle 9 de Julio 567, Córdoba, Argentina', 3456789, '+54 351 2345-6789');

INSERT INTO Profesores (Nombre, Apellido, Legajo, Direccion, DNI, Telefono)
VALUES ('Roberto', 'Rodríguez', 12345678, 'Av. Sarmiento 890, Mendoza, Argentina', 4567890, '+54 261 3456-7890');

INSERT INTO Profesores (Nombre, Apellido, Legajo, Direccion, DNI, Telefono)
VALUES ('Clara', 'Fernández', 23456789, 'Calle San Martín 901, Rosario, Argentina', 5678901, '+54 341 5678-9012');

INSERT INTO Profesores (Nombre, Apellido, Legajo, Direccion, DNI, Telefono)
VALUES ('Juan', 'Pérez', 34567890, 'Av. Pellegrini 234, Buenos Aires, Argentina', 6789012, '+54 11 2345-6789');
go

-- Cargar cursos
INSERT INTO Cursos (IdentificadorCurso, NombreCurso, LegajoProfesor)
VALUES (1234, 'Matemáticas', 87654321);

INSERT INTO Cursos (IdentificadorCurso, NombreCurso, LegajoProfesor)
VALUES (2345, 'Lengua', 98765432);
go



-- Inscribir a más alumnos en el curso de Matemáticas (IdentificadorCurso = 1234)
INSERT INTO Inscripciones (LegajoAlumno, IdentificadorCurso)
VALUES (23456789, 1234), 
       (34567890, 1234),
       (45678901, 1234),
       (56789012, 1234),
       (67890123, 1234);

-- Inscribir a más alumnos en el curso de Lengua (IdentificadorCurso = 2345)
INSERT INTO Inscripciones (LegajoAlumno, IdentificadorCurso)
VALUES (78901234, 2345),
       (89012345, 2345),
       (90123456, 2345),
       (12345678, 2345),
       (23456789, 2345);