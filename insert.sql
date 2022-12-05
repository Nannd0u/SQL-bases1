-- ENTIDADES FUERTES --

INSERT INTO Variedad VALUES
('v1','Burlat','Temprana','Francia','referencia de maduracion para las otras variedades'),
('v2','Cristobalina','Extra-temprana','España'),
('v3','Primulat','Extra-temprana','Francia'),
('v4','Nimba','Extra-temprana','Francia'),
('v5','Early Bigi','Extra-temprana','Francia'),
('v6','Early Lori','Extra-temprana','Francia'),
('v7','Sweet Early','Extra-temprana','Italia'),
('v8','Marvin','Temprana','EEUU','Edo. California'),
('v9','Royal Tioga','Temprana','EEUU','Edo. California'),
('v10','Pacific Red','Temprana','EEUU','Edo. California'),
('v11','Brooks','Temprana','EEUU','Edo. California'),
('v12','Rochet','Temprana','EEUU','Edo. California'),
('v13','Royal Hazel','Temprana','EEUU','Edo. California'),
('v14','Rubi','Temprana','EEUU','Edo. California'),
('v15','Early Red','Temprana','Canada'),
('v16','Santina','Temprana','Canada'),
('v17','Celeste','Temprana','Canada'),
('v18','Sabrina','Temprana','Canada'),
('v19','Carmen','Temprana','Hungria'),
('v20','Grace Star','Media Estacion','Italia'),
('v21','Cristalina','Media Estacion','Canada'),
('v22','New Star','Media Estacion','Canada'),
('v23','New Moon','Media Estacion','Canada'),
('v24','Garnet','Media Estacion','EEUU'),
('v25','Utha Giant','Media Estacion','EEUU'),
('v26','Starking',,'Media Estacion','EEUU'),
('v27','Vic','Tardia','Canada'),
('v28','Sylvia','Tardia','Canada'),
('v29','Sunburst','Tardia','Canada'),
('v30','Sonata','Tardia','Canada'),
('v31','Lapins','Tardia','Canada','variedad mas cultivada en el mundo')
('v32','Napoleon','Tardia','Alemania'),
('v32','Kordia','Tardia','Alemania'),
('v32','Blanca de Provenza','Extra-tardia','Francia'),
('v32','Ambrunes','Extra-tardia','España'),
('v32','Pico Negro','Extra-tardia','España'),
('v32','Pico Colorado','Extra-tardia','España'),
('v32','Regina','Alemania');

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
('ing16','Nuez(es)');
('ing17','Vainilla'),
('ing18','Zanahoria(s)');

-- ENTIDADES DEBILES --

INSERT INTO Ciudad VALUES
('ciu1','Placerville','pais2'),
('ciu2','Prescott','pais2'),
('ciu3','Vignola','pais4'),
('ciu4',"Anzola dell'Emilia",'pais4'),
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
('ciu16','Napoles','pais4');

INSERT INTO Productor VALUES
('p1','American River Cherry Company','2240 Dias Dr.', 'Caja','pais2'),
('p2','FirstFruit Farms LLC','1111 Fishhook Park Rd.', 'Caja','pais2'),
('p3','Azienda Agricola Amidei Bettino','Via Pratomavore 6/A','pais4'),
('p4','Fabbri 1905','Via Emilia Ponente 276','pais4'),
('p5','Maitena del Genil','C. Grajilla','pais6'),
('p6','Bernardo Herrera','C. Barcelona','pais6'),
('p7','Subsole','C. Luis Pasteur 5655','pais13'),
('p8','Fistur','Av. Arturo Prat 199','pais13'),
('p9','Agrocan Foods','176 Rue Benjamin Hudon','pais16'),
('p10','La Source Aux Fruits','Rue Saint-Augustin 06200','pais9'),
('p11','Spreewaldhof','Bahnhofstraße 1','pais5'),
('p12','Cerezas de la Patagonia','Av. Lezama 1227','pais17');

INSERT INTO Cultivo VALUES
('cult1','25','350', '15-ABR-22', '22-MAY-22','20','v2','p4'),
('cult2','22','470', '30-MAR-22', '30-ABR-22','30','v3','p1'),
('cult3','30','360', '27-MAY-22', '15-JUN-22','21','v5','p6'),
('cult4','31','820', '21-MAR-22', '28-ABR-22','62','v6','p8'),
('cult5','27','610', '17-MAY-22', '24-JUN-22','50','v8','p3'),
('cult6','23','530', '03-ABR-22', '14-MAY-22','37','v1','p3'),
('cult7','26','120', '01-JUN-22', '02-JUL-22','60','v9','p9'),
('cult8','28','770', '11-MAY-22', '09-JUN-22','45','v12','p11'),
('cult9','32','420', '06-ABR-22', '01-MAY-22','21','v22','p5');

