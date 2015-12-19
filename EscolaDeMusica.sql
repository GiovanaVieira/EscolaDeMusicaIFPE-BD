drop database EscolaDeMusica;

create database EscolaDeMusica;

create table orquestra (
codorquestra int auto_increment,
codsinfonia int,
nome varchar(40),
cidade varchar(40),
pais varchar(30),
datadecriacao date,
PRIMARY KEY(codorquestra),
FOREIGN KEY(codsinfonia) references sinfonia(codsinfonia)
);

create table sinfonia (
codsinfonia int auto_increment,
nome varchar(40),
compositor varchar(40),
datadecriacao date,
PRIMARY KEY(codsinfonia)
);

create table musicos (
codmusico int auto_increment,
codfuncao int,
codorquestra int,
nome varchar(40),
identidade varchar(10),
nacionalidade varchar (30),
datadenascimento date,
PRIMARY KEY(codmusico),
FOREIGN KEY(codfuncao)
references funcoes (codfuncao),
FOREIGN KEY(codorquestra)
references orquestra (codorquestra)
);

drop table funcoes;
create table funcoes (
codfuncao int auto_increment,
codinstrumento int, 
nome varchar(30),
PRIMARY KEY(codfuncao),
FOREIGN KEY(codinstrumento) references instrumentos(codinstrumento)
);

create table instrumentos (
codinstrumento int auto_increment,
nome varchar(40),
PRIMARY KEY(codinstrumento)
); 




