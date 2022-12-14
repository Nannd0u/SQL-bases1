-- ENTIDADES FUERTES --

INSERT INTO Variedad VALUES
('1','Burlat','Temprana','Francia','referencia de maduracion para las otras variedades'),
('2','Cristobalina','Extra-temprana','España',NULL),
('3','Primulat','Extra-temprana','Francia',NULL),
('4','Nimba','Extra-temprana','Francia',NULL),
('5','Early Bigi','Extra-temprana','Francia',NULL),
('6','Early Lori','Extra-temprana','Francia',NULL),
('7','Sweet Early','Extra-temprana','Italia',NULL),
('8','Marvin','Temprana','EEUU','Edo. California'),
('9','Royal Tioga','Temprana','EEUU','Edo. California'),
('10','Pacific Red','Temprana','EEUU','Edo. California'),
('11','Brooks','Temprana','EEUU','Edo. California'),
('12','Rochet','Temprana','EEUU','Edo. California'),
('13','Royal Hazel','Temprana','EEUU','Edo. California'),
('14','Rubi','Temprana','EEUU','Edo. California'),
('15','Early Red','Temprana','Canada',NULL),
('16','Santina','Temprana','Canada',NULL),
('17','Celeste','Temprana','Canada',NULL),
('18','Sabrina','Temprana','Canada',NULL),
('19','Carmen','Temprana','Hungria',NULL),
('20','Grace Star','Media Estacion','Italia',NULL),
('21','Cristalina','Media Estacion','Canada',NULL),
('22','New Star','Media Estacion','Canada',NULL),
('23','New Moon','Media Estacion','Canada',NULL),
('24','Garnet','Media Estacion','EEUU',NULL),
('25','Utha Giant','Media Estacion','EEUU',NULL),
('26','Starking','Media Estacion','EEUU',NULL),
('27','Vic','Tardia','Canada',NULL),
('28','Sylvia','Tardia','Canada',NULL),
('29','Sunburst','Tardia','Canada',NULL),
('30','Sonata','Tardia','Canada',NULL),
('31','Lapins','Tardia','Canada','variedad mas cultivada en el mundo'),
('32','Napoleon','Tardia','Alemania',NULL),
('33','Kordia','Tardia','Alemania',NULL),
('34','Blanca de Provenza','Extra-tardia','Francia',NULL),
('35','Ambrunes','Extra-tardia','España',NULL),
('36','Pico Negro','Extra-tardia','España',NULL),
('37','Pico Colorado','Extra-tardia','España',NULL),
('38','Regina','Extra-tardia','Alemania',NULL);

INSERT INTO Pais VALUES
('1','Iran','Asia'),
('2','EEUU','America del Norte'),
('3','Turquia','Asia'),
('4','Italia','Europa'),
('5','Alemania','Europa'),
('6','España','Europa'),
('7','Libano','Asia'),
('8','Rumania','Europa'),
('9','Francia','Europa'),
('10','Federacion Rusa','Europa y Asia'),
('11','Grecia','Europa'),
('12','Siria','Asia'),
('13','Chile','America del Sur'),
('14','Austria','Europa'),
('15','Republica Checa','Europa'),
('16','Canada','America del Norte'),
('17','Argentina','America del Sur'),
('18','Australia','Oceania'),
('19','Belgica','Europa'),
('20','Bulgaria','Europa'),
('21','Colombia','America del Sur'),
('22','Chipre','Asia'),
('23','Hungria','Europa'),
('24','Israel','Asia'),
('25','Marruecos','Africa'),
('26','Paises Bajos','Europa'),
('27','Nueva Zelanda','Oceania'),
('28','Noruega','Europa');

INSERT INTO Variable VALUES
('1','Positivo','total de elecciones positivas','Cuantitativa'),
('2','Negativo','total de elecciones negativas','Cuantitativa'),
('3','Total','substraccion de los resultados positivos y negativos','Cuantitativa');

