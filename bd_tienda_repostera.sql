CREATE DATABASE bd_tienda_repostera;

CREATE TABLE tienda_repostera(
id_tienda_repostera INT NOT NULL AUTO_INCREMENT,
codigo INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
direccion VARCHAR(40) NOT NULL,
pag_web VARCHAR(40),
telefono INT,
logo_tienda VARCHAR(40),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE proveedores(
id_proveedor INT NOT NULL AUTO_INCREMENT,
id_tienda_repostera INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
direccion VARCHAR(40),
telefono INT,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_proveedor),
FOREIGN KEY(id_tienda_repostera) REFERENCES tienda_repostera(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE ingredientes(
id_ingrediente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(40) NOT NULL,
descrip_ingrediente VARCHAR(50) NOT NULL,
precio FLOAT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_ingrediente)
)ENGINE=INNODB;

CREATE TABLE proveedor_ingrediente(
id_proveedor_ingrediente INT NOT NULL AUTO_INCREMENT,
id_proveedor INT NOT NULL,
id_ingrediente INT NOT NULL,
precio_ingrediente INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_proveedor_ingrediente),
FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor),
FOREIGN KEY(id_ingrediente) REFERENCES ingredientes(id_ingrediente)
)ENGINE=INNODB;

CREATE TABLE compra_ingredientes(
id_compra_ingrediente INT NOT NULL AUTO_INCREMENT,
id_tienda_repostera INT NOT NULL,
fec_compra DATE NOT NULL,
mont_compra INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_compra_ingrediente),
FOREIGN KEY(id_tienda_repostera) REFERENCES tienda_repostera(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE det_comp_ingre(
id_detalle_compra_ingrediente INT NOT NULL AUTO_INCREMENT,
id_proveedor_ingrediente INT NOT NULL,
id_compra_ingrediente INT NOT NULL,
cantidad INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_detalle_compra_ingrediente),
FOREIGN KEY(id_proveedor_ingrediente) REFERENCES proveedor_ingrediente(id_proveedor_ingrediente),
FOREIGN KEY(id_compra_ingrediente) REFERENCES compra_ingredientes(id_compra_ingrediente)
)ENGINE=INNODB;

CREATE TABLE productos(
id_producto INT NOT NULL AUTO_INCREMENT,
id_tienda_repostera INT NOT NULL,
codigo INT NOT NULL,
nombre VARCHAR(40) NOT  NULL,
precio INT NOT NULL,
descrip_producto VARCHAR(160) NOT NULL,
foto VARCHAR(40),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_producto),
FOREIGN KEY(id_tienda_repostera) REFERENCES tienda_repostera(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE productos_precios(
id_producto_precio INT NOT NULL AUTO_INCREMENT,
id_producto INT NOT NULL,
precio INT NOT NULL,
cant_porsiones INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_producto_precio),
FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
)ENGINE=INNODB;

CREATE TABLE clientes(
id_cliente INT NOT NULL AUTO_INCREMENT,
id_tienda_repostera INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
ap VARCHAR(20),
am VARCHAR(20),
ci VARCHAR(20) NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono INT,
genero VARCHAR(20),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_cliente),
FOREIGN KEY(id_tienda_repostera) REFERENCES tienda_repostera(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE pedidos(
id_pedido INT NOT NULL AUTO_INCREMENT,
id_cliente INT NOT NULL,
mont_pedido INT NOT NULL,
entrega VARCHAR(5) NOT NULL,
fec_pedido DATE NOT NULL,
fec_entrega DATE NOT NULL,
mont_total INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_pedido),
FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=INNODB;

CREATE TABLE detalle_pedidos(
id_detalle_pedido INT NOT NULL AUTO_INCREMENT,
id_pedido INT NOT NULL,
id_producto_precio INT NOT NULL,
cantidad INT NOT NULL,
descrip_detalle VARCHAR(160) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_detalle_pedido),
FOREIGN KEY(id_pedido) REFERENCES pedidos(id_pedido),
FOREIGN KEY(id_producto_precio) REFERENCES productos_precios(id_producto_precio)
)ENGINE=INNODB;

/*Utilizando la base de datos de sus proyectos insertar 10 registros por tabla excepto en la tabla principal*/

INSERT INTO tienda_repostera VALUES(1,'1426','B&M','B/La Torre Av.Canada','REPOSTERIAB&M','75118130','logo_tienda.jpg',now(),now(),1,1);

