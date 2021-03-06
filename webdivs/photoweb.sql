-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2017 at 02:35 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoweb`
--
CREATE DATABASE IF NOT EXISTS `photoweb` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `photoweb`;

-- --------------------------------------------------------

--
-- Table structure for table `consejos`
--

CREATE TABLE `consejos` (
  `idconsejo` int(10) NOT NULL,
  `consejo` text COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `consejos`
--

INSERT INTO `consejos` (`idconsejo`, `consejo`) VALUES
(1, 'Evita el JPEG, usa siempre que puedas el formato RAW de tu cámara. La calidad cuesta tiempo.'),
(2, 'No tengas miedo de acercarte al sujeto.'),
(3, 'Conoce las reglas y luego, sáltatelas.'),
(4, 'La regla de los tercios es importante, pero las relgas están para romperlas'),
(5, 'Es muy importante dejar espacio en la zona a la que la persona, mirada u objeto se dirigen, de lo contrario dará sensación de “apretujado”.'),
(6, 'A veces fotografiamos un monumento enorme con una persona delante que apenas se ve. ¡Pídele que se acerque más a la cámara, no muerde!'),
(7, 'Las líneas nos ayudan a dirigir la mirada del espectador al objeto de interés y también a transmitir mayor o menor dinamismo.'),
(8, 'Juega con la repetición de elementos para dar sentido de relación a las distintas partes de la imagen.'),
(9, 'Usa el entorno: una ventana, un marco de una puerta, o la vegetación pueden ayudar a enmarcar tu objeto de interés creando un mayor impacto.'),
(10, '¡Quítale la tapa a la cámara antes de disparar!'),
(11, 'Es preferible que una fotografía quede subexpuesta, antes que sobreexpuesta. Una foto sobreexpuesta, difícilmente puede recuperar la definición de las zonas quemadas, mientras que una foto oscura, siempre es más fácil de aclarar. '),
(11, 'Es preferible que una fotografía quede subexpuesta, antes que sobreexpuesta. Una foto sobreexpuesta, difícilmente puede recuperar la definición de las zonas quemadas, mientras que una foto oscura, siempre es más fácil de aclarar. ');

-- --------------------------------------------------------

--
-- Table structure for table `fotografos`
--

CREATE TABLE `fotografos` (
  `nombre` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `biografia` text COLLATE latin1_general_cs,
  `quote` text COLLATE latin1_general_cs,
  `rutaretrato` varchar(60) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `fotografos`
--

INSERT INTO `fotografos` (`nombre`, `biografia`, `quote`, `rutaretrato`) VALUES
('Annie Leibovitz', 'Fue la primera mujer en exponer su obra en la Galería Nacional de Retratos de Washington D. C. y la última en retratar al músico John Lennon, antes de que este fuera asesinado en 1980.\r\nEs la fotógrafa mejor pagada del mundo y ha trabajado para revistas como Vanity Fair, Rolling Stone y Vogue. En 1984 fue galardonada por la Asociación Estadounidense de Editores de Revistas como Fotógrafa del año. En 1988 recibió el premio Clio por la campaña publicitaria de American Express. En abril del 2000, la Biblioteca del Congreso de Estados Unidos le dio el título de «Leyenda viviente». En el 2005, la revista American Photo la nombró la fotógrafa más influyente de nuestros tiempos. En mayo de 2013 fue galardonada con el Premio Príncipe de Asturias de Comunicación y Humanidades.\r\nAunque es conocida principalmente por sus retratos de celebridades, Leibovitz ha practicado la fotografía documental y de paisajes, contratada por la editorial Condé Nast Publications desde 1993.6  Sus imágenes son representadas, desde 1977, por la agencia de fotoperiodismo Contact Press Images.', 'Para el fotógrafo, la fotografía no es sólo algo que queda registrado. Es la expresión de un punto de vista. El trabajo del fotógrafo es expresar ese punto de vista de forma tan acertada y consciente como le sea posible, con su talento, experiencia e intuición.', 'annie.jpg'),
('Chema Madoz', 'José María Rodríguez Madoz nace en Madrid el 20 de enero de 1958. Entre los años 1980 y 1983 cursa Historia del Arte en la Universidad Complutense de Madrid que simultanea con los estudios de fotografía en el Centro de Enseñanza de la Imagen. La Real Sociedad Fotográfica de Madrid expone la primera muestra individual del autor en el año 1983. En 1988 la Sala Minerva del Círculo de Bellas Artes (Madrid) inaugura su programación de fotografía con una exposición de sus trabajos. Dos años después, en 1990, comienza a desarrollar el concepto de objetos, tema constante en su fotografía hasta la fecha. En 1991 el Museo Nacional Centro de Arte Reina Sofía muestra la exposición \"Cuatro direcciones: fotografía contemporánea española\" que itinerará por varios países. Algunas fotografías de Madoz forman parte de esta exposición. Ese mismo año recibe el Premio Kodak. En 1993 recibe la Bolsa de Creación Artística de la Fundación Cultural Banesto.\r\nLa Editorial Art-Plus de Madrid edita en 1995 su primera monografía: el libro Chema Madoz (1985 - 1995). Tres años más tarde es la Editorial Mestizo, A. C., de Murcia quien le publica un tomo al artista, el libro titulado Mixtos - Chema Madoz.\r\nEn 1999 el Centro Gallego de Arte Contemporáneo de Santiago de Compostela muestra la exposición individual de trabajos realizados entre 1996 y 1997. A finales de ese año, el Museo Nacional Centro de Arte Reina Sofía le dedica la exposición individual \"Objetos 1990 - 1999\", que se configura como la primera muestra retrospectiva que este museo dedica a un fotógrafo español en vida.\r\nEn el 2000 el fotógrafo madrileño recibe el Premio Nacional de Fotografía de España. Ese mismo año la Bienal de Houston Fotofest le reconoce como \"Autor Destacado\". Su obra sobrepasa las fronteras españolas llegando no sólo a la ciudad norteamericana sino también hasta el Chateau d´Eau de Toulouse (Francia). Ese año recibió el premio Higashikawa en Japón.', 'Yo tiro por la calle de en medio. Sigo utilizando una cámara para transmitir esas imágenes. Y me parece que la etiqueta define mi actividad sin ningún tipo de pretensión', 'madoz.jpg'),
('Helmut Newton', 'Helmut Newton nació en 1920 y su auténtico nombre es Helmut Neustädter. Fue un fotógrafo alemán de origen judío que se vio obligado a abandonar su país por culpa de la II Guerra Mundial.\r\nSu introducción en el mundo de la fotografía data de 1936 cuando comenzó a trabajar como aprendiz en el estudio fotográfico de Else Simón (Yva). Ella era famosa por sus retratos de desnudos y su fotografía de moda. Estuvo allí hasta 1938, año en que abandona su Berlín natal. Pasó varios años en Singapur y Viena y vivió en París más de 25 años.\r\nHelmut Newton trabajó para la edición francesa, inglesa, americana e italiana de la revista Vogue. Sus trabajos también fueron publicados en las revistas Marie Claire o American Playboy.\r\nEn la actualidad sus fotografías son muy reconocidas. Newton creó un nuevo estilo en el mundo de la moda, en el canon de belleza y en la admiración del desnudo. Todo esto le granjeó mucho éxito como fotógrafo a pesar de tener muchos detractores en su época.', 'Una buena fotografía de moda debe parecer cualquier cosa menos una fotografía de moda: un retrato, una foto recuerdo, una de paparazzi...', 'newton.jpg'),
('Henri Cartier-Bresson', 'Henri Cartier Bresson (22 de agosto de 1908 - 3 de agosto de 2004) fue un célebre fotógrafo francés considerado por muchos el padre del fotorreportaje. Predicó siempre con la idea de atrapar el instante decisivo, versión traducida de sus \"imágenes a hurtadillas\". Se trataba, pues, de poner la cabeza, el ojo y el corazón en el mismo momento en el que se desarrolla el clímax de una acción. Fue uno de los mejores fotografos,padre del documentalismo\r\nA lo largo de su carrera, tuvo la oportunidad de retratar a personajes como Pablo Picasso, Henri Matisse, Marie Curie, Édith Piaf, Fidel Castro y Ernesto \"Che\" Guevara. También cubrió importantes eventos, como la muerte de Gandhi, la Guerra Civil Española, donde filmó el documental sobre el bando republicano \"Victorie de la vie\", la SGM, en la que estuvo en la Unidad de Cine y Fotografía del ejército galo o la entrada triunfal de Mao Zedong a Pekín. Cartier Bresson fue el primer periodista occidental que pudo visitar la Unión Soviética tras la muerte de Stalin.\r\nSu obra fue expuesta, en el parisino museo del Louvre en 1955.Fue cofundador de la Agencia Magnum.', 'Durante el trabajo, usted tiene que estar seguro de que no ha dejado ningún agujero, que ha capturado todo, porque después será demasiado tarde', 'bresson.jpg'),
('Horst Faas', 'Fue un corresponsal gráfico de guerra que obtuvo dos premios Pulitzer.\r\nPasó su infancia en Berlín y con doce años tras finalizar la Segunda Guerra Mundial consiguió pasar a la zona occidental de Alemania. En 1951 comenzó su carrera como fotógrafo en la Agencia Keystone, pero en 1960 fue contratado por la Associated Press con la que desarrolló su trabajo fotográfico hasta su jubilación en 2004. Desde sus comienzos trabajó en escenarios bélicos como Argelia y el Congo, pero fue a partir de los años sesenta su actividad se centró en Vietnam y en 1962 fue nombrado editor en la zona por la Associated Press. Abordaba la fotografía de guerra de una forma cruda, un ejemplo de su postura la mostró mediante su apoyo a la publicación de la fotografía de una niña desnuda que corría huyendo del napalm, tomada por Huynh Cong Ut que está considerada una imagen icónica de esa guerra, también al apoyar la fotografía de Eddie Adams conocida como Vietcong Execution.\r\nSus imágenes de la guerra de Vietnam le proporcionaron el Premio Pulitzer en 1965. En 1967 fue herido por una granada, lo que le obligó a utilizar una silla de ruedas a partir de ese momento. Sin embargo, continúo realizando reportajes fotográficos y en 1972 obtuvo su segundo Pulitzer, junto a Michel Laurent, por un trabajo sobre la Guerra de Liberación de Bangladés.\r\nEn 1972 obtuvo una imagen de uno de los terroristas en la Masacre de Múnich. En 1976 se instaló como editor fotográfico para Europa de la Associated Press. En 1997 recibió el Premio Robert Capa Gold Medal y en 2005 el Premio Dr. Erich Salomon.', 'Nosotros no trabajamos sobre el resultado, hacer fotografías sobre el sufrimiento y el horror de la guerra es simplemente mejor que no hacerlas', 'faas.jpg'),
('Kevin Carter', 'Kevin Carter. Reportero gráfico sudafricano. Desde muy joven cuestionó el régimen del apartheid imperante en Sudáfrica. Sirvió como militar en el ejercito de su país durante un breve período de tiempo escapando del servicio, aunque fue capturado y obligado a servir durante cuatro años. Después de presenciar un bombardeo en Pretoria, decidió que quería ser fotógrafo de prensa y comenzó a trabajar para La Estrella de Johannesburgo, exponiendo la brutalidad del apartheid.\r\nEn 1994 ganó un premio Pulitzer por una foto que había hecho un año antes al niño sudanés Kong Nyong, al que un buitre estaba acechando. La crítica por esa foto se cernió en su contra, lo que unido a otros problemas personales lo llevaron a quitarse la vida el 27 de julio de 1994.', 'Estoy atormentado por los recuerdos vívidos de los asesinatos y los cadáveres y la ira y el dolor [...] del morir del hambre o los niños heridos, de los locos del gatillo fácil, a menudo de la policía, de los asesinos verdugos [...] He ido a unirme con Ken', 'carter.jpg'),
('Man Ray', 'Su verdadero nombre era Emmanuel Radnitzky. Nació en 1890 en Filadelfia (Estados Unidos) de familia judía, su padre era de Kiev, Ucrania y su madre de Minsk, Bielorrusia.\r\nSu familia se traslada a Nueva York en 1897. Man Ray estudia en la High School y en La Escuela de Bellas Artes del Francisco Social Center de NY. En 1913 pinta su primer cuadro cubista, un retrato de Alfred Stieglitz.\r\nEn 1915 hizo el primer one-man-show, con el que se hizo famoso su nombre por América, como uno de los primeros pintores abstractos.\r\nAdquiere su primera cámara para hacer reproducciones de sus cuadros.Con Duchamp participa en experimentos fotográficos y cinematográficos y en la publicación del número único de New York Dadá. Impulsado por Duchamp,\r\nMan Ray se mudó a París en 1921, con la única excepción de 10 años (entre 1940 y 1951) que vivió en Hollywood durante la Segunda Guerra Mundial.\r\nCaptó la atención con sus primeras fotos abstractas, a las que bautizó como rayogramas. Erróneamente se consideró inventor de la técnica aplicada para ello, que ya la habían experimentado otros artistas anteriormente, entre otros Talbot (hacia 1840) y Schad (1918). Publicó 12 de sus rayogramas bajo el título \"Champs delicieux\".\r\nPoseedor de una gran imaginación, y siempre al frente de las vanguardias, trabajó con todos los medios posibles: pintura, escultura, fotografía y películas.', 'Por supuesto, habrá siempre los que miran solamente la técnica, que pidan el cómo, mientras que otros de una naturaleza más curiosa se preguntarán porqué', 'manray.jpg'),
('Rafael Sanz Lobato', 'Su familia se trasladó a vivir a Madrid en 1941 y en 1956 se compró su primera cámara fotográfica. En 1964 tomó parte en la Real Sociedad Fotográfica de Madrid. En 1965 con otros fotógrafos fundó el grupo La Colmena. Cuando desapareció el grupo, participó en la creación del Grupo . Su obra se centra en escenas campestres costumbristas, en imágenes de ciudades provincianas y de sus festejos tradicionales, así como retratos, por lo que se ha considerado como pionero en ese tipo de fotografía antropológica. Otros pioneros de la Escuela de Madrid fueron Carlos Hernández Corcho, Juan Dolcet y Manuel Cruzado Cazador. Era miembro de una generación que está a caballo entre los años 1950 y 1970. En 1971 abandonó la Real Sociedad Fotográfica por diferencias con Gerardo Vielba y poco después se convirtió en fotógrafo profesional.\r\nEl Ministerio de Cultura, al concederle el Premio Nacional, destacó la coherencia y solidez de su obra, que \"constituye un puente entre la nueva vanguardia neorrealista de la postguerra y los métodos de observación fotográfica posteriores a 1968\".\r\nFalleció el 22 de abril de 2015 en Madrid a causa de un cáncer de pulmón.', 'La belleza de un haluro de plata jamás podrá ser igualada por lo digital', 'sanz.jpg'),
('Robert Cappa', 'Robert Capa es el seudónimo de Endré Frieddman. Nació en Budapest, Hungría, en 1913. Pronto emigró a Berlín por sus ideas de izquierdas. Allí comenzó a trabajar en la agencia de noticias Dephot.\r\nEn 1933 emigra a París, huyendo de Hitler. Es allí donde conoce a sus futuros socios de la agencia Magnum, Henri Cartier-Bresson y David Saymour \"Chim\". Con ellos comienza a fotografiar las revueltas provocadas por el Frente Popular.\r\nEn París conoce también a la fotógrafa Gertha Pohorylle, que era una joven refugiada de la Alemania nazi. Pronto se convirtió en su pareja y lo acompañó a multitud de viajes. Adoptó el seudónimo de Gerda Taro y se cree que fue ella quien bautizó a Endré con el nombre de Robert Capa. Juntos fotografiaban con el seudónimo \"Robert Capa\"; siendo difícil saber qué fotos son de cada uno. Gerda murió en Brunete en 1937 atropellada por un tanque.\r\n\r\nRobert Capa es mundialmente conocido por sus fotografías de guerra. Una de sus imágenes más famosas la tomó en Córdoba durante la Guerra Civil Española y se llama \"Muerte de un miliciano\".\r\nTambién acompañó al ejército aliado de EEUU en la II Guerra Mundial. Esto le dio oportunidad de sacar fotografías tan impactantes como las del Desembarco de Normandía en 1944.\r\nEn 1947, fundó, junto con David \"Chim\" Seymour, Henri Cartier-Bresson, George Rodger y William Vandivert, la organización Magnum Photos, la primera agencia de cooperación para fotógrafos independientes de todo el planeta.\r\nViajó por todo el mundo buscando las mejores instantáneas para su cámara. Esto le llevó a México, Italia, Francia, Japón, Indochina, Vietnam, Inglaterra o al norte de África.\r\nCuando Capa no estaba fotografiando alguna guerra le gustaba codearse con la alta sociedad y los artistas del momento. Así conoció y retrató a personajes como Pablo Picasso, Ernest Hemingway, Ingrid Bergman, o Gary Cooper. Irwin Shaw afirmaba con ironía que el código de conducta de Capa era \"ser jovial\", incluso en las circunstancias más difíciles.\r\nRobert Capa solía afirmar que siempre había que estar listo para ir o a una taberna o a una guerra. No importaba ni la hora, ni lo poco atractiva que pudiera parecer esa guerra.\r\nCapa murió en 1954 tras pisar una mina en Vietnam mientras acompañaba a un destacamento francés.', 'Si tus fotos no son lo suficientemente buenas, es que no te has acercado lo suficiente\r\n', 'capa.jpg'),
('Steve McCurry', 'Steve McCurry es uno de los mejores fotógrafos de la historia. Su trabajo, publicado en múltiples ocasiones por National Geographic, ha dado la vuelta al mundo y ha mostrado la realidad de una manera directa y sagaz.\r\nPero la historia de Steve McCurry empezó en la Universidad del Estado de Pennsylvania, donde cursó estudios de cine e historia. Tras graduarse con matrícula en 1974, empezó su carrera como fotógrafo en un periódico de Filadelfia natal. Sin embargo el mundo de los periódicos y las fotografías en blanco y negro se le quedó pequeño. Tras cuatro años en el diario empezó a trabajar como freelance con el objetivo de realizar reportajes sobre geografía, sociedad y política para revistas.\r\nSu primer éxito fotográfico fue la publicación en el New York Times, dando voz e imagen a una guerra que se estaba gestando en Afganistán y Pakistán. Su valentía armado simplemente con una cámara fotográfica hizo que diversos medios le encargaran varios trabajos, entre ellos la revista Time, para quienes cubrió la guerra en 1980. Precisamente en esta época McCurry inició su relación con nosotros, con National Geographic, pidiéndole diversos reportajes sobre variadas temáticas. Pero el punto álgido de la relación de McCurry y National Geographic llegaría con la publicación de, probablemente, la portada de una revista más famosa de la historia. La portada de National Geographic de 1985 de una refugiada afgana terminó consagrándole como un gran fotógrafo.\r\nEse mismo año Steve fue premiado por las asociaciones de fotógrafos con varios galardones, incluidos el Fotógrafo de Revistas del Año, otorgado por la National Press Photographers Association, y cuatro primeros premios en el World Press Photo Contest. Su fama cuajó definitivamente cuando en 1986 se convirtió en un fotógrafo oficial de la prestigiosa agencia Magnum.', 'Mi vida está conformada por la urgente necesidad de andar y observar, y mi cámara es mi pasaporte', 'mcurry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `imagenes`
--

CREATE TABLE `imagenes` (
  `referencia_por_autor` int(11) NOT NULL,
  `ruta` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `autor` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `alineación` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `imagenes`
--

INSERT INTO `imagenes` (`referencia_por_autor`, `ruta`, `autor`, `alineación`) VALUES
(3, 'actriz.jpg', 'Annie Leibovitz', 'vertical'),
(1, 'afgana.jpg', 'Steve McCurry', 'horizontal'),
(2, 'bandera.jpg', 'Robert Cappa', 'horizontal'),
(5, 'bodegón.jpg', 'Rafael Sanz Lobato', ''),
(5, 'boom.jpg', 'Chema Madoz', 'horizontal'),
(1, 'bowie.jpg', 'Helmut Newton', 'horizontal'),
(4, 'burma.jpg', 'Steve McCurry', 'vertical'),
(5, 'calgon.jpg', 'Henri Cartier-Bresson', 'horizontal'),
(2, 'carreras.jpg', 'Henri Cartier-Bresson', 'horizontal'),
(5, 'chica.jpg', 'Man Ray', 'horizontal'),
(4, 'chicacopa.jpg', 'Chema Madoz', 'vertical'),
(1, 'ciclista.jpg', 'Henri Cartier-Bresson', 'horizontal'),
(1, 'cuchillo.jpg', 'Chema Madoz', 'horizontal'),
(4, 'demimoore.jpg', 'Annie Leibovitz', 'vertical'),
(2, 'execution.jpg', 'Kevin Carter', 'horizontal'),
(2, 'eye.jpg', 'Man Ray', 'horizontal'),
(3, 'foster.jpg', 'Helmut Newton', 'vertical'),
(5, 'geisha.jpg', 'Steve McCurry', 'horizontal'),
(4, 'grace.jpg', 'Helmut Newton', 'vertical'),
(4, 'grupo.jpg', 'Horst Faas', 'vertical'),
(2, 'helicopteros.jpg', 'Horst Faas', 'horizontal'),
(2, 'isabel.jpg', 'Annie Leibovitz', 'horizontal'),
(5, 'joaquin.jpg', 'Helmut Newton', 'horizontal'),
(5, 'kateJohn.jpg', 'Annie Leibovitz', 'horizontal'),
(3, 'kid.jpg', 'Kevin Carter', 'vertical'),
(2, 'madre.jpg', 'Robert Cappa', 'vertical'),
(5, 'magic.jpg', 'Kevin Carter', 'horizontal'),
(3, 'matanza.jpg', 'Rafael Sanz Lobato', ''),
(2, 'mente.jpg', 'Chema Madoz', 'horizontal'),
(1, 'mujer.jpg', 'Horst Faas', 'horizontal'),
(5, 'niños.jpg', 'Horst Faas', 'horizontal'),
(1, 'omaha.jpg', 'Robert Cappa', 'horizontal'),
(1, 'paso.jpg', 'Rafael Sanz Lobato', ''),
(5, 'pintor.jpg', 'Robert Cappa', 'horizontal'),
(2, 'rampling.jpg', 'Helmut Newton', 'horizontal'),
(3, 'rayograma.jpg', 'Man Ray', 'vertical'),
(4, 'refugiados.jpg', 'Robert Cappa', 'vertical'),
(3, 'retrato.jpg', 'Steve McCurry', 'vertical'),
(3, 'salto.jpg', 'Henri Cartier-Bresson', 'vertical'),
(4, 'señor.jpg', 'Henri Cartier-Bresson', 'vertical'),
(1, 'solarización.jpg', 'Man Ray', 'horizontal'),
(4, 'soldier.jpg', 'Kevin Carter', 'vertical'),
(2, 'sombreros.jpg', 'Rafael Sanz Lobato', ''),
(1, 'stars.jpg', 'Annie Leibovitz', 'horizontal'),
(3, 'tenedor.jpg', 'Chema Madoz', 'vertical'),
(4, 'torero.jpg', 'Rafael Sanz Lobato', ''),
(2, 'train.jpg', 'Steve McCurry', 'horizontal'),
(4, 'violin.jpg', 'Man Ray', 'vertical'),
(1, 'vulture.jpg', 'Kevin Carter', 'horizontal'),
(2, 'warishell.jpg', 'Horst Faas', 'vertical');

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE `noticias` (
  `titulo` varchar(150) COLLATE latin1_general_cs NOT NULL,
  `fecha` date NOT NULL,
  `texto` text COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`titulo`, `fecha`, `texto`) VALUES
('Alfred Fried Photography Award', '2017-06-04', 'Presentación: On-line /\r\nParticipantes: Todo el mundo /\r\nPaís organizador: Austria /\r\nTemática: Paz /\r\nOtros de interés: Nada que destacar.'),
('Certamen de Fotografía “Ciudad de Tomelloso”', '2017-06-29', 'Presentación: Papel Fotográfico /\r\nParticipantes: Todo el mundo /\r\nPaís organizador: España /\r\nTemática: Tema Libre /\r\nOtros de interés: Nada que destacar.'),
('Hasselblad Masters 2018', '2017-06-10', 'Presentación: On-line/\r\nParticipantes: Fotógrafos profesionales /\r\nPaís organizador: Suecia /\r\nTemática: Varias categorías /\r\nOtros de interés: Nada que destacar /'),
('Nikon D7500 en 4K', '2017-04-25', 'La Nikon D7500 entra de lleno en la gama de las cámaras DX de la marca, y lo hace además heredando el sensor que actualmente incorpora la cámara Nikon D500. La cámara hereda esta característica en forma de un sensor APS-C DX de 20,9 megapíxeles que consigue estirar el rango de la ISO hasta el valor de ISO 51.200.');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `contrasenya` varchar(15) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasenya`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fotografos`
--
ALTER TABLE `fotografos`
  ADD PRIMARY KEY (`nombre`);

--
-- Indexes for table `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`ruta`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`titulo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