INSERT INTO Ingrediente VALUES
('1','Cereza(s)'),
('2','Queso(s)'),
('3','Canela(s)'),
('4','Chocolate'),
('5','Coco(s)'),
('6','Crema(s)'),
('7','Jalea'),
('8','Azucar'),
('9','Gelatina(s)'),
('10','Yogur'),
('11','Huevo(s)'),
('12','Leche'),
('13','Limon(es)'),
('14','Mantequilla'),
('15','Mermelada'),
('16','Nuez(es)'),
('17','Vainilla'),
('18','Zanahoria(s)'),
('19','Tomate(s)'),
('20','Cebolla(s)'),
('21','Pan'),
('22','Aceite de oliva'),
('23','Agua'),
('24','Sal'),
('25','Vinagre'),
('26','Pimiento Verde'),
('27','Miel'),
('28','Pimienta'),
('29','Harina'),
('30','Vaina de Vainilla'),
('31','Queso Crema'),
('32','Leche Evaporada'),
('33','Leche Condensada'),
('34','Gelatina de cereza'),
('35','Beicon'),
('36','Manteca'),
('37','planchas de pasta brisa'),
('38','Maicena'),
('39','Concha de limon'),
('40','Levadura'),
('41','Masscarponne');

-- ENTIDADES DEBILES --

INSERT INTO Ciudad VALUES
('1','Placerville','2'),
('2','Prescott','2'),
('3','Vignola','4'),
('4','Anzola dell Emilia','4'),
('5','Granada','4'),
('6','Sevilla','6'),
('7','Santiago','13'),
('8','Concepcion','13'),
('9','Saint-Laurent','16'),
('10','Niza','9'),
('11','Bahnhofstraße','5'),
('12','Trelew','17'),
('13','Traverse City','2'),
('14','Elk Rapids','2'),
('15','Hamburgo','5'),
('16','Napoles','4'),
('17','Pontevedra','6'),
('18','Pasadena','2'),
('19','Camporotondo','4'),
('20','Ferrara','4'),
('21','Arnissa','11'),
('22','Naousa','11'),
('23','Concordia','17'),
('24','Buenos Aires','17'),
('25','Cuijk','26'),
('26','Massy','9'),
('27','Valencia','6'),
('28','Essen','5'),
('29','Neckarsulm','5');

INSERT INTO Region VALUES
('1','California','2'),
('2','Washington','2'),
('3','Modena','4'),
('4','Bologna','4'),
('5','Granada','4'),
('6','Sevilla','6'),
('7','Santiago','13'),
('8','Biobio','13'),
('9','Quebec','16'),
('10','Provenza-Alpes-Costa Azul','9'),
('11','Norte Rine-Westfalia','5'),
('12','Chubut','17'),
('13','Michigan','2');

INSERT INTO Asociacion VALUES
('1','California Cherry Growers','P.O. Box 1000','1'),
('2','Washington Tree Fruit Association','P.O. Box 1000','2'),
('3','Modena Fruit Growers Association','Via Pratomavore 6/A','3'),
('4','Bologna Fruit Growers Association','Via Emilia Ponente 276','4'),
('5','Granada Fruit Growers Association','C. Grajilla','5'),
('6','Sevilla Fruit Growers Association','C. Barcelona','6'),
('7','Santiago Fruit Growers Association','C. Luis Pasteur 5655','7'),
('8','Biobio Fruit Growers Association','Av. Arturo Prat 199','8'),
('9','Quebec Fruit Growers Association','176 Rue Benjamin Hudon','9'),
('10','Provenza-Alpes-Costa Azul Fruit Growers Association','Rue Saint-Augustin 06200','10'),
('11','Norte Rine-Westfalia Fruit Growers Association','Bahnhofstraße 1','11'),
('12','Chubut Fruit Growers Association','Av. Lezama 1227','12'),
('13','Michigan Fruit Growers Association','2240 Dias Dr.','13');

INSERT INTO Productor VALUES
('1','American River Cherry Company','2240 Dias Dr.','Caja',NULL,'1','1'),
('2','FirstFruit Farms LLC','1111 Fishhook Park Rd.','Caja',NULL,'2','2'),
('3','Azienda Agricola Amidei Bettino','Via Pratomavore 6/A','Bolsa',NULL,'3','4'),
('4','Fabbri 1905','Via Emilia Ponente 276','Bolsa',NULL,'4','5'),
('5','Maitena del Genil','C. Grajilla','Mallas',NULL,NULL,'6'),
('6','Bernardo Herrera','C. Barcelona','Mallas',NULL,NULL,'6'),
('7','Subsole','C. Luis Pasteur 5655','Cajones',NULL,NULL,'8'),
('8','Fistur','Av. Arturo Prat 199','Cajones',NULL,'7','7'),
('9','Agrocan Foods','176 Rue Benjamin Hudon','Caja',NULL,NULL,'9'),
('10','La Source Aux Fruits','Rue Saint-Augustin 06200','Caja',NULL,NULL,'10'),
('11','Spreewaldhof','Bahnhofstraße 1','Bolsa',NULL,'11','11'),
('12','Cerezas de la Patagonia','Av. Lezama 1227','Bolsa',NULL,NULL,'12');

