


CREATE DATABASE Examen3;

USE Examen3;


CREATE TABLE Provincia (
    Id_prov INT IDENTITY(1,1) PRIMARY KEY, -- Auto incremental
    Nombre NVARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE oSexual (
    Id_sexual INT IDENTITY(1,1) PRIMARY KEY, -- Auto incremental
    Descripción NVARCHAR(255) NOT NULL UNIQUE
);

 
CREATE TABLE aPolitica (
    Id_poli INT IDENTITY(1,1) PRIMARY KEY, -- Auto incremental
    Nombre NVARCHAR(255) NOT NULL
);

 
CREATE TABLE nAcademica (
    Id_acad INT IDENTITY(1,1) PRIMARY KEY, -- Auto incremental
    Descripción NVARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE Persona (
    Id_perso INT IDENTITY(1,1) PRIMARY KEY, 
	Cedula INT NOT NULL,
    Nombre NVARCHAR(255) NOT NULL,
    Apell1 NVARCHAR(255) NOT NULL,
    Apell2 NVARCHAR(255) NOT NULL,
    Sexo CHAR(1) NOT NULL CHECK (Sexo IN ('F', 'M', 'O')),
    eCivil CHAR(1) NOT NULL CHECK (eCivil IN ('S', 'C', 'D', 'V', 'U')),
    Nacido DATE NOT NULL,
    Id_prov INT NOT NULL,
    Id_sexual INT NOT NULL,
    Id_poli INT NOT NULL,
    Id_acad INT NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL CHECK (Salario >= 0),
    FOREIGN KEY (Id_prov) REFERENCES Provincia(Id_prov),
    FOREIGN KEY (Id_sexual) REFERENCES oSexual(Id_sexual),
    FOREIGN KEY (Id_poli) REFERENCES aPolitica(Id_poli),
    FOREIGN KEY (Id_acad) REFERENCES nAcademica(Id_acad)
);