INSERT INTO proveedores VALUES(1,1,'Esther Castro','Av. Domingo paz y Gral Trigo','69137637',now(),now(),1,1);	
INSERT INTO proveedores VALUES(2,1,'Juan Gutierrez','Av. Domingo paz y Sucre','63362733',now(),now(),1,0);	
INSERT INTO proveedores VALUES(3,1,'Nicol Perez','Froilan Tejerina y Enrique Pantoja','71434154',now(),now(),1,1);		
INSERT INTO proveedores VALUES(4,1,'Ana Paredes','Avaroa y Gral Trigo','79102220',now(),now(),1,1);	
INSERT INTO proveedores VALUES(5,1,'Jose Perez','Froilan Tejerina','793617639',now(),now(),1,0);
INSERT INTO proveedores VALUES(6,1,'Nicolas Martinez','Av. Domingo paz y Gral Trigo','68764522',now(),now(),1,1);
INSERT INTO proveedores VALUES(7,1,'Paola Martinez','Av Membrillos calle Mejillones','69137637',now(),now(),1,1);
INSERT INTO proveedores VALUES(8,1,'Pablo Guerrero','Froilan Tejerina y Enrique Pantoja','61223156',now(),now(),1,0);
INSERT INTO proveedores VALUES(9,1,'Lorena Gorjes','Av. Domingo paz y Gral Trigo','71237855',now(),now(),1,1);
INSERT INTO proveedores VALUES(10,1,'Eleonor Gutierrez','Av. Domingo paz y Gral Trigo','62422489',now(),now(),1,0);