INSERT INTO Cultivo VALUES
('1','25',350,'2021-03-20','2021-04-20',20,'2','4'), 
('2','22',470,'2025-03-20','2025-04-20',30,'3','1'), 
('3','30',360,'2012-03-20','2012-04-20',21,'5','6'), 
('4','31',820,'2007-04-01','2007-04-30',62,'11','8'), 
('5','27',610,'2017-04-01','2017-04-30',50,'8','3'), 
('6','23',530,'2018-04-01','2018-04-30',37,'1','3'), 
('7','26',120,'2004-04-13','2004-05-13',60,'23','9'), 
('8','28',770,'2013-04-13','2013-05-13',45,'20','11'), 
('9','32',420,'2019-04-21','2019-05-21',21,'27','5'); 

INSERT INTO Produccion VALUES
('1','2021-05-20',350,'2','1'),
('2','2025-03-20',470,'3','2'),
('3','2012-03-20',360,'5','3'),
('4','2007-04-01',820,'6','4'),
('5','2017-04-01',610,'8','5'),
('6','2018-04-01',530,'1','6'),
('7','2004-04-13',120,'9','7'),
('8','2013-04-13',770,'12','8'),
('9','2019-04-21',420,'22','9');

INSERT INTO Proveedor VALUES
('1','TC Fruits', 'Distribucion de frutas y hortalizas','36692 Barro-Pontevedra','17'),
('2','AMS Export','Importacion-exportacion sector agricola','177 E Colorado Blvd #200','18'),
('3','GI E GI DI V. GIUFFRIDA','Venta de especias','95040 Camporotondo Etneo','19'),
('4','SOCIETA AGRICOLA SALVI VIVAI S.S.','Produccion de verduras y hortalizas','Via Bologna, 71444124 Ferrara','20'),
('5','AGRICULTURAL CORPORATION OF VEGORITIDAS-VORAS','Mayorista de frutas','Arnissa-pellas 58002 Arnissa','21'),
('6','MILIS FRUIT NUT NURSERY','Comercializacion de platos frutales','590 35 Naousa','22'),
('7','Don Carmelo','Proveedor de frutas','3200 Concordia','23'),
('8','DERCAM EXPORT IMPORT','Exportador de frutas y Hortalizas','2727 Buenos aires','24'),
('9','KALKAN IMPORT EXPORT','Proveedor de frutas congeladas','5431 Cuijk','25');

INSERT INTO Padrino VALUES
('1','Juan',NULL,'Garcia',NULL,'1'),
('2','Pedro',NULL,'Gonzalez',NULL,'2'),
('3','Maria',NULL,'Perez',NULL,'3'),
('4','Jose',NULL,'Lopez',NULL,'4'),
('5','Luis',NULL,'Martinez',NULL,'5'),
('6','Ana',NULL,'Gomez',NULL,'6'),
('7','Pablo',NULL,'Rodriguez',NULL,'7'),
('8','Sofia',NULL,'Fernandez',NULL,'8'),
('9','Miguel',NULL,'Sanchez',NULL,'9');

INSERT INTO Apadrinamiento VALUES
('2022-05-17','2025-05-17',100000,'1','1','1'),
('2022-01-02',NULL,90000,'2','2','2'),
('2021-02-09','2024-02-09',150000,'3','3','3'),
('2022-08-07','2025-08-07',200000,'4','4','4'),
('2022-12-21',NULL,75000,'5','5','5'),
('2020-11-24','2023-11-24',67000,'6','6','6'),
('2021-05-31','2024-05-31',135000,'7','7','7'),
('2022-02-06',NULL,98000,'8','8','8'),
('2022-07-11','2025-07-11',112000,'9','9','9');

INSERT INTO P_Prov VALUES
('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9');

