
create table usuarios(

usuario varchar(20),
contrasenya varchar(15) NOT NULL,
CONSTRAINT PRIMARY KEY(usuario)
);

create table imagenes(

id_imagen integer,
ruta varchar(50) NOT NULL,
CONSTRAINT imagenes_pk PRIMARY KEY(id_imagen)
);

create table fotografos(

nombre varchar (25),
biografia varchar(2000),
quote varchar (150),
CONSTRAINT fotografos_pk PRIMARY KEY(nombre)
);

insert into usuarios (usuario, contrasenya) 
VALUES ('JavierM', '1234');

insert into imagenes(id_imagen, ruta)
VALUES(9,'annie.jpg)';

insert into imagenes(id_imagen, ruta)
VALUES(2,'bresson.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(1,'capa.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(5,'carter.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(4,'fass.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(8,'madoz.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(3,'manray.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(6,'macurry.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(10,'newton.jpg');

insert into imagenes(id_imagen, ruta)
VALUES(7,'sanz.jpg');


/*LOBATO SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Robert Cappa','Su familia se trasladó a vivir a Madrid en 1941 y en 1956 se compró su primera cámara fotográfica.3 En 1964 tomó parte en la Real Sociedad Fotográfica de Madrid. En 1965 con otros fotógrafos fundó el grupo La Colmena. Cuando desapareció el grupo, participó en la creación del Grupo 5.4 Su obra se centra en escenas campestres costumbristas, en imágenes de ciudades provincianas y de sus festejos tradicionales, así como retratos, por lo que se ha considerado como pionero en ese tipo de fotografía antropológica. Otros pioneros de la Escuela de Madrid fueron Carlos Hernández Corcho, Juan Dolcet y Manuel Cruzado Cazador.5 Era miembro de una generación que está a caballo entre los años 1950 y 1970.6 En 1971 abandonó la Real Sociedad Fotográfica por diferencias con Gerardo Vielba y poco después se convirtió en fotógrafo profesional.3
El Ministerio de Cultura, al concederle el Premio Nacional, destacó la coherencia y solidez de su obra, que "constituye un puente entre la nueva vanguardia neorrealista de la postguerra y los métodos de observación fotográfica posteriores a 1968".7
Falleció el 22 de abril de 2015 en Madrid a causa de un cáncer de pulmón.','Hay una fotografía creativa, que es la que me alimenta, y otra que me ha dado de comer. Sobre la creativa sigo trabajando, de la otra ya he dicho que no quiero ni hablar.','sanz.jpg');

/*FASS SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Robert Cappa','Horst Faas (Berlín, 28 de abril de 1933 - 10 de mayo de 2012), fue un corresponsal gráfico de guerra que obtuvo dos premios Pulitzer.
Pasó su infancia en Berlín y con doce años tras finalizar la Segunda Guerra Mundial consiguió pasar a la zona occidental de Alemania. En 1951 comenzó su carrera como fotógrafo en la Agencia Keystone, pero en 1960 fue contratado por la Associated Press con la que desarrolló su trabajo fotográfico hasta su jubilación en 2004. Desde sus comienzos trabajó en escenarios bélicos como Argelia y el Congo, pero fue a partir de los años sesenta su actividad se centró en Vietnam y en 1962 fue nombrado editor en la zona por la Associated Press. Abordaba la fotografía de guerra de una forma cruda, un ejemplo de su postura la mostró mediante su apoyo a la publicación de la fotografía de una niña desnuda que corría huyendo del napalm, tomada por Huynh Cong Ut que está considerada una imagen icónica de esa guerra, también al apoyar la fotografía de Eddie Adams conocida como Vietcong Execution.
Sus imágenes de la guerra de Vietnam le proporcionaron el Premio Pulitzer en 1965. En 1967 fue herido por una granada, lo que le obligó a utilizar una silla de ruedas a partir de ese momento. Sin embargo, continúo realizando reportajes fotográficos y en 1972 obtuvo su segundo Pulitzer, junto a Michel Laurent, por un trabajo sobre la Guerra de Liberación de Bangladés.
En 1972 obtuvo una imagen de uno de los terroristas en la Masacre de Múnich. En 1976 se instaló como editor fotográfico para Europa de la Associated Press. En 1997 recibió el Premio Robert Capa Gold Medal y en 2005 el Premio Dr. Erich Salomon.','Podíamos mostrar la muerte','fass.jpg');
/*MADOZ SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Chema Madoz','José María Rodríguez Madoz nace en Madrid el 20 de enero de 1958. Entre los años 1980 y 1983 cursa Historia del Arte en la Universidad Complutense de Madrid que simultanea con los estudios de fotografía en el Centro de Enseñanza de la Imagen. La Real Sociedad Fotográfica de Madrid expone la primera muestra individual del autor en el año 1983. En 1988 la Sala Minerva del Círculo de Bellas Artes (Madrid) inaugura su programación de fotografía con una exposición de sus trabajos. Dos años después, en 1990, comienza a desarrollar el concepto de objetos, tema constante en su fotografía hasta la fecha. En 1991 el Museo Nacional Centro de Arte Reina Sofía muestra la exposición "Cuatro direcciones: fotografía contemporánea española" que itinerará por varios países. Algunas fotografías de Madoz forman parte de esta exposición. Ese mismo año recibe el Premio Kodak. En 1993 recibe la Bolsa de Creación Artística de la Fundación Cultural Banesto.
La Editorial Art-Plus de Madrid edita en 1995 su primera monografía: el libro Chema Madoz (1985 - 1995). Tres años más tarde es la Editorial Mestizo, A. C., de Murcia quien le publica un tomo al artista, el libro titulado Mixtos - Chema Madoz.
En 1999 el Centro Gallego de Arte Contemporáneo de Santiago de Compostela muestra la exposición individual de trabajos realizados entre 1996 y 1997. A finales de ese año, el Museo Nacional Centro de Arte Reina Sofía le dedica la exposición individual "Objetos 1990 - 1999", que se configura como la primera muestra retrospectiva que este museo dedica a un fotógrafo español en vida.
En el 2000 el fotógrafo madrileño recibe el Premio Nacional de Fotografía de España. Ese mismo año la Bienal de Houston Fotofest le reconoce como "Autor Destacado". Su obra sobrepasa las fronteras españolas llegando no sólo a la ciudad norteamericana sino también hasta el Chateau d´Eau de Toulouse (Francia). Ese año recibió el premio Higashikawa en Japón.','Yo tiro por la calle de en medio. Sigo utilizando una cámara para transmitir esas imágenes. Y me parece que la etiqueta define mi actividad sin ningún tipo de pretensión.','madoz.jpg');
/*KEVIN SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Kevin Carter','Kevin Carter. Reportero gráfico sudafricano. Desde muy joven cuestionó el régimen del apartheid imperante en Sudáfrica. Sirvió como militar en el ejercito de su país durante un breve período de tiempo escapando del servicio, aunque fue capturado y obligado a servir durante cuatro años. Después de presenciar un bombardeo en Pretoria, decidió que quería ser fotógrafo de prensa y comenzó a trabajar para La Estrella de Johannesburgo, exponiendo la brutalidad del apartheid.
En 1994 ganó un premio Pulitzer por una foto que había hecho un año antes al niño sudanés Kong Nyong, al que un buitre estaba acechando. La crítica por esa foto se cernió en su contra, lo que unido a otros problemas personales lo llevaron a quitarse la vida el 27 de julio de 1994.','Estoy atormentado por los recuerdos vívidos de los asesinatos y los cadáveres y la ira y el dolor [...] del morir del hambre o los niños heridos, de los locos del gatillo fácil, a menudo de la policía, de los asesinos verdugos [...] He ido a unirme con Ken, si tengo suerte','carter.jpg');
/*MANRAY SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Man Ray','Su verdadero nombre era Emmanuel Radnitzky. Nació en 1890 en Filadelfia (Estados Unidos) de familia judía, su padre era de Kiev, Ucrania y su madre de Minsk, Bielorrusia.
Su familia se traslada a Nueva York en 1897. Man Ray estudia en la High School y en La Escuela de Bellas Artes del Francisco Social Center de NY. En 1913 pinta su primer cuadro cubista, un retrato de Alfred Stieglitz.
En 1915 hizo el primer one-man-show, con el que se hizo famoso su nombre por América, como uno de los primeros pintores abstractos.
Adquiere su primera cámara para hacer reproducciones de sus cuadros.
Con Duchamp participa en experimentos fotográficos y cinematográficos y en la publicación del número único de New York Dadá. Impulsado por Duchamp,
Man Ray se mudó a París en 1921, con la única excepción de 10 años (entre 1940 y 1951) que vivió en Hollywood durante la Segunda Guerra Mundial, pasó el resto de su vida allí.
Captó la atención con sus primeras fotos abstractas, a las que bautizó como rayogramas. Erróneamente se consideró inventor de la técnica aplicada para ello, que ya la habían experimentado otros artistas anteriormente, entre otros Talbot (hacia 1840) y Schad (1918). Publicó 12 de sus rayogramas bajo el título "Champs delicieux".
Poseedor de una gran imaginación, y siempre al frente de las vanguardias, trabajó con todos los medios posibles: pintura, escultura, fotografía y películas.','Por supuesto, habrá siempre los que miran solamente la técnica, que pidan el "cómo", mientras que otros de una naturaleza más curiosa se preguntarán "porqué','manray.jpg');
/*ANIE SUBIDA*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Annie Leivovitz','Fue la primera mujer en exponer su obra en la Galería Nacional de Retratos de Washington D. C. y la última en retratar al músico John Lennon, antes de que este fuera asesinado en 1980.
Es la fotógrafa mejor pagada del mundo y ha trabajado para revistas como Vanity Fair, Rolling Stone y Vogue.1 En 1984 fue galardonada por la Asociación Estadounidense de Editores de Revistas como Fotógrafa del año.2 En 1988 recibió el premio Clio por la campaña publicitaria de American Express. En abril del 2000, la Biblioteca del Congreso de Estados Unidos le dio el título de «Leyenda viviente».3 En el 2005, la revista American Photo la nombró la fotógrafa más influyente de nuestros tiempos.4 En mayo de 2013 fue galardonada con el Premio Príncipe de Asturias de Comunicación y Humanidades.5
Aunque es conocida principalmente por sus retratos de celebridades, Leibovitz ha practicado la fotografía documental y de paisajes, contratada por la editorial Condé Nast Publications desde 1993.6 7 Sus imágenes son representadas, desde 1977, por la agencia de fotoperiodismo Contact Press Images.','El contenido es más importante. Me  interesa hacer las cosas lo más sencillas posibles','annie.jpg');
/*MCURRY SUBIDO!*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Steve McCurry','Steve McCurry es uno de los mejores fotógrafos de la historia. Su trabajo, publicado en múltiples ocasiones por National Geographic, ha dado la vuelta al mundo y ha mostrado la realidad de una manera directa y sagaz.
Pero la historia de Steve McCurry empezó en la Universidad del Estado de Pennsylvania, donde cursó estudios de cine e historia. Tras graduarse con matrícula en 1974, empezó su carrera como fotógrafo en un periódico de Filadelfia natal. Sin embargo el mundo de los periódicos y las fotografías en blanco y negro se le quedó pequeño. Tras cuatro años en el diario empezó a trabajar como freelance con el objetivo de realizar reportajes sobre geografía, sociedad y política para revistas.
Su primer éxito fotográfico fue la publicación en el New York Times, dando voz e imagen a una guerra que se estaba gestando en Afganistán y Pakistán. Su valentía armado simplemente con una cámara fotográfica hizo que diversos medios le encargaran varios trabajos, entre ellos la revista Time, para quienes cubrió la guerra en 1980. Precisamente en esta época McCurry inició su relación con nosotros, con National Geographic, pidiéndole diversos reportajes sobre variadas temáticas. Pero el punto álgido de la relación de McCurry y National Geographic llegaría con la publicación de, probablemente, la portada de una revista más famosa de la historia. La portada de National Geographic de 1985 de una refugiada afgana terminó consagrándole como un gran fotógrafo.
Ese mismo año Steve fue premiado por las asociaciones de fotógrafos con varios galardones, incluidos el Fotógrafo de Revistas del Año, otorgado por la National Press Photographers Association, y cuatro primeros premios en el World Press Photo Contest. Su fama cuajó definitivamente cuando en 1986 se convirtió en un fotógrafo oficial de la prestigiosa agencia Magnum.','Mi vida está conformado por la urgente necesidad de andar y observar, y mi cámara es mi pasaporte.','mcurry.jpg');
/*NEWTON*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Helmut Newton','Helmut Newton nació en 1920 y su auténtico nombre es Helmut Neustädter. Fue un fotógrafo alemán de origen judío que se vio obligado a abandonar su país por culpa de la II Guerra Mundial.
Su introducción en el mundo de la fotografía data de 1936 cuando comenzó a trabajar como aprendiz en el estudio fotográfico de Else Simón (Yva). Ella era famosa por sus retratos de desnudos y su fotografía de moda. Estuvo allí hasta 1938, año en que abandona su Berlín natal. Pasó varios años en Singapur y Viena y vivió en París más de 25 años.
Helmut Newton trabajó para la edición francesa, inglesa, americana e italiana de la revista Vogue. Sus trabajos también fueron publicados en las revistas Marie Claire o American Playboy.
En la actualidad sus fotografías son muy reconocidas. Newton creó un nuevo estilo en el mundo de la moda, en el canon de belleza y en la admiración del desnudo. Todo esto le granjeó mucho éxito como fotógrafo a pesar de tener muchos detractores en su época.','Una buena fotografía de moda debe parecer cualquier cosa menos una fotografía de moda: un retrato, una foto recuerdo, una de paparazzi...','newton.jpg');
/*BRESSON SUBIDO*/
insert into fotografos(nombre, biografia, quote, rutaretrato)
VALUES('Henry Cartier-Bresson','Henri Cartier Bresson (22 de agosto de 1908 - 3 de agosto de 2004)1 fue un célebre fotógrafo francés considerado por muchos el padre del fotorreportaje. Predicó siempre con la idea de atrapar el instante decisivo, versión traducida de sus "imágenes a hurtadillas". Se trataba, pues, de poner la cabeza, el ojo y el corazón en el mismo momento en el que se desarrolla el clímax de una acción. Fue uno de los mejores fotografos,padre del documentalismo
A lo largo de su carrera, tuvo la oportunidad de retratar a personajes como Pablo Picasso, Henri Matisse, Marie Curie, Édith Piaf, Fidel Castro y Ernesto "Che" Guevara. También cubrió importantes eventos, como la muerte de Gandhi, la Guerra Civil Española, donde filmó el documental sobre el bando republicano "Victorie de la vie", la SGM, en la que estuvo en la Unidad de Cine y Fotografía del ejército galo o la entrada triunfal de Mao Zedong a Pekín. Cartier Bresson fue el primer periodista occidental que pudo visitar la Unión Soviética tras la muerte de Stalin.
Su obra fue expuesta, en el parisino museo del Louvre en 1955.Fue cofundador de la Agencia Magnum.','Durante el trabajo, usted tiene que estar seguro de que no ha dejado ningún agujero, que ha capturado todo, porque después será demasiado tarde','bresson.jpg');


insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(1,'omaha.jpg','Robert Cappa');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(2,'bandera.jpg','Robert Cappa');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(3,'pintor.jpg','Robert Cappa');

insert into imagenes(referencia_por_autor, ruta, autor)/*ESTA HA SIDO BORRADA*/
VALUES(7,'milicianos.jpg','Robert Cappa');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(5,'madre.jpg','Robert Cappa');
insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(6,'refugiados.jpg','Robert Cappa');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(1,'paso.jpg','Rafael Sanz Lobato');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(2,'retrato.jpg','Rafael Sanz Lobato');

insert into imagenes(referencia_por_autor, ruta, autor)
VALUES(3,'bodegón.jpg','Rafael Sanz Lobato');

insert into imagenes(referencia_por_autor, ruta, autor)

VALUES(4,'sombreros.jpg','Rafael Sanz Lobato');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'afgana.jpg','Steve McCurry','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'train.jpg','Steve McCurry','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'retrato.jpg','Steve McCurry','vertical');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'burma.jpg','Steve McCurry','vertical');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'geisha.jpg','Steve McCurry','horizontal');


insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'ejecucion.jpg','Horst Faas','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'helicopteros.jpg','Horst Faas','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'warishell.jpg','Horst Faas','vertical');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'grupo.jpg','Horst Faas','vertical');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'niños.jpg','Horst Faas','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'vulture.jpg','Kevin Carter','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'execution.jpg','Kevin Carter','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'kid.jpg','Kevin Carter','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'soldier.jpg','Kevin Carter','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'magic.jpg','Kevin Carter','horizontal');


insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'stars.jpg','Annie Leibovitz','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'isabel.jpg','Annie Leibovitz','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'actriz.jpg','Annie Leibovitz','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'demimoore.jpg','Annie Leibovitz','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'kateJohn.jpg','Annie Leibovitz','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'bowie.jpg','Helmut Newton','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'rampling.jpg','Helmut Newton','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'foster.jpg','Helmut Newton','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'grace.jpg','Helmut Newton','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'joaquin.jpg','Helmut Newton','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'solarización.jpg','Man Ray','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'eye.jpg','Man Ray','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'rayograma.jpg','Man Ray','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'violin.jpg','Man Ray','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'chica.jpg','Man Ray','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'cuchillo.jpg','Chema Madoz','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'mente.jpg','Chema Madoz','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'tenedor.jpg','Chema Madoz','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'chicacopa.jpg','Chema Madoz','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'boom.jpg','Chema Madoz','horizontal');

insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(1,'ciclista.jpg','Henri Cartier-Bresson','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(2,'carreras.jpg','Henri Cartier-Bresson','horizontal');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(3,'salto.jpg','Henri Cartier-Bresson','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(4,'señor.jpg','Henri Cartier-Bresson','vertical');
insert into imagenes(referencia_por_autor, ruta, autor,alineación)
VALUES(5,'calgon.jpg','Henri Cartier-Bresson','horizontal');

/*lo que sigue está sin subir*/