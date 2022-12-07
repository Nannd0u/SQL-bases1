-- ENTIDADES FUERTES --

INSERT INTO Variedad VALUES
('v1','Burlat','Temprana','Francia','referencia de maduracion para las otras variedades'),
('v2','Cristobalina','Extra-temprana','España',NULL),
('v3','Primulat','Extra-temprana','Francia',NULL),
('v4','Nimba','Extra-temprana','Francia',NULL),
('v5','Early Bigi','Extra-temprana','Francia',NULL),
('v6','Early Lori','Extra-temprana','Francia',NULL),
('v7','Sweet Early','Extra-temprana','Italia',NULL),
('v8','Marvin','Temprana','EEUU','Edo. California'),
('v9','Royal Tioga','Temprana','EEUU','Edo. California'),
('v10','Pacific Red','Temprana','EEUU','Edo. California'),
('v11','Brooks','Temprana','EEUU','Edo. California'),
('v12','Rochet','Temprana','EEUU','Edo. California'),
('v13','Royal Hazel','Temprana','EEUU','Edo. California'),
('v14','Rubi','Temprana','EEUU','Edo. California'),
('v15','Early Red','Temprana','Canada',NULL),
('v16','Santina','Temprana','Canada',NULL),
('v17','Celeste','Temprana','Canada',NULL),
('v18','Sabrina','Temprana','Canada',NULL),
('v19','Carmen','Temprana','Hungria',NULL),
('v20','Grace Star','Media Estacion','Italia',NULL),
('v21','Cristalina','Media Estacion','Canada',NULL),
('v22','New Star','Media Estacion','Canada',NULL),
('v23','New Moon','Media Estacion','Canada',NULL),
('v24','Garnet','Media Estacion','EEUU',NULL),
('v25','Utha Giant','Media Estacion','EEUU',NULL),
('v26','Starking','Media Estacion','EEUU',NULL),
('v27','Vic','Tardia','Canada',NULL),
('v28','Sylvia','Tardia','Canada',NULL),
('v29','Sunburst','Tardia','Canada',NULL),
('v30','Sonata','Tardia','Canada',NULL),
('v31','Lapins','Tardia','Canada','variedad mas cultivada en el mundo'),
('v32','Napoleon','Tardia','Alemania',NULL),
('v33','Kordia','Tardia','Alemania',NULL),
('v34','Blanca de Provenza','Extra-tardia','Francia',NULL),
('v35','Ambrunes','Extra-tardia','España',NULL),
('v36','Pico Negro','Extra-tardia','España',NULL),
('v37','Pico Colorado','Extra-tardia','España',NULL),
('v38','Regina','Extra-tardia','Alemania',NULL);

INSERT INTO Pais VALUES
('pais1','Iran','Asia'),
('pais2','EEUU','America del Norte'),
('pais3','Turquia','Asia'),
('pais4','Italia','Europa'),
('pais5','Alemania','Europa'),
('pais6','España','Europa'),
('pais7','Libano','Asia'),
('pais8','Rumania','Europa'),
('pais9','Francia','Europa'),
('pais10','Federacion Rusa','Europa y Asia'),
('pais11','Grecia','Europa'),
('pais12','Siria','Asia'),
('pais13','Chile','America del Sur'),
('pais14','Austria','Europa'),
('pais15','Republica Checa','Europa'),
('pais16','Canada','America del Norte'),
('pais17','Argentina','America del Sur'),
('pais18','Australia','Oceania'),
('pais19','Belgica','Europa'),
('pais20','Bulgaria','Europa'),
('pais21','Colombia','America del Sur'),
('pais22','Chipre','Asia'),
('pais23','Hungria','Europa'),
('pais24','Israel','Asia'),
('pais25','Marruecos','Africa'),
('pais26','Paises Bajos','Europa'),
('pais27','Nueva Zelanda','Oceania'),
('pais28','Noruega','Europa');

INSERT INTO Variable VALUES
('var1','Positivo','total de elecciones positivas','Cuantitativa'),
('var2','Negativo','total de elecciones negativas','Cuantitativa'),
('var3','Total','substraccion de los resultados positivos y negativos','Cuantitativa');

