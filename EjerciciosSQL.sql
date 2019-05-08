# 1
CREATE DATABASE vuelos CHARACTER SET latin1 COLLATE latin1_spanish_ci;

use vuelos;

#3
CREATE TABLE clientes (
id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(50),
apellidos VARCHAR(50),
direccion VARCHAR(50)
);

#4
CREATE TABLE viajes (
id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
titulo VARCHAR(50),
description VARCHAR(150),
codigoCliente INTEGER,
FOREIGN KEY(codigoCliente) REFERENCES clientes(id)
);


#2
CREATE DATABASE viajes;
use viajes;
RENAME TABLE vuelos.clientes TO viajes.clientes, vuelos.viajes TO viajes.viajes;
DROP DATABASE vuelos;



