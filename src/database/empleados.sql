create database empleos;

USE empleos;
-- tabla para update para los usuarios
drop table usuario;

create table Usuario(
idUsuario int not null AUTO_INCREMENT,
nombre varchar(50) not null,
apellidoPaterno varchar(30) not null,
apellidoMaterno varchar(30) not null,
edad varchar(2) not null,
correo varchar(50) not null,
contraseña varchar(30) not null,
telefono varchar(12) not null,
primary key(idUsuario)
);


-- tabla para  update de vancates  
drop table vacante;  
create table vacante(
idVacante int not null auto_increment,
empresa varchar(100) not null,
detalle text not null,
categoria varchar(25)not null,
sueldo varchar(50) not null,
latDecimal varchar(50) not null,
lonDecimal varchar(50) not null,
primary key (idVacante)
);



-- 	Prueba para mostrar las tablas

select * from usuario;
select * from vacante;

-- ingresar datos de prueba
alter table usuario auto_increment = 1;
alter table vacante auto_increment = 1;

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Zapaterias Destroyer','Se solicita vendedor','Ventas','$2500 semanal','21.103068099999998','-101.63194349999999');

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Paleteria La Michuacana del Coesillo','Se solicita Desarrollador web con 10 años, menor de 22 años, 
recien egresado.','Informatica','$2500 semanal','21.1269834','-101.66679529999999');
									
insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Asian Buffet','Se solicita Chef para comida china.','Alimentos y bebidas',
'$3000 semanal','21.1463699','-101.64915689999998');

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Ferreteria','Se solicita vendedor','Ventas','$1000 semanal','21.1198989','-101.65219539999998');

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Distribuidora Sabritas','Se solicita almacenista con/sin experiencia',
'Almacen','$1200 semanal','21.1036207','-101.62684960000001');

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
 values('Personal de Limpieza','Se solicita personal de limpieza con/sin experiencia para labores de intendencia',
 'Mantenimiento','$1200 semanales','21.11344777312969','-101.64692401885986');

insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
values('Barman','Se busca Barman con minimo 1 año de experiencia preparando bebidas alcoholicas, mayor de 25 años',
'Alimentos y Bebidas','$2000 semanales + propinas','21.10051610021016','-101.63589477539062');


insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
 values('Diseñador Web','Se busca personal para creacion y gestion de pagina web de un importante bar',
 'Computacion e Informatica','$8000 Quincenal','21.1224027','-101.67753879999998');


insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
 values('Maestro de Fisica','Se solicita maestro con conocimientos basicos en fisica tradicional',
 'Docencia','$3000 semanales','21.0912013','-101.6484039');


insert into vacante(empresa,detalle,categoria,sueldo, latDecimal,lonDecimal)
 values('Elemento de Seguridad','Se solicitan elementos de seguridad, ambos sexos con o sin experiencia en el ramo',
 'Seguridad','$2250 semanales','21.1134127','-101.65440030000002');



-- metodo get user

insert into usuario(nombre, apellidoPaterno, apellidoMaterno, edad, correo, contraseña, telefono)
values('Daniel','Estrada','Romero','20','tostadoskate@gmail.com','123456','4772064578');

select * from vacante;