INSERT INTO Ingrediente VALUES
('ing1','Cereza(s)'),
('ing2','Queso(s)'),
('ing3','Canela(s)'),
('ing4','Chocolate'),
('ing5','Coco(s)'),
('ing6','Crema(s)'),
('ing7','Jalea'),
('ing8','Azucar'),
('ing9','Gelatina(s)'),
('ing10','Yogur'),
('ing11','Huevo(s)'),
('ing12','Leche'),
('ing13','Limon(es)'),
('ing14','Mantequilla'),
('ing15','Mermelada'),
('ing16','Nuez(es)'),
('ing17','Vainilla'),
('ing18','Zanahoria(s)'),
('ing19','Tomate(s)'),
('ing20','Cebolla(s)');

-- ENTIDADES DEBILES --

INSERT INTO Ciudad VALUES
('ciu1','Placerville','pais2'),
('ciu2','Prescott','pais2'),
('ciu3','Vignola','pais4'),
('ciu4','Anzola dell Emilia','pais4'),
('ciu5','Granada','pais4'),
('ciu6','Sevilla','pais6'),
('ciu7','Santiago','pais13'),
('ciu8','Concepcion','pais13'),
('ciu9','Saint-Laurent','pais16'),
('ciu10','Niza','pais9'),
('ciu11','Bahnhofstraße','pais5'),
('ciu12','Trelew','pais17'),
('ciu13','Traverse City','pais2'),
('ciu14','Elk Rapids','pais2'),
('ciu15','Hamburgo','pais5'),
('ciu16','Napoles','pais4'),
('ciu17','Pontevedra','pais6'),
('ciu18','Pasadena','pais2'),
('ciu19','Camporotondo','pais4'),
('ciu20','Ferrara','pais4'),
('ciu21','Arnissa','pais11'),
('ciu22','Naousa','pais11'),
('ciu23','Concordia','pais17'),
('ciu24','Buenos Aires','pais17'),
('ciu25','Cuijk','pais26');

INSERT INTO Region VALUES
('reg1','California','pais2'),
('reg2','Washington','pais2'),
('reg3','Modena','pais4'),
('reg4','Bologna','pais4'),
('reg5','Granada','pais4'),
('reg6','Sevilla','pais6'),
('reg7','Santiago','pais13'),
('reg8','Biobio','pais13'),
('reg9','Quebec','pais16'),
('reg10','Provenza-Alpes-Costa Azul','pais9'),
('reg11','Norte Rine-Westfalia','pais5'),
('reg12','Chubut','pais17'),
('reg13','Michigan','pais2');

INSERT INTO Asociacion VALUES
('asoc1','California Cherry Growers','P.O. Box 1000','reg1'),
('asoc2','Washington Tree Fruit Association','P.O. Box 1000','reg2'),
('asoc3','Modena Fruit Growers Association','Via Pratomavore 6/A','reg3'),
('asoc4','Bologna Fruit Growers Association','Via Emilia Ponente 276','reg4'),
('asoc5','Granada Fruit Growers Association','C. Grajilla','reg5'),
('asoc6','Sevilla Fruit Growers Association','C. Barcelona','reg6'),
('asoc7','Santiago Fruit Growers Association','C. Luis Pasteur 5655','reg7'),
('asoc8','Biobio Fruit Growers Association','Av. Arturo Prat 199','reg8'),
('asoc9','Quebec Fruit Growers Association','176 Rue Benjamin Hudon','reg9'),
('asoc10','Provenza-Alpes-Costa Azul Fruit Growers Association','Rue Saint-Augustin 06200','reg10'),
('asoc11','Norte Rine-Westfalia Fruit Growers Association','Bahnhofstraße 1','reg11'),
('asoc12','Chubut Fruit Growers Association','Av. Lezama 1227','reg12'),
('asoc13','Michigan Fruit Growers Association','2240 Dias Dr.','reg13');