INSERT INTO Produccion VALUES
('prod1','15-ABR-22','350','v2','cult1'),
('prod2','30-MAR-22','470','v3','cult2'),
('prod3','27-MAY-22','360','v5','cult3'),
('prod4','21-MAR-22','820','v6','cult4'),
('prod5','17-MAY-22','610','v8','cult5'),
('prod6','03-ABR-22','530','v1','cult6'),
('prod7','01-JUN-22','120','v9','cult7'),
('prod8','11-MAY-22','770','v12','cult8'),
('prod9','06-ABR-22','420','v22','cult9');

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

INSERT INTO Proveedor VALUES
('prov1','TC Fruits', 'Distribucion de frutas y hortalizas','36692 Barro-Pontevedra'),
('prov2','AMS Export','Importacion-exportacion sector agricola','177 E Colorado Blvd #200'),
('prov3','GI E GI DI V. GIUFFRIDA','Venta de especias','95040 Camporotondo Etneo'),
('prov4','SOCIETA AGRICOLA SALVI VIVAI S.S.','Produccion de verduras y hortalizas','Via Bologna, 71444124 Ferrara'),
('prov5','AGRICULTURAL CORPORATION OF VEGORITIDAS-VORAS','Mayorista de frutas','Arnissa-pellas 58002 Arnissa'),
('prov6','MILIS FRUIT NUT NURSERY','Comercializacion de platos frutales','590 35 Naousa'),
('prov7','Don Carmelo','Proveedor de frutas','3200 Concordia'),
('prov8','DERCAM EXPORT IMPORT','Exportador de frutas y Hortalizas','2727 Buenos aires'),
('prov9','KALKAN IMPORT EXPORT','Proveedor de frutas congeladas','5431 Cuijk');

INSERT INTO Padrino VALUES
('pad1','Juan','Garcia','ciu1'),
('pad2','Pedro','Gonzalez','ciu2'),
('pad3','Maria','Perez','ciu3'),
('pad4','Jose','Lopez','ciu4'),
('pad5','Luis','Martinez','ciu5'),
('pad6','Ana','Gomez','ciu6'),
('pad7','Pablo','Rodriguez','ciu7'),
('pad8','Sofia','Fernandez','ciu8'),
('pad9','Miguel','Sanchez','ciu9'),

INSERT INTO Apadrinamiento VALUES
('17-MAY-22','17-MAY-25','100000','pad1','p1','v1'),
('02-ENE-22','02-ENE-25','90000','pad2','p2','v2'),
('09-FEB-21','09-FEB-24','150000','pad3','p3','v3'),
('07-AGO-22','07-AGO-25','200000','pad4','p4','v4'),
('21-DIC-22','21-DIC-26','75000','pad5','p5','v5'),
('24-NOV-20','24-NOV-23','67000','pad6','p6','v6'),
('31-MAY-21','31-MAY-24','135000','pad7','p7','v7'),
('06-FEB-22','06-FEB-25','98000','pad8','p8','v8'),
('11-JUL-22','11-JUL-25','112000','pad9',',p9','v9');

INSERT INTO P_Prod VALUES
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
('conv1','descuento','01-ENE-21','01-ENE-24','asoc1','p1','prov1'),
('conv2','descuento','01-FEB-21','01-FEB-24','asoc2','p2','prov2'),
('conv3','descuento','01-MAR-21','01-MAR-24','asoc3','p3','prov3'),
('conv4','descuento','01-ABR-21','01-ABR-24','asoc4','p4','prov4'),
('conv5','descuento','01-MAY-21','01-MAY-24','asoc5','p5','prov5'),
('conv6','descuento','01-JUN-21','01-JUN-24','asoc6','p6','prov6'),
('conv7','descuento','01-JUL-21','01-JUL-24','asoc7','p7','prov7'),
('conv8','descuento','01-AGO-21','01-AGO-24','asoc8','p8','prov8'),
('conv9','descuento','01-SEP-21','01-SEP-24','asoc9','p9','prov9');

INSERT INTO Cliente VALUES
('cli1','Benjamin Twiggs','Juridico','1213 East Front Street','100','ciu13'),
('cli2','Traverse Bay Farms','Juridico','204 River Street','90','ciu14'),
('cli3','Edeka','Juridico','D-2297 Hamburgo','80','ciu15'),
('cli4','La Distitalia SRL','Juridico','Giugliano in Campania','70','ciu16');