INSERT INTO Convenio VALUES
('1','descuento','2021-01-01','2021-01-01','1',NULL,NULL),
('2','descuento','2021-02-01','2022-02-01','2',NULL,NULL),
('3','descuento','2021-03-01','2012-03-01','3',NULL,NULL),
('4','descuento','2021-04-01','2007-04-01','4',NULL,NULL),
('5','descuento','2021-05-01','2017-05-01',NULL,'2','2'),
('6','descuento','2021-06-01','2018-06-01',NULL,'6','6'),
('7','descuento','2021-07-01','2004-07-01',NULL,'7','7'),
('8','descuento','2021-08-01','2013-08-01',NULL,'8','8'),
('9','descuento','2021-09-01','2019-09-01','9',NULL,NULL);

INSERT INTO Cliente VALUES
('1','Benjamin Twiggs','Juridico','1213 East Front Street',100,'13'),
('2','Traverse Bay Farms','Juridico','204 River Street',90,'14'),
('3','Edeka','Juridico','D-2297 Hamburgo',80,'15'),
('4','La Distitalia SRL','Juridico','Giugliano in Campania',70,'16'),
('5','Aldi','Juridico','Steeler Str.',60,'28'),
('6','Lidl','Juridico','Neckarsulm Str.',50,'29'),
('7','Carrefour','Juridico','Rue Saint-Marc',40,'26'),
('8','Mercadona','Juridico','C. Valencia',30,'27'),
('9','Dia','Juridico','D-40878 Ratingen',20,'21');

INSERT INTO Forma_Pago VALUES
('1','Contado',NULL,NULL,NULL,'2022-02-10','2022-02-11','2'),
('2','Contado',NULL,NULL,NULL,'2012-05-20','2012-05-22','3'),
('3','Contado',NULL,NULL,NULL,'2007-07-30','2007-07-31','4'),
('4','Contado',NULL,NULL,NULL,'2017-11-23','2017-11-24','5'),
('5','Cuota',6700,10,1,NULL,NULL,'6'),
('6','Cuota',17550,13,1,NULL,NULL,'7'),
('7','Cuota',17000,17,1,NULL,NULL,'1'),
('8','Cuota',49000,5,1,NULL,NULL,'8'),
('9','Contado',NULL,NULL,NULL,'2019-12-05','2019-12-06','9');

INSERT INTO Contrato VALUES
('1','2021-01-01','2024-01-01',0,100000,'Terrestre','Activo','1','1','1'),
('2','2022-02-01','2025-02-01',0,90000,'Terrestre','Activo','2','2','2'),
('3','2012-03-01','2015-03-01',0,150000,'Aereo','Inactivo','3','3','3'),
('4','2007-04-01','2010-04-01',0,200000,'Maritimo','Inactivo','4','4','4'),
('5','2017-05-01','2020-05-01',0,75000,'Terrestre','Inactivo','5','5','5'),
('6','2018-06-01','2021-06-01',0,67000,'Maritimo','Inactivo','6','6','6'),
('7','2004-07-01','2007-07-01',0,135000,'Maritimo','Inactivo','7','7','7'),
('8','2013-08-01','2016-08-01',0,98000,'Maritimo','Inactivo','8','8','8'),
('9','2019-09-01','2023-09-01',0,112000,'Aereo','Activo','9','9','9');

INSERT INTO Renovacion VALUES
('1','2023-01-01',100000,'1','1','1'),
('2','2024-02-01',90000,'2','2','2'),
('3','2014-03-01',150000,'3','3','3'),
('4','2009-04-01',200000,'4','4','4'),
('5','2019-05-01',75000,'5','5','5'),
('6','2020-06-01',67000,'6','6','6'),
('7','2006-07-01',135000,'7','7','7'),
('8','2015-08-01',98000,'8','8','8'),
('9','2022-09-01',112000,'9','9','9');

INSERT INTO Pago VALUES
('1','2021-01-01',100000,'1','1','1'),
('2','2022-02-01',90000,'2','2','2'),
('3','2012-03-01',150000,'3','3','3'),
('4','2007-04-01',200000,'4','4','4'),
('5','2017-05-01',75000,'5','5','5'),
('6','2018-06-01',67000,'6','6','6'),
('7','2004-07-01',135000,'7','7','7'),
('8','2013-08-01',98000,'8','8','8'),
('9','2019-09-01',112000,'9','9','9');

INSERT INTO Formula VALUES
('1','Numerica',100,'1','3'),
('2','Numerica',98,'2','3'),
('3','Numerica',80,'3','3'),
('4','Numerica',81,'4','3'),
('5','Numerica',77,'5','3'),
('6','Numerica',100,'6','3'),
('7','Numerica',90,'7','3'),
('8','Numerica',60,'8','3'),
('9','Numerica',79,'9','3');

