create database web2;

use web2;

create table tb_usuario(
id_usuario int primary key auto_increment,
login_usuario varchar(50),
senha_usuario varchar(50),
nome_usuario varchar(100)
);

insert into tb_usuario(login_usuario, senha_usuario, nome_usuario) values 
("braian", "braian123", "Braian Viana"),
("daniel", "daniel123", "Daniel Delgado"),
("gustavo", "gustavo123", "Gustavo Lara"),
("matheus", "matheus123", "Matheus Fernandes"),
("rafael", "rafael123", "Rafael Damiani");

select * from tb_usuario;