INSERT INTO Productor VALUES
('p1','American River Cherry Company','2240 Dias Dr.','Caja',NULL,'asoc1','ciu1'),
('p2','FirstFruit Farms LLC','1111 Fishhook Park Rd.','Caja',NULL,'asoc2','ciu2'),
('p3','Azienda Agricola Amidei Bettino','Via Pratomavore 6/A','Bolsa',NULL,'asoc3','ciu4'),
('p4','Fabbri 1905','Via Emilia Ponente 276','Bolsa',NULL,'asoc4','ciu5'),
('p5','Maitena del Genil','C. Grajilla','Mallas',NULL,NULL,'ciu6'),
('p6','Bernardo Herrera','C. Barcelona','Mallas',NULL,NULL,'ciu6'),
('p7','Subsole','C. Luis Pasteur 5655','Cajones',NULL,NULL,'ciu8'),
('p8','Fistur','Av. Arturo Prat 199','Cajones',NULL,'asoc7','ciu7'),
('p9','Agrocan Foods','176 Rue Benjamin Hudon','Caja',NULL,NULL,'ciu9'),
('p10','La Source Aux Fruits','Rue Saint-Augustin 06200','Caja',NULL,NULL,'ciu10'),
('p11','Spreewaldhof','Bahnhofstraße 1','Bolsa',NULL,'asoc11','ciu11'),
('p12','Cerezas de la Patagonia','Av. Lezama 1227','Bolsa',NULL,NULL,'ciu12');

INSERT INTO Cultivo VALUES
('cult1','25',350,'2021-03-20','2021-04-20',20,'v2','p4'), 
('cult2','22',470,'2025-03-20','2025-04-20',30,'v3','p1'), 
('cult3','30',360,'2012-03-20','2012-04-20',21,'v5','p6'), 
('cult4','31',820,'2007-04-01','2007-04-30',62,'v11','p8'), 
('cult5','27',610,'2017-04-01','2017-04-30',50,'v8','p3'), 
('cult6','23',530,'2018-04-01','2018-04-30',37,'v1','p3'), 
('cult7','26',120,'2004-04-13','2004-05-13',60,'v23','p9'), 
('cult8','28',770,'2013-04-13','2013-05-13',45,'v20','p11'), 
('cult9','32',420,'2019-04-21','2019-05-21',21,'v27','p5'); 

INSERT INTO Produccion VALUES
('prod1','2022-05-15',350,'v2','cult1'),
('prod2','2022-05-15',470,'v3','cult2'),
('prod3','2022-05-15',360,'v5','cult3'),
('prod4','2022-05-15',820,'v6','cult4'),
('prod5','2022-05-15',610,'v8','cult5'),
('prod6','2022-05-15',530,'v1','cult6'),
('prod7','2022-05-15',120,'v9','cult7'),
('prod8','2022-05-15',770,'v12','cult8'),
('prod9','2022-05-15',420,'v22','cult9');

INSERT INTO Proveedor VALUES
('prov1','TC Fruits', 'Distribucion de frutas y hortalizas','36692 Barro-Pontevedra','ciu17'),
('prov2','AMS Export','Importacion-exportacion sector agricola','177 E Colorado Blvd #200','ciu18'),
('prov3','GI E GI DI V. GIUFFRIDA','Venta de especias','95040 Camporotondo Etneo','ciu19'),
('prov4','SOCIETA AGRICOLA SALVI VIVAI S.S.','Produccion de verduras y hortalizas','Via Bologna, 71444124 Ferrara','ciu20'),
('prov5','AGRICULTURAL CORPORATION OF VEGORITIDAS-VORAS','Mayorista de frutas','Arnissa-pellas 58002 Arnissa','ciu21'),
('prov6','MILIS FRUIT NUT NURSERY','Comercializacion de platos frutales','590 35 Naousa','ciu22'),
('prov7','Don Carmelo','Proveedor de frutas','3200 Concordia','ciu23'),
('prov8','DERCAM EXPORT IMPORT','Exportador de frutas y Hortalizas','2727 Buenos aires','ciu24'),
('prov9','KALKAN IMPORT EXPORT','Proveedor de frutas congeladas','5431 Cuijk','ciu25');