INSERT INTO Forma_Pago VALUES
('fp1','contado','','','',''),
('fp2','contado','','','',''),
('fp3','contado','','','',''),
('fp4','contado','','','',''),
('fp5','cuota','5','10','',''),
('fp6','cuota','8','13','',''),
('fp7','cuota','12','17','',''),
('fp8','cuota','3','5','',''),
('fp9','contado','','','','');

INSERT INTO Contrato VALUES
('cont1','01-ENE-21','01-ENE-24','0','100000','maritimo','activo','cli1','p1','fp1'),
('cont2','01-FEB-21','01-FEB-24','0','90000','maritimo','activo','cli2','p2','fp2'),
('cont3','01-MAR-21','01-MAR-24','0','150000','maritimo','activo','cli3','p3','fp3'),
('cont4','01-ABR-21','01-ABR-24','0','200000','maritimo','activo','cli4','p4','fp4'),
('cont5','01-MAY-21','01-MAY-24','0','75000','maritimo','activo','cli1','p5','fp5'),
('cont6','01-JUN-21','01-JUN-24','0','67000','maritimo','activo','cli2','p6','fp6'),
('cont7','01-JUL-21','01-JUL-24','0','135000','maritimo','activo','cli3','p7','fp7'),
('cont8','01-AGO-21','01-AGO-24','0','98000','maritimo','activo','cli4','p8','fp8'),
('cont9','01-SEP-21','01-SEP-24','0','112000','maritimo','activo','cli1','p9','fp9');

INSERT INTO Renovacion VALUES
('ren1','01-ENE-21','100000','cont1','cli1','p1'),
('ren2','01-FEB-21','90000','cont2','cli2','p2'),
('ren3','01-MAR-21','150000','cont3','cli3','p3'),
('ren4','01-ABR-21','200000','cont4','cli4','p4'),
('ren5','01-MAY-21','75000','cont5','cli1','p5'),
('ren6','01-JUN-21','67000','cont6','cli2','p6'),
('ren7','01-JUL-21','135000','cont7','cli3','p7'),
('ren8','01-AGO-21','98000','cont8','cli4','p8'),
('ren9','01-SEP-21','112000','cont9','cli1','p9');

INSERT INTO Pago VALUES
('pag1','01-ENE-21','100000','cont1','cli1','p1'),
('pag2','01-FEB-21','90000','cont2','cli2','p2'),
('pag3','01-MAR-21','150000','cont3','cli3','p3'),
('pag4','01-ABR-21','200000','cont4','cli4','p4'),
('pag5','01-MAY-21','75000','cont5','cli1','p5'),
('pag6','01-JUN-21','67000','cont6','cli2','p6'),
('pag7','01-JUL-21','135000','cont7','cli3','p7'),
('pag8','01-AGO-21','98000','cont8','cli4','p8'),
('pag9','01-SEP-21','112000','cont9','cli1','p9');

INSERT INTO Formula VALUES();

INSERT INTO Detalle_V VALUES
('1','0','cont1','cli1','p1','cult1'),
('2','0','cont1','cli1','p1','cult2'),
('3','0','cont1','cli1','p1','cult3'),
('4','0','cont1','cli1','p1','cult4'),
('5','0','cont1','cli1','p1','cult5'),
('6','0','cont1','cli1','p1','cult6'),
('7','0','cont1','cli1','p1','cult7'),
('8','0','cont1','cli1','p1','cult8'),
('9','0','cont1','cli1','p1','cult9'),
('10','0','cont2','cli2','p2','cult1'),
('11','0','cont2','cli2','p2','cult2'),
('12','0','cont2','cli2','p2','cult3'),
('13','0','cont2','cli2','p2','cult4'),
('14','0','cont2','cli2','p2','cult5'),
('15','0','cont2','cli2','p2','cult6'),
('16','0','cont2','cli2','p2','cult7'),
('17','0','cont2','cli2','p2','cult8'),
('18','0','cont2','cli2','p2','cult9'),
('19','0','cont3','cli3','p3','cult1'),
('20','0','cont3','cli3','p3','cult2'),
('21','0','cont3','cli3','p3','cult3'),
('22','0','cont3','cli3','p3','cult4'),
('23','0','cont3','cli3','p3','cult5'),
('24','0','cont3','cli3','p3','cult6'),
('25','0','cont3','cli3','p3','cult7'),
('26','0','cont3','cli3','p3','cult8'),
('27','0','cont3','cli3','p3','cult9'),
('28','0','cont4','cli4','p4','cult1'),
('29','0','cont4','cli4','p4','cult2'),
('30','0','cont4','cli4','p4','cult3');