INSERT INTO Detalle_V VALUES
(1,0,'1','1','1','1'),
(2,0,'1','1','1','2'),
(3,0,'1','1','1','3'),
(4,0,'1','1','1','4'),
(5,0,'1','1','1','5'),
(6,0,'1','1','1','6'),
(7,0,'1','1','1','7'),
(8,0,'1','1','1','8'),
(9,0,'1','1','1','9'),
(10,0,'2','2','2','1'),
(11,0,'2','2','2','2'),
(12,0,'2','2','2','3'),
(13,0,'2','2','2','4'),
(14,0,'2','2','2','5'),
(15,0,'2','2','2','6'),
(16,0,'2','2','2','7'),
(17,0,'2','2','2','8'),
(18,0,'2','2','2','9'),
(19,0,'3','3','3','1'),
(20,0,'3','3','3','2'),
(21,0,'3','3','3','3'),
(22,0,'3','3','3','4'),
(23,0,'3','3','3','5'),
(24,0,'3','3','3','6'),
(25,0,'3','3','3','7'),
(26,0,'3','3','3','8'),
(27,0,'3','3','3','9'),
(28,0,'4','4','4','1'),
(29,0,'4','4','4','2'),
(30,0,'4','4','4','3');

INSERT INTO Envio VALUES
('1',100,'1','1','1','1','1'),
('2',100,'2','2','2','2','2'),
('3',100,'3','3','3','3','3'),
('4',100,'4','4','4','4','3'),
('5',100,'5','4','4','4','2'),
('6',100,'6','3','3','3','5'),
('7',100,'7','1','1','1','8'),
('8',100,'8','2','2','2','6'),
('9',100,'9','3','3','3','7');  

INSERT INTO Precio_Promedio VALUES
('1','2021-01-01','2024-01-01',6.75,'20 mm','1','1'),
('2','2022-02-01','2025-02-01',6.80,'22 mm','2','2'),
('3','2012-03-01','2015-03-01',5.98,'20 mm','3','3'),
('4','2007-04-01','2010-04-01',5.80,'24 mm','4','4'),
('5','2017-05-01','2020-05-01',6.10,'30 mm','5','5'),
('6','2018-06-01','2021-06-01',6.13,'28 mm','6','6'),
('7','2004-07-01','2007-07-01',5.60,'26 mm','7','7'),
('8','2013-08-01','2016-08-01',6.00,'22 mm','8','8'),
('9','2019-09-01','2022-09-01',6.62,'32 mm','9','9');

INSERT INTO Resultado_Eval_Anual VALUES
(2021,100,10,'2021-12-01','Aceptado','1','1'),
(2021,90,10,'2022-12-01','Rechazado','2','2'),
(2021,80,10,'2013-02-01','Aceptado','3','3'),
(2021,70,10,'2008-03-01','Rechazado','4','4'),
(2022,60,10,'2018-04-01','Aceptado','1','5'),
(2022,50,10,'2019-05-01','Rechazado','2','6'),
(2022,40,10,'2005-06-01','Aceptado','3','1'),
(2022,30,10,'2014-07-01','Rechazado','4','9'),
(2012,20,10,'2020-08-01','Aceptado','1','8');

INSERT INTO Receta VALUES
('1','Gazpacho de Cerezas','Salada','00:10:00',6,NULL,'1',NULL),
('2','Crostini de Cerezas','Salada','00:30:00',10,NULL,'2',NULL),
('3','Bocados de cereza y beicon','Salada','00:20:00',4,NULL,'3',NULL),
('4','Tarta de cereza','Dulce','02:00:00',8,'Alfonso López','4',NULL),
('5','Gelatina de Cereza','Dulce','02:30:00',1,NULL,'5',NULL),
('6','Limonada de Cereza','Dulce','00:15:00',6,'Layla Pujol','6',NULL),
('7','Pie de Cereza','Dulce','00:45:00',6,'Rececatas','7',NULL),
('8','Tartaletas de crema con salsa de cerezas','Dulce','00:30:00',6,'Marian_','8',NULL),
('9','Cupcakes de cerezas','Dulce','00:40:00',6,'Marian','9',NULL);

