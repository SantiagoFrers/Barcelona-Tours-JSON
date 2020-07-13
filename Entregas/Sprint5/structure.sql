/* 1º EJECUTAR CREACION DE BASE DE DATOS */
create database btours_db;

/*2 SELECCIONAR LA BASE bstours_db*/

/* 3º EJECUTAR CREACION DE TABLAS EN ORDEN*/
create table users (
id INT(100) primary key auto_increment,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
contrasena VARCHAR(100) NOT NULL,
user_type VARCHAR(10),
avatar VARCHAR(100) NOT NULL
);

create table tours_type (
id INT(100) primary key auto_increment,
tipo VARCHAR(100) NOT NULL
);

create table tours (
id INT(100) primary key auto_increment,
nombre VARCHAR(100) NOT NULL,
precio DECIMAL(6, 2) NOT NULL,
tour_tipo INT(10) NOT NULL,
vista_home VARCHAR(100) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
descripcion_corta VARCHAR(2000) NOT NULL,
image VARCHAR(100) NOT NULL,
image_grande VARCHAR(100) NOT NULL,
FOREIGN KEY (tour_tipo) REFERENCES tours_type(id)
);

create table carrito (
id INT(100) primary key auto_increment,
user_id INT(100) NOT NULL,
tour_id INT(100) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (tour_id) REFERENCES tours(id)
);