INSERT INTO Envio VALUES
('env1','100','v1','cont1','cli1','p1','cult1'),
('env2','100','v2','cont2','cli2','p2','cult2'),
('env3','100','v3','cont3','cli3','p3','cult3'),
('env4','100','v4','cont4','cli4','p4','cult4'),
('env5','100','v5','cont5','cli1','p5','cult5'),
('env6','100','v6','cont6','cli2','p6','cult6'),
('env7','100','v7','cont7','cli3','p7','cult7'),
('env8','100','v8','cont8','cli4','p8','cult8'),
('env9','100','v9','cont9','cli1','p9','cult9');

INSERT INTO Precio_Promedio VALUES
('p1','01-ENE-21','01-ENE-24','100','1','v1','pais1'),
('p2','01-FEB-21','01-FEB-24','90','1','v2','pais2'),
('p3','01-MAR-21','01-MAR-24','80','1','v3','pais3'),
('p4','01-ABR-21','01-ABR-24','70','1','v4','pais4'),
('p5','01-MAY-21','01-MAY-24','60','1','v5','pais5'),
('p6','01-JUN-21','01-JUN-24','50','1','v6','pais6'),
('p7','01-JUL-21','01-JUL-24','40','1','v7','pais7'),
('p8','01-AGO-21','01-AGO-24','30','1','v8','pais8'),
('p9','01-SEP-21','01-SEP-24','20','1','v9','pais9');

INSERT INTO Resultado_Eval_Anual VALUES
('2021','100','0.1','01-ENE-21','Aceptado','cli1'),
('2021','90','0.1','01-FEB-21','Rechazado','cli2'),
('2021','80','0.1','01-MAR-21','Aceptado','cli3'),
('2021','70','0.1','01-ABR-21','Rechazado','cli4'),
('2021','60','0.1','01-MAY-21','Aceptado','cli1'),
('2021','50','0.1','01-JUN-21','Rechazado','cli2'),
('2021','40','0.1','01-JUL-21','Aceptado','cli3'),
('2021','30','0.1','01-AGO-21','Rechazado','cli4'),
('2021','20','0.1','01-SEP-21','Aceptado','cli1');

INSERT INTO Receta VALUES
('rec1','receta1','tipo1','tiempo1','raciones1','autor1','cli1','p1'),
('rec2','receta2','tipo2','tiempo2','raciones2','autor2','cli2','p2'),
('rec3','receta3','tipo3','tiempo3','raciones3','autor3','cli3','p3'),
('rec4','receta4','tipo4','tiempo4','raciones4','autor4','cli4','p4'),
('rec5','receta5','tipo5','tiempo5','raciones5','autor5','cli1','p5'),
('rec6','receta6','tipo6','tiempo6','raciones6','autor6','cli2','p6'),
('rec7','receta7','tipo7','tiempo7','raciones7','autor7','cli3','p7'),
('rec8','receta8','tipo8','tiempo8','raciones8','autor8','cli4','p8'),
('rec9','receta9','tipo9','tiempo9','raciones9','autor9','cli1','p9');

INSERT INTO Elaboracion VALUES();

INSERT INTO Ingrediente_Receta VALUES
('1','gramos','rec1','ing1'),
('2','gramos','rec2','ing2'),
('3','gramos','rec3','ing3'),
('4','gramos','rec4','ing4'),
('5','gramos','rec5','ing5'),
('6','gramos','rec6','ing6'),
('7','gramos','rec7','ing7'),
('8','gramos','rec8','ing8'),
('9','gramos','rec9','ing9'),
('10','gramos','rec1','ing10'),
('11','gramos','rec2','ing11'),
('12','gramos','rec3','ing12'),
('13','gramos','rec4','ing13'),
('14','gramos','rec5','ing14'),
('15','gramos','rec6','ing15'),
('16','gramos','rec7','ing16'),
('17','gramos','rec8','ing17'),
('18','gramos','rec9','ing18');

INSERT INTO V_Receta VALUES
('80','rec1','v1'),
('20','rec2','v2'),
('30','rec3','v3'),
('40','rec4','v4'),
('50','rec5','v5'),
('60','rec6','v6'),
('70','rec7','v7'),
('80','rec8','v8'),
('90','rec9','v9');