INSERT INTO Padrino VALUES
('pad1','Juan',NULL,'Garcia',NULL,'ciu1'),
('pad2','Pedro',NULL,'Gonzalez',NULL,'ciu2'),
('pad3','Maria',NULL,'Perez',NULL,'ciu3'),
('pad4','Jose',NULL,'Lopez',NULL,'ciu4'),
('pad5','Luis',NULL,'Martinez',NULL,'ciu5'),
('pad6','Ana',NULL,'Gomez',NULL,'ciu6'),
('pad7','Pablo',NULL,'Rodriguez',NULL,'ciu7'),
('pad8','Sofia',NULL,'Fernandez',NULL,'ciu8'),
('pad9','Miguel',NULL,'Sanchez',NULL,'ciu9');

INSERT INTO Apadrinamiento VALUES
('2022-05-17','2025-05-17',100000,'pad1','p1','v1'),
('2022-01-02',NULL,90000,'pad2','p2','v2'),
('2021-02-09','2024-02-09',150000,'pad3','p3','v3'),
('2022-08-07','2025-08-07',200000,'pad4','p4','v4'),
('2022-12-21',NULL,75000,'pad5','p5','v5'),
('2020-11-24','2023-11-24',67000,'pad6','p6','v6'),
('2021-05-31','2024-05-31',135000,'pad7','p7','v7'),
('2022-02-06',NULL,98000,'pad8','p8','v8'),
('2022-07-11','2025-07-11',112000,'pad9','p9','v9');

INSERT INTO P_Prov VALUES
('p1','prov1'),
('p2','prov2'),
('p3','prov3'),
('p4','prov4'),
('p5','prov5'),
('p6','prov6'),
('p7','prov7'),
('p8','prov8'),
('p9','prov9');

INSERT INTO Convenio VALUES
('conv1','descuento','2021-01-01','2024-01-01','asoc1',NULL,NULL),
('conv2','descuento','2021-02-01','2024-02-01','asoc2',NULL,NULL),
('conv3','descuento','2021-03-01','2024-03-01','asoc3',NULL,NULL),
('conv4','descuento','2021-04-01','2024-04-01','asoc4',NULL,NULL),
('conv5','descuento','2021-05-01','2024-05-01',NULL,'p2','prov2'),
('conv6','descuento','2021-06-01','2024-06-01',NULL,'p6','prov6'),
('conv7','descuento','2021-07-01','2024-07-01',NULL,'p7','prov7'),
('conv8','descuento','2021-08-01','2024-08-01',NULL,'p8','prov8'),
('conv9','descuento','2021-09-01','2024-09-01','asoc9',NULL,NULL);

INSERT INTO Cliente VALUES
('cli1','Benjamin Twiggs','Juridico','1213 East Front Street',100,'ciu13'),
('cli2','Traverse Bay Farms','Juridico','204 River Street',90,'ciu14'),
('cli3','Edeka','Juridico','D-2297 Hamburgo',80,'ciu15'),
('cli4','La Distitalia SRL','Juridico','Giugliano in Campania',70,'ciu16');

INSERT INTO Forma_Pago VALUES
('fp1','Contado',NULL,NULL,NULL,'2022-02-10','2022-02-11','p2'),
('fp2','Contado',NULL,NULL,NULL,'2012-05-20','2012-05-22','p3'),
('fp3','Contado',NULL,NULL,NULL,'2007-07-30','2007-07-31','p4'),
('fp4','Contado',NULL,NULL,NULL,'2017-11-23','2017-11-24','p5'),
('fp5','Cuota',6700,10,1,NULL,NULL,'p6'),
('fp6','Cuota',17550,13,1,NULL,NULL,'p7'),
('fp7','Cuota',17000,17,1,NULL,NULL,'p1'),
('fp8','Cuota',49000,5,1,NULL,NULL,'p8'),
('fp9','Contado',NULL,NULL,NULL,'2019-12-05','2019-12-06','p9');