INSERT INTO Elaboracion VALUES
(1,'Remojamos el pan troceado en el agua,','1'),
(2,'ponemos todos los ingredientes en la batidora,','1'),
(3,'batimos hasta obtener una crema fina,','1'),
(4,'pasamos el gazpacho por un colador bien fino','1'),
(5,'probamos y rectificamos añadiendo mas agua de ser necesario','1'),
(1,'Mezclar en un cuenco el vinagre con la miel y aceite de oliva, el pimenton,','2'),
(2,'añadir las cerezas y mezclar bien, dejar marinar ditamente.','2'),
(3,'Calentar un sarten y ñadir las cerezas con toda la salsa, cocinar por 15 o 20 min,','2'),
(4,'retirar cuando las cerezas esten tiernas y dejar enfirar.','2'),
(1,'Deshuesar las cerezas, cortar las lonchas de beicon por la mitad,','3'),
(2,'envolver cada cereza con una loncha de beicon,','3'),
(3,'pinchar con un palillo y cocinar en el horno a 200ºC durante 15 minutos,','3'),
(4,'retirar del horno y dejar enfriar.','3'),
(1,'Lavar y deshuesar cerezas','4'),
(2,'Colocar las cerezas deshuesadas en un bol y añadir azucar','4'),
(3,'macerar las cerezas entre 8 y 12 horas en la nevera','4'),
(4,'cortar mantequilla en cuadritos y se coloca en un bol','4'),
(5,'se añade azucar,harina y sal, mezclar hasta formar una arena','4'),
(6,'se añade agua y jugo de limon y se sigue mezclando hasta que la masa este homogenea','4'),
(7,'Compactar la masa con las manos formando dos porciones, una para la base y otra para el enrejado','4'),
(8,'Envolver las porciones en film transparente y se guarda durannte una hora enla nevera hasta que este duro','4'),
(9,'se coloca la masa de la base de la tarta entre dos papeles de horno para evitar que se pegue','4'),
(10,'estirar la mas hasta que quede entre 3 y 4 mm de espesor','4'),
(11,'Colocar la masa en el molde de tarta manteniendo el papel de horno inferior para evitar que se pegue al molde','4'),
(12,'la masa de la tarta debe sobre salir 0.5cm del molde','4'),
(13,'rellenamos la tarta con el relleno y reservamos','4'),
(14,'se extiende el segundo trozo de masa de la misma forma que el primero y se corta en tiras de 1 a 1.5 cm de ancho','4'),
(15,'colcoar 4 tiras de un mismo sentido sobre la tarta y se continua con las tiras que van perpendiculares para realizar el enrejado','4'),
(16,'se pinta la superficie de la tarta con huevo batido y se introduce en el horno','4'),
(17,'Precalentar el horno a 190 grados C','4'),
(18,'hornear la tarta solo cpn calor por debajo por 15 minutos','4'),
(19,'luego se coloca el calor por arriba y abajo y se hornea por 45 minutoos mas','4'),
(20,'una vez pasado los 45 minutos se retira del horno y se deja enfriar sin desolmda','4'),
(21,'Al dejar enfriar se puede desmoldar y estaria lista','4'),
(1,'Licua queso crema con leche evaporata,la leche condensada, las cerezas','5'),
(2,'vierte dentro de un molde y refrigerar por 30 minutos','5'),
(3,'colocar la gelatina de cereza sobre el mousse de cereza y refrigerar por 2 horas','5'),
(1,'Colocar las cerezas limones azucar y 2 tazas de agua en la licuadora','6'),
(2,'licuar los ingredientes hasta que esten bien triturados','6'),
(3,'Colar la mezcla licuada y agregar agua','6'),
(4,'Sirva la limonada de cereza con hielo en vasos','6'),
(1,'Tamiza la harina y la sal en un cuenco','7'),
(2,'Corte la manteca y mantequilla en cuadrados y frotala con los dedos','7'),
(3,'Rocie 2-3 cucharadas de agua y mezcla hasta hacer una bola, envolver y refrigerar minimo 30min','7'),
(4,'Extiende dos tercios de la masa y recubre el molde ya preparado con la masa, recorta los bordes, introduce en la nevera 15min','7'),
(5,'Pon la cerezas en un hueso junto con el azucar y harina (mas extracto si utilizas), mezcla y vierte sobre el molde','7'),
(6,'Extiende el resto de masa y corta 8 tiras de 1 cm de ancho y dispongalas encima siguiendo un patron de entramado, recorte los bordes.','7'),
(7,'Bate el huevo y glasea el enrejado y ayudese para unir las tiras con la masa.','7'),
(8,'Hornee a 200ºC  40-45 min (a mi me a tardado 30min) hasta que la masa se dore.','7'),
(9,'Sirva a temperatura ambiente o fria.','7'),
(1,'Precalentar el horno a 180 grados.','8'),
(2,'Con un corta pastas cortar discos mas grandes que la tartaleta,colocarlos pincharlos con un tenedor y hornear (unos 15 min).','8'),
(3,'Lava y seca las cerezas,reservar unas pokas para decorar,deshuesarlas y trocearlaso.','8'),
(4,'Llevar a ebullicion la leche con el resto de azucar,la canela y la cascara de limon,retirar del fuego y tapar 5 min.','8'),
(5,'Bate las yemas,echar la harina y la maicena y remover, verter la leche colada,y ponerlo al baño maria (10 min).','8'),
(6,'Dejar enfriar la crema, rellenar las tartaletas,regar con la salsa x encima y colocar una cereza x cada tartaleta. ','8'),
(1,'Limpiamos y deshuesamos las cerezas y las reservamos.','9'),
(2,'Ponemos en un bol la mantequilla junto con el azúcar y batimos bien hasta que formen una crema. A continuación, añadimos los huevos de uno en uno batiendo hasta que se integren.','9'),
(3,'Troceamos las cerezas y las agregamos a nuestra masa. Mezclamos bien con una espátula o cuchara de madera para que se repartan bien.','9'),
(4,'Precalentamos el horno y mientras vamos preparando las cápsulas en el molde. Las llenamos hasta 2/3 de su capacidad y horneamos a 180ºC durante unos 20-25 minutos.','9'),
(5,'Cuando estén listos los sacamos del horno, los dejamos templar 5 minutos y a continuación los sacamos y los dejamos enfriar en una rejilla.','9'),
(6,'Mientras se enfrían, preparamos el frosting. La cantidad dependerá de cuántos cupcakes tengáis que decorar y de cuánta crema queráis ponerles encima.','9'),
(7,'Batimos en un bol la mantequilla junto con el azúcar hasta que formen una crema y adquieran un tono más blanquecino. A continuación añadimos el queso y batimos hasta que quede homogéneo.','9');

