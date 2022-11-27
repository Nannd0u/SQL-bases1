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
('ciu12','Trelew','Argentina'),
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

INSERT INTO Cultivo VALUES();

INSERT INTO Produccion VALUES();

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
('reg12','Chubut','Argentina'),
('reg13','Michigan','pais2');

INSERT INTO Asociacion VALUES();

INSERT INTO Proveedor VALUES();

INSERT INTO Padrino VALUES();

INSERT INTO Apadrinamiento VALUES();

INSERT INTO P_Prod VALUES();

INSERT INTO Convenio VALUES();

INSERT INTO Cliente VALUES
('cli1','Benjamin Twiggs','Juridico','1213 East Front Street','100','ciu13'),
('cli2','Traverse Bay Farms','Juridico','204 River Street','90','ciu14'),
('cli3','Edeka','Juridico','D-2297 Hamburgo','80','ciu15'),
('cli4','La Distitalia SRL','Juridico','Giugliano in Campania','70','ciu16');

INSERT INTO Forma_Pago VALUES();

INSERT INTO Contrato VALUES();

INSERT INTO Renovacion VALUES();

INSERT INTO Pago VALUES();

INSERT INTO Formula VALUES();

INSERT INTO Detalle_V VALUES();

INSERT INTO Envio VALUES();

INSERT INTO Precio_Promedio VALUES();

INSERT INTO Resultado_Eval_Anual VALUES();

INSERT INTO Receta VALUES();

INSERT INTO Elaboracion VALUES();

INSERT INTO Ingrediente_Receta VALUES();

INSERT INTO V_Receta VALUES();