INSERT INTO Contrato VALUES
('cont1','2021-01-01','2024-01-01',0,100000,'Terrestre','Activo','cli1','p1','fp1'),
('cont2','2022-02-01','2025-02-01',0,90000,'Terrestre','Activo','cli2','p2','fp2'),
('cont3','2012-03-01','2015-03-01',0,150000,'Aereo','Inactivo','cli3','p3','fp3'),
('cont4','2007-04-01','2010-04-01',0,200000,'Maritimo','Inactivo','cli4','p4','fp4'),
('cont5','2017-05-01','2020-05-01',0,75000,'Terrestre','Inactivo','cli1','p5','fp5'),
('cont6','2018-06-01','2021-06-01',0,67000,'Maritimo','Inactivo','cli2','p6','fp6'),
('cont7','2004-07-01','2007-07-01',0,135000,'Maritimo','Inactivo','cli3','p7','fp7'),
('cont8','2013-08-01','2016-08-01',0,98000,'Maritimo','Inactivo','cli4','p8','fp8'),
('cont9','2019-09-01','2023-09-01',0,112000,'Aereo','Activo','cli1','p9','fp9');

INSERT INTO Renovacion VALUES
('ren1','2023-01-01',100000,'cont1','cli1','p1'),
('ren2','2024-02-01',90000,'cont2','cli2','p2'),
('ren3','2014-03-01',150000,'cont3','cli3','p3'),
('ren4','2009-04-01',200000,'cont4','cli4','p4'),
('ren5','2019-05-01',75000,'cont5','cli1','p5'),
('ren6','2020-06-01',67000,'cont6','cli2','p6'),
('ren7','2006-07-01',135000,'cont7','cli3','p7'),
('ren8','2015-08-01',98000,'cont8','cli4','p8'),
('ren9','2022-09-01',112000,'cont9','cli1','p9');

INSERT INTO Pago VALUES
('pag1','2021-01-01',100000,'cont1','cli1','p1'),
('pag2','2022-02-01',90000,'cont2','cli2','p2'),
('pag3','2012-03-01',150000,'cont3','cli3','p3'),
('pag4','2007-04-01',200000,'cont4','cli4','p4'),
('pag5','2017-05-01',75000,'cont5','cli1','p5'),
('pag6','2018-06-01',67000,'cont6','cli2','p6'),
('pag7','2004-07-01',135000,'cont7','cli3','p7'),
('pag8','2013-08-01',98000,'cont8','cli4','p8'),
('pag9','2019-09-01',112000,'cont9','cli1','p9');

INSERT INTO Formula VALUES();

INSERT INTO Detalle_V VALUES
(1,0,'cont1','cli1','p1','cult1'),
(2,0,'cont1','cli1','p1','cult2'),
(3,0,'cont1','cli1','p1','cult3'),
(4,0,'cont1','cli1','p1','cult4'),
(5,0,'cont1','cli1','p1','cult5'),
(6,0,'cont1','cli1','p1','cult6'),
(7,0,'cont1','cli1','p1','cult7'),
(8,0,'cont1','cli1','p1','cult8'),
(9,0,'cont1','cli1','p1','cult9'),
(10,0,'cont2','cli2','p2','cult1'),
(11,0,'cont2','cli2','p2','cult2'),
(12,0,'cont2','cli2','p2','cult3'),
(13,0,'cont2','cli2','p2','cult4'),
(14,0,'cont2','cli2','p2','cult5'),
(15,0,'cont2','cli2','p2','cult6'),
(16,0,'cont2','cli2','p2','cult7'),
(17,0,'cont2','cli2','p2','cult8'),
(18,0,'cont2','cli2','p2','cult9'),
(19,0,'cont3','cli3','p3','cult1'),
(20,0,'cont3','cli3','p3','cult2'),
(21,0,'cont3','cli3','p3','cult3'),
(22,0,'cont3','cli3','p3','cult4'),
(23,0,'cont3','cli3','p3','cult5'),
(24,0,'cont3','cli3','p3','cult6'),
(25,0,'cont3','cli3','p3','cult7'),
(26,0,'cont3','cli3','p3','cult8'),
(27,0,'cont3','cli3','p3','cult9'),
(28,0,'cont4','cli4','p4','cult1'),
(29,0,'cont4','cli4','p4','cult2'),
(30,0,'cont4','cli4','p4','cult3');