INSERT INTO ingredientes VALUES(1,'HARINA','','110',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(2,'CREMA','','25',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(3,'LECHE','','100',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(4,'CAFE','','55',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(5,'HUEVO','','15',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(6,'CHOCOLATE','','8',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(7,'ROYAL','','6',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(8,'MANTECA','','10',now(),now(),1,1);	
INSERT INTO ingredientes VALUES(9,'VAINILLA','','12',now(),now(),1,1);	

INSERT INTO proveedor_ingrediente VALUES(1,1,1,'100',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(2,3,4,'55',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(3,6,5,'15',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(4,7,6,'8',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(5,2,6,'12',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(6,5,8,'10',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(7,9,9,'12',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(8,8,2,'25',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(9,4,3,'100',now(),now(),1,0);
INSERT INTO proveedor_ingrediente VALUES(10,10,7,'6',now(),now(),1,0);

INSERT INTO compra_ingredientes VALUES(1,1,'2020-08-23','45',now(),now(),1,0);
INSERT INTO compra_ingredientes VALUES(2,1,'2020-08-23','45',now(),now(),1,1);
INSERT INTO compra_ingredientes VALUES(3,1,'2020-08-23','45',now(),now(),1,0);
INSERT INTO compra_ingredientes VALUES(4,1,'2020-08-23','45',now(),now(),1,1);
INSERT INTO compra_ingredientes VALUES(5,1,'2020-08-23','45',now(),now(),1,1);
INSERT INTO compra_ingredientes VALUES(6,1,'2020-08-23','45',now(),now(),1,1);
INSERT INTO compra_ingredientes VALUES(7,1,'2020-08-23','45',now(),now(),1,0);
INSERT INTO compra_ingredientes VALUES(8,1,'2020-08-23','45',now(),now(),1,0);
INSERT INTO compra_ingredientes VALUES(9,1,'2020-08-23','45',now(),now(),1,1);
INSERT INTO compra_ingredientes VALUES(10,1,'2020-08-23','45',now(),now(),1,0);

INSERT INTO det_comp_ingre VALUES(1,2,5,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(2,5,1,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(3,6,4,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(4,3,5,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(5,1,7,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(6,6,2,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(7,8,10,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(8,9,3,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(9,10,9,'1',now(),now(),1,1);
INSERT INTO det_comp_ingre VALUES(10,4,6,'1',now(),now(),1,1);

INSERT INTO productos VALUES(1,1,'323','Torta de Leche','35','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);	
INSERT INTO productos VALUES(2,1,'545','Torta de Chocolate','60','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);
INSERT INTO productos VALUES(3,1,'877','Torta 3 Leches','120','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);		
INSERT INTO productos VALUES(4,1,'767','Torta Helada','40','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);		
INSERT INTO productos VALUES(5,1,'465','Torta Haflanada','25','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,0);		
INSERT INTO productos VALUES(6,1,'745','Pay de limon','35','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,0);		
INSERT INTO productos VALUES(7,1,'986','Postre Primaveral','20','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);
INSERT INTO productos VALUES(8,1,'897','Torta al Desnudo','40','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,0);		
INSERT INTO productos VALUES(9,1,'653','Pay de Manzana','35','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,0);		
INSERT INTO productos VALUES(10,1,'123','Budin de Chocolate','10','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño','foto.png',now(),now(),1,1);	

INSERT INTO productos_precios VALUES(1,3,'120','80',now(),now(),1,1);
INSERT INTO productos_precios VALUES(2,2,'40','35',now(),now(),1,1);
INSERT INTO productos_precios VALUES(3,5,'30','20',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(4,6,'35','25',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(5,1,'35','25',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(6,10,'25','15',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(7,8,'60','35',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(8,7,'720','30',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(9,4,'70','21',now(),now(),1,1);	
INSERT INTO productos_precios VALUES(10,9,'90','45',now(),now(),1,1);	

INSERT INTO clientes VALUES(1,1,'RAMIRO','DAZA','AGUILAR','8620563','Av. Domingo paz y Gral Trigo','79102220','Masculino',now(),now(),1,1);
INSERT INTO clientes VALUES(2,1,'MAYERLI','CRUZ','BURGOS','10649614','Av. Domingo paz y Gral Trigo','72755958','Femenino',now(),now(),1,1);
INSERT INTO clientes VALUES(3,1,'SERGIO ','SANCHEZ','BURGOS','5049565','Froilan Tejerina y Enrique Pantoja','62861911','Masculino',now(),now(),1,1);
INSERT INTO clientes VALUES(4,1,'MARIA','RENE','ACOSTA','7203936','Av Membrillos calle Mejillones','69137637','Femenino',now(),now(),1,0);
INSERT INTO clientes VALUES(5,1,'KARLA LORENA','CHOQUE','CABEZAS','10677287','Av. Domingo paz y Gral Trigo','64396438','Femenino',now(),now(),1,0);
INSERT INTO clientes VALUES(6,1,'BEATRIZ','IÑIGUEZ','CASTILLO','7190122','Av. Domingo paz y Gral Trigo','75163260','Femenino',now(),now(),1,0);
INSERT INTO clientes VALUES(7,1,'GUIDO','RODRIGUEZ','CASTILLO','10644567','Froilan Tejerina y Enrique Pantoja','73716672','Masculino',now(),now(),1,0);
INSERT INTO clientes VALUES(8,1,'FLAVIO','CHOQUE','CASTRILLO','5787287','Av. Domingo paz y Gral Trigo','63362733','Masculino',now(),now(),1,1);
INSERT INTO clientes VALUES(9,1,'RUBEN','VARGAS','DONOSO','5032729','Av. Domingo paz y Gral Trigo','71434154','Masculino',now(),now(),1,1);
INSERT INTO clientes VALUES(10,1,'CECILIA','VILLA','FERREIRA','5799461','Av Membrillos calle Mejillones','68879519','Femenino',now(),now(),1,0);

INSERT INTO pedidos VALUES(1,1,'323','SI','2020-08-22','2020-08-23','213',now(),now(),1,1);
INSERT INTO pedidos VALUES(2,2,'35','NO','2020-02-11','2020-02-12','543',now(),now(),1,0);
INSERT INTO pedidos VALUES(3,6,'45','SI','2020-07-14','2020-07-15','45',now(),now(),1,1);
INSERT INTO pedidos VALUES(4,7,'67','SI','2020-04-25','2020-04-26','333',now(),now(),1,1);
INSERT INTO pedidos VALUES(5,3,'32','NO','2020-07-20','2020-07-21','34',now(),now(),1,0);
INSERT INTO pedidos VALUES(6,5,'68','SI','2020-12-22','2020-12-23','143',now(),now(),1,1);
INSERT INTO pedidos VALUES(7,7,'97','NO','2020-04-07','2020-04-08','134',now(),now(),1,0);
INSERT INTO pedidos VALUES(8,9,'33','NO','2020-08-26','2020-08-27','45',now(),now(),1,0);
INSERT INTO pedidos VALUES(9,10,'54','SI','2020-09-10','2020-09-11','90',now(),now(),1,1);
INSERT INTO pedidos VALUES(10,4,'45','SI','2020-11-02','2020-11-03','76',now(),now(),1,1);

INSERT INTO detalle_pedidos VALUES(1,2,1,'1','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);	
INSERT INTO detalle_pedidos VALUES(2,6,2,'3','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);		
INSERT INTO detalle_pedidos VALUES(3,4,3,'3','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);	
INSERT INTO detalle_pedidos VALUES(4,2,4,'4','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(5,1,5,'5','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(6,2,6,'6','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(7,1,7,'7','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(8,2,8,'8','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(9,1,9,'9','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);
INSERT INTO detalle_pedidos VALUES(10,1,10,'10','Es un hecho establecido hace demasiado tiempo que un 
	lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño',now(),now(),1,1);

/***************TABLAS DE SEGURIDAD************************/


CREATE TABLE personas(
id_persona INT NOT NULL AUTO_INCREMENT,
id_tienda_repostera INT NOT NULL,
nombres VARCHAR(30),
ap VARCHAR(20),
am VARCHAR(20),
ci VARCHAR(15) NOT NULL,
telefono VARCHAR(20),
direccion VARCHAR(60),
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_persona),
FOREIGN KEY(id_tienda_repostera) REFERENCES tienda_repostera(id_tienda_repostera)
)ENGINE=INNODB;

CREATE TABLE usuarios(
id_usuario INT NOT NULL AUTO_INCREMENT,
id_persona INT NOT NULL,
usuarios VARCHAR(30) NOT NULL,
clave VARCHAR(100) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario),
FOREIGN KEY(id_persona) REFERENCES personas(id_persona)
)ENGINE=INNODB;

CREATE TABLE roles(
id_rol INT NOT NULL AUTO_INCREMENT,
rol VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_rol)
)ENGINE=INNODB;


CREATE TABLE usuario_roles(
id_usuario_rol INT NOT NULL AUTO_INCREMENT,
id_usuario INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_usuario_rol),
FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY(id_rol) REFERENCES roles(id_rol)
)ENGINE=INNODB;

CREATE TABLE grupos(
id_grupo INT NOT NULL AUTO_INCREMENT,
grupo VARCHAR(30) NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_grupo)
)ENGINE=INNODB;

CREATE TABLE opciones(
id_opcion INT NOT NULL AUTO_INCREMENT,
id_grupo INT NOT NULL,
opcion VARCHAR(30) NOT NULL,
contenido VARCHAR(100) NOT NULL,
orden INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_opcion),
FOREIGN KEY(id_grupo) REFERENCES grupos(id_grupo)
)ENGINE=INNODB;

CREATE TABLE accesos(
id_acceso INT NOT NULL AUTO_INCREMENT,
id_opcion INT NOT NULL,
id_rol INT NOT NULL,
fec_insercion TIMESTAMP NOT NULL,
fec_modificacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
usuario INT NOT NULL,
estado CHAR(1) NOT NULL,
PRIMARY KEY(id_acceso),
FOREIGN KEY(id_opcion) REFERENCES opciones(id_opcion),
FOREIGN KEY(id_rol) REFERENCES roles(id_rol)
)ENGINE=INNODB;

/***************INSERCION DE DATOS************************/

INSERT INTO personas VALUES(1,1,'Lizbeth','Cruz','Menchaca','10640091','75118130','B/ La Torre av. Canada',now(),now(),1,1);
INSERT INTO personas VALUES(2,1,'Ana','Garcia','Jerez','15256534','78787367','Froilan Tejerina y Enrique Pantoja',now(),now(),1,1);
INSERT INTO personas VALUES(3,1,'Ramiro','Daza','Aguilar','8620563','68352654','Av. Domingo paz y Gral Trigo',now(),now(),1,1);
INSERT INTO personas VALUES(4,1,'Esther','Chambi','Pedraza','356746','63362733','Av Membrillos calle Mejillones',now(),now(),1,1);
INSERT INTO personas VALUES(5,1,'Maria','Perez','Arroyo','5734897','68764522','Av. Domingo paz y Gral Trigo',now(),now(),1,1);
INSERT INTO personas VALUES(6,1,'Iscela','Lopez','Caseres','5278190','75118130','Froilan Tejerina y Enrique Pantoja',now(),now(),1,1);
INSERT INTO personas VALUES(7,1,'Marianela','Camacho','Villanueva','3564248','71237855','B/ La Torre av. Canada',now(),now(),1,1);
INSERT INTO personas VALUES(8,1,'Arrthur','Molina','Villena','92786412','79456346','Av Membrillos calle Mejillones',now(),now(),1,1);
INSERT INTO personas VALUES(9,1,'Kevin','Montolla','Molina','76743722','69910321','Froilan Tejerina y Enrique Pantoja',now(),now(),1,1);
INSERT INTO personas VALUES(10,1,'Jorge','Muños','Ortega','9549370','68789134','Av Membrillos calle Mejillones',now(),now(),1,1);

INSERT INTO usuarios VALUES(1,1,'admin','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,1);
INSERT INTO usuarios VALUES(2,2,'ana','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,1);
INSERT INTO usuarios VALUES(3,4,'espe','$2y$10$HxB1sZ3p/ok/Aa3cyATcsuGZoUrZzW5.TtmaiYh61S38axFgKVmXK',now(),now(),1,1);

INSERT INTO roles VALUES(1,'admin',now(),now(),1,1);
INSERT INTO roles VALUES(2,'usuario_prueba1',now(),now(),1,1);
INSERT INTO roles VALUES(3,'usuario_prueba2',now(),now(),1,1);

INSERT INTO usuario_roles VALUES(1,1,1,now(),now(),1,1);
INSERT INTO usuario_roles VALUES(2,2,2,now(),now(),1,1);
INSERT INTO usuario_roles VALUES(3,3,3,now(),now(),1,1);

INSERT INTO grupos VALUES(1,'HERRAMIENTAS',now(),now(),1,1);
INSERT INTO grupos VALUES(2,'TIENDA REPOSTERA',now(),now(),1,1);
INSERT INTO grupos VALUES(3,'REPORTES',now(),now(),1,1);

INSERT INTO opciones VALUES(1,1,'Personas','../privada/personas/personas.php',10,now(),now(),1,1);
INSERT INTO opciones VALUES(2,1,'Usuarios','../privada/usuarios/usuarios.php',20,now(),now(),1,1);
INSERT INTO opciones VALUES(3,1,'Grupos','../privada/grupos/grupos.php',30,now(),now(),1,1);
INSERT INTO opciones VALUES(4,1,'Roles','../privada/roles/roles.php',40,now(),now(),1,1);
INSERT INTO opciones VALUES(5,1,'Usuario Roles','../privada/usuario_roles/usuario_roles.php',50,now(),now(),1,1);
INSERT INTO opciones VALUES(6,1,'Opciones','../privada/opciones/opciones.php',60,now(),now(),1,1);
INSERT INTO opciones VALUES(7,1,'Accesos','../privada/accesos/accesos.php',70,now(),now(),1,1);

INSERT INTO opciones VALUES(8,2,'Tienda Repostera','../privada/tienda_repostera/tienda_repostera.php',80,now(),now(),1,1);
INSERT INTO opciones VALUES(9,2,'Proveedores','../privada/proveedores/proveedores.php',80,now(),now(),1,1);
INSERT INTO opciones VALUES(10,2,'Ingredientes','../privada/ingredientes/ingredientes.php',80,now(),now(),1,1);
INSERT INTO opciones VALUES(11,2,'Proveedor Ingrediente','../privada/proveedor_ingrediente/proveedor_ingrediente.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(12,2,'Compra Ingrediente','../privada/compra_ingredientes/compra_ingredientes.php',90,now(),now(),1,1);
/*INSERT INTO opciones VALUES(13,2,'Detalle Compra Ingrediente','../privada/det_comp_ingre/det_comp_ingre.php',90,now(),now(),1,1);*/
INSERT INTO opciones VALUES(14,2,'Productos','../privada/productos/productos.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(15,2,'Productos Precios','../privada/productos_precios/productos_precios.php',80,now(),now(),1,1);
INSERT INTO opciones VALUES(16,2,'Clientes','../privada/clientes/clientes.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(17,2,'Pedidos','../privada/pedidos/pedidos.php',90,now(),now(),1,1);
/*INSERT INTO opciones VALUES(18,2,'Detalles Pedidos','../privada/detalle_pedidos/detalle_pedidos.php',90,now(),now(),1,1);*/

INSERT INTO opciones VALUES(19, 3, 'Rpt clientes', '../privada/REPORTES/rpt_clientes.php', 10, now(), now(), 1, 1);
INSERT INTO opciones VALUES(20, 3, 'Rpt productos', '../privada/REPORTES/rpt_productos.php', 20, now(), now(), 1, 1);
INSERT INTO opciones VALUES(21, 3,'Rpt Pedidos','../privada/REPORTES/rpt_pedidos.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(22, 3,'Rpt Compra Ingredientes','../privada/REPORTES/rpt_compra_ingrediente.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(23, 3,'Rpt Personas Usuarios','../privada/REPORTES/personas_usuarios.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(24, 3,'Rpt Personas','../privada/REPORTES/personas_fechas.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(25, 3,'Rpt Proveedores','../privada/REPORTES/rpt_proveedores.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(26, 3,'Rpt Ingredientes','../privada/REPORTES/ingredientes_fechas.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(27, 3,'Rpt Grupos','../privada/REPORTES/grupos_fechas.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(28, 3,'Rpt Productos_precios','../privada/REPORTES/productos_precios.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(29, 3,'Rpt Clientes_Genero','../privada/REPORTES/rpt_clientes_genero.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(30, 3,'Fichas Tecnicas Personas','../privada/REPORTES/fichas_tecnicas_personas.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(31, 3,'Rpt Productos_por_Precios','../privada/REPORTES/rpt_productos_por_precios.php',90,now(),now(),1,1);
INSERT INTO opciones VALUES(32, 3,'Fichas Tecnicas Proveedores','../privada/REPORTES/fichas_tecnicas_proveedores.php',90,now(),now(),1,1);

INSERT INTO accesos VALUES(1,1,1,now(),now(),1,1);
INSERT INTO accesos VALUES(2,2,1,now(),now(),1,1);
INSERT INTO accesos VALUES(3,3,1,now(),now(),1,1);
INSERT INTO accesos VALUES(4,4,1,now(),now(),1,1);
INSERT INTO accesos VALUES(5,5,1,now(),now(),1,1);
INSERT INTO accesos VALUES(6,6,1,now(),now(),1,1);
INSERT INTO accesos VALUES(7,7,1,now(),now(),1,1);
INSERT INTO accesos VALUES(8,8,1,now(),now(),1,1);
INSERT INTO accesos VALUES(9,9,1,now(),now(),1,1);
INSERT INTO accesos VALUES(10,10,1,now(),now(),1,1);
INSERT INTO accesos VALUES(11,11,1,now(),now(),1,1);
INSERT INTO accesos VALUES(12,12,1,now(),now(),1,1);
/*INSERT INTO accesos VALUES(13,13,1,now(),now(),1,1);*/
INSERT INTO accesos VALUES(14,14,1,now(),now(),1,1);
INSERT INTO accesos VALUES(15,15,1,now(),now(),1,1);
INSERT INTO accesos VALUES(16,16,1,now(),now(),1,1);
INSERT INTO accesos VALUES(17,17,1,now(),now(),1,1);
/*INSERT INTO accesos VALUES(18,18,1,now(),now(),1,1);*/
INSERT INTO accesos VALUES(19,19,1,now(),now(),1,1);
INSERT INTO accesos VALUES(20,20,1,now(),now(),1,1);
INSERT INTO accesos VALUES(21,21,1,now(),now(),1,1);
INSERT INTO accesos VALUES(22,22,1,now(),now(),1,1);
INSERT INTO accesos VALUES(23,23,1,now(),now(),1,1);
INSERT INTO accesos VALUES(24,24,1,now(),now(),1,1);

INSERT INTO accesos VALUES(25,1,2,now(),now(),1,1);
INSERT INTO accesos VALUES(26,2,2,now(),now(),1,1);
INSERT INTO accesos VALUES(27,3,2,now(),now(),1,1);
INSERT INTO accesos VALUES(28,4,2,now(),now(),1,1);
INSERT INTO accesos VALUES(29,5,2,now(),now(),1,1);
INSERT INTO accesos VALUES(30,8,2,now(),now(),1,1);

INSERT INTO accesos VALUES(31,11,3,now(),now(),1,1);
INSERT INTO accesos VALUES(32,12,3,now(),now(),1,1);
INSERT INTO accesos VALUES(33,22,3,now(),now(),1,1);
INSERT INTO accesos VALUES(34,23,3,now(),now(),1,1);
INSERT INTO accesos VALUES(35,25,1,now(),now(),1,1);
INSERT INTO accesos VALUES(36,26,1,now(),now(),1,1);

INSERT INTO accesos VALUES(37,27,1,now(),now(),1,1);
INSERT INTO accesos VALUES(38,28,1,now(),now(),1,1);

INSERT INTO accesos VALUES(43,29,1,now(),now(),1,1);
INSERT INTO accesos VALUES(44,30,1,now(),now(),1,1);
INSERT INTO accesos VALUES(45,31,1,now(),now(),1,1);
INSERT INTO accesos VALUES(46,32,1,now(),now(),1,1);
