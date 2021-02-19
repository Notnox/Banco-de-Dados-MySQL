CREATE DATABASE IF NOT EXISTS `escola`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS professores (
	id INT,
    matricula INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS estudantes (
	id INT,
    matricula INT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    endereço VARCHAR(500),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nasicmento DATE,
    nacionalidade VARCHAR(50),
    media_geral FLOAT
);

CREATE TABLE IF NOT EXISTS cursos (
	id INT,
    codigo INT,
    nome VARCHAR(100),
    EAD BOOLEAN,
    presencial BOOLEAN,
    professor_responsável VARCHAR(100),
    número_maximo_alunos_simultâneo INT
);