INSERT INTO Envio VALUES
('env1',100,'v1','cont1','cli1','p1','cult1'),
('env2',100,'v2','cont2','cli2','p2','cult2'),
('env3',100,'v3','cont3','cli3','p3','cult3'),
('env4',100,'v4','cont4','cli4','p4','cult3'),
('env5',100,'v5','cont4','cli4','p4','cult2'),
('env6',100,'v6','cont3','cli3','p3','cult5'),
('env7',100,'v7','cont1','cli1','p1','cult8'),
('env8',100,'v8','cont2','cli2','p2','cult6'),
('env9',100,'v9','cont3','cli3','p3','cult7');  

INSERT INTO Precio_Promedio VALUES
('p1','2021-01-01','2024-01-01',100,'1','v1','pais1'),
('p2','2021-02-01','2024-02-01',90,'1','v2','pais2'),
('p3','2021-03-01','2024-03-01',80,'1','v3','pais3'),
('p4','2021-04-01','2024-04-01',70,'1','v4','pais4'),
('p5','2021-05-01','2024-05-01',60,'1','v5','pais5'),
('p6','2021-06-01','2024-06-01',50,'1','v6','pais6'),
('p7','2021-07-01','2024-07-01',40,'1','v7','pais7'),
('p8','2021-08-01','2024-08-01',30,'1','v8','pais8'),
('p9','2021-09-01','2024-09-01',20,'1','v9','pais9');

INSERT INTO Resultado_Eval_Anual VALUES
(2021,100,10,'2021-01-01','Aceptado','cli1'),
(2021,90,10,'2021-02-01','Rechazado','cli2'),
(2021,80,10,'2021-03-01','Aceptado','cli3'),
(2021,70,10,'2021-04-01','Rechazado','cli4'),
(2022,60,10,'2021-05-01','Aceptado','cli1'),
(2022,50,10,'2021-06-01','Rechazado','cli2'),
(2022,40,10,'2021-07-01','Aceptado','cli3'),
(2022,30,10,'2021-08-01','Rechazado','cli4'),
(2012,20,10,'2021-09-01','Aceptado','cli1');

INSERT INTO Receta VALUES
('rec1','Gazpacho de Cerezas','Salada','00:10:00',6,NULL,'cli1',NULL),
('rec2','receta2','tipo2','tiempo2',2,'autor2','cli2','p2'),
('rec3','receta3','tipo3','tiempo3',3,'autor3','cli3','p3'),
('rec4','receta4','tipo4','tiempo4',4,'autor4','cli4','p4'),
('rec5','receta5','tipo5','tiempo5',5,'autor5','cli1','p5'),
('rec6','receta6','tipo6','tiempo6',6,'autor6','cli2','p6'),
('rec7','receta7','tipo7','tiempo7',7,'autor7','cli3','p7'),
('rec8','receta8','tipo8','tiempo8',8,'autor8','cli4','p8'),
('rec9','receta9','tipo9','tiempo9',9,'autor9','cli1','p9');

INSERT INTO Elaboracion VALUES
(1,'Remojamos el pan troceado en el agua','rec1'),
(2,'Ponemos todos los ingredientes en la batidora','rec1'),
(1,'Paso1','rec2');

INSERT INTO Ingrediente_Receta VALUES
(1,'gr','rec1','ing1'),
(2,'gr','rec2','ing2'),
(3,'gr','rec3','ing3'),
(4,'gr','rec4','ing4'),
(5,'gr','rec5','ing5'),
(6,'gr','rec6','ing6'),
(7,'gr','rec7','ing7'),
(8,'gr','rec8','ing8'),
(9,'gr','rec9','ing9'),
(10,'gr','rec1','ing10'),
(11,'gr','rec2','ing11'),
(12,'gr','rec3','ing12'),
(13,'gr','rec4','ing13'),
(14,'gr','rec5','ing14'),
(15,'gr','rec6','ing15'),
(16,'gr','rec7','ing16'),
(17,'gr','rec8','ing17'),
(18,'gr','rec9','ing18');

INSERT INTO V_Receta VALUES
(80,'rec1','v1'),
(20,'rec2','v2'),
(30,'rec3','v3'),
(40,'rec4','v4'),
(50,'rec5','v5'),
(60,'rec6','v6'),
(70,'rec7','v7'),
(80,'rec8','v8'),
(90,'rec9','v9');