INSERT INTO Ingrediente_Receta VALUES
(500,'gr','1','19'),
(250,'gr','1','1'),
(50,'gr','1','26'),
(50,'gr','1','20'),
(100,'ml','1','22'),
(200,'ml','1','23'),
(400,'gr','2','1'),
(30,'ml','2','22'),
(10,'ml','2','27'),
(NULL,NULL,'2','28'),
(NULL,NULL,'2','24'),
(NULL,NULL,'2','23'),
(24,NULL,'3','1'),
(200,'gr','3','35'),
(1,'kg','4','1'),
(250,'gr','4','8'),
(1,NULL,'4','30'),
(530,'gr','4','29'),
(250,'gr','4','14'),
(3,'ml','4','13'),
(10,'ml','4','23'),
(2,'gr','4','24'),
(1,NULL,'4','11'),
(190,'gr','5','31'),
(360,'gr','5','32'),
(375,'gr','5','33'),
(200,'gr','5','1'),
(80,'gr','5','34'),
(500,'gr','6','1'),
(2,NULL,'6','11'),
(240,'ml','6','23'),
(150,'gr','6','8'),
(295,'gr','7','29'),
(75,'gr','7','36'),
(125,'gr','7','14'),
(2,'gr','7','24'),
(500,'gr','7','1'),
(200,'gr','7','8'),
(1,NULL,'7','11'),
(1,NULL,'8','37'),
(300,'gr','8','1'),
(3,NULL,'8','11'),
(1,'lt','8','12'),
(6,'gr','8','29'),
(10,'gr','8','38'),
(1,NULL,'8','3'),
(1,NULL,'8','39'),
(40,'gr','8','8'),
(250,'gr','9','14'),
(200,'gr','9','8'),
(100,'gr','9','29'),
(2,NULL,'9','11'),
(8,'gr','9','40'),
(60,'ml','9','12'),
(100,'gr','9','1'),
(200,'gr','9','41');

INSERT INTO V_Receta VALUES
(80,'1','1'),
(20,'2','2'),
(30,'3','3'),
(40,'4','4'),
(50,'5','5'),
(60,'6','6'),
(70,'7','7'),
(80,'8','8'),
(90,'9','9');
