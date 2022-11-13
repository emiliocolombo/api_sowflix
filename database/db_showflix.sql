-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_showflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `atp` tinyint(1) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`atp`, `genero`) VALUES
(1, 'ciencia ficcion'),
(1, 'comedia'),
(1, 'infantil'),
(0, 'nacional'),
(0, 'terror');

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre_pelicula` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `duracion` time NOT NULL,
  `director` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre_pelicula`, `imagen`, `duracion`, `director`, `genero`, `descripcion`) VALUES
(1, 'intensamente 2', 'img/intensamente.jpg', '01:52:35', 'Pete Docter', 'infantil', 'Riley es una pequeña de doce años que se muda a San Francisco por culpa del trabajo de su papá. La idea del cambio no le parece una buena idea. La niña se acerca a la adolescencia y las emociones que conviven dentro de su cabeza arman una verdadera revolución.'),
(2, 'El Rey Leon', 'img/elreyleon.jpg', '02:21:12', 'Rob Minkoff/Roger Allers', 'infantil', 'El rey león es la historia de Simba, un joven león destinado a convertirse en rey de la sabana africana. Su feliz infancia llega a su fin cuando su malvado tío Scar logra matar al rey para quedarse con el trono y obliga a Simba a huir a tierras lejanas.'),
(3, 'Relatos Salvajes', 'img/relatos_salvajes.jpg', '01:42:03', 'Damián Szifron', 'nacional', 'Relatos salvajes es una película hispano-argentina escrita y dirigida por el cineasta Damián Szifron que se estrenó en el año 2014. La película gira en torno a seis historias autoconclusivas, cuyo nexo entre ellas es siempre la violencia.'),
(4, 'El Conjuro', 'img/elconjuro.jpg', '02:26:35', 'James Wan', 'terror', 'La historia se basa en uno de los muchos casos de actividad paranormal atendidos por los Warren; se trata del caso de la familia Perron, que ha experimentando eventos perturbadores en su casa recién adquirida en Rhode Island.'),
(5, 'Cars', 'img/cars.jpg', '02:00:00', 'Jhon Lasseter', 'infantil', 'El aspirante a campeón de carreras Rayo McQueen parece que está a punto de conseguir el éxito. Su actitud arrogante se desvanece cuando llega a una pequeña comunidad olvidada que le enseña las cosas importantes de la vida que había olvidado.'),
(6, 'Babadook', 'img/babadook.jpg', '01:56:30', 'Jennifer Kent', 'terror', 'Seis años después de la violenta muerte de su marido, Amelia sigue intentando educar a su hijo de seis años, Samuel, que vive aterrorizado por un monstruo que se le aparece en sueños y amenaza con asesinarlos. Un inquietante libro de cuentos, \"The Babadook\", aparece en la casa. Samuel está convencido de que el \"Babadook\" es la criatura que aparece en sus sueños.'),
(7, 'sing', 'img/sing.png', '01:32:20', 'Garth Jennings', 'infantil', 'Buster Moon ama su teatro y es capaz de cualquier cosa para salvarlo. Sabe que su sueño está a punto de desaparecer y solo tiene una oportunidad: organizar el concurso de canto más grande del mundo. Tras varias etapas, quedan 5 finalistas: Mike, un ratón con voz suave; Meena, una elefanta adolescente con miedo escénico; Rosita, la exhausta madre de 25 cerditos; Johnny, un joven gorila mafioso; y Ash, una puercoespín punk-rock que quiere deshacerse de su arrogante novio y cantar en solitario.'),
(8, 'el lorax', 'img/el_lorax.png', '02:06:03', 'Chris Renaud', 'infantil', 'Un chico se propone conquistar el afecto de la chica de sus sueños. Para conseguirlo, debe averiguar la historia del Lorax, una encantadora aunque gruñona criatura que lucha por proteger un mundo en vías de extinción.'),
(9, 'siniestro', 'img/siniestro.png', '02:26:35', 'Scott Derrickson', 'terror', 'Ellison Oswald, escritor de historias criminales está en una mala racha, no ha tenido un éxito en más de 10 años y está desesperado. Cuando descubre una película que muestra las muertes de una familia, él promete resolver el misterio. Él mueve a su propia familia a la casa de las víctimas y se pone a trabajar. Sin embargo, cuando unas imágenes antiguas y otras pistas apuntan a una presencia sobrenatural, Ellison descubre que vivir en esa casa podría poner a su propia familia en peligro.'),
(10, 'siniestro 2', 'img/siniestro2.png', '01:55:53', 'Ciaran Foy', 'terror', 'Los gemelos de 9 años, Dylan y Zach Collins, se han mudado junto a su madre Courtney a una casa rural en Illinois. El hogar y la propiedad están lo suficientemente aisladas como para esconderse del peligroso marido de Courtney, Clint. Lo que desconocen es que la propia casa está marcada por la muerte. El antiguo oficial de policía está convencido de que la casa es el próximo lugar de manifestación para el Bughuul.\n'),
(11, 'masacre en texas', 'img/masacre_en_texas.png', '01:45:13', 'Tobe Hooper', 'terror', 'Un grupo de jóvenes se pierde en medio de las desérticas carreteras de Texas, y termina encontrándose con una familia de matarifes que los persigue con una sierra mecánica, descuartizándolos uno por uno.'),
(12, 'el cuento de las comadrejas', 'img/el_cuento_de_las_comadrejas.png', '01:42:03', 'Juan José Campanella', 'nacional', 'Una bella estrella de la época dorada del cine, un actor en el ocaso de su vida, un escritor cinematográfico frustrado y un viejo director hacen lo imposible por conservar el mundo que han creado en una vieja mansión ante la llegada de dos jóvenes aventureros que representan una inminente amenaza.'),
(13, 'el robo del siglo', 'img/el_robo_del_siglo.png', '01:55:53', 'Ariel Winograd', 'nacional', 'Viernes 13 de enero de 2006. Los policías aguardan la voz de su jefe. Miguel Sileo, el negociador, espera hablar con Vitette, uno de los líderes de la banda de ladrones que entró a la sucursal del Banco Río de Acassuso.'),
(14, 'un cuento chino', 'img/un_cuento_chino.png', '02:00:00', 'Sebastián Borensztein', 'nacional', 'Roberto es un hombre solitario que tiene una tienda de informática. Un día ve como un taxista echa del coche a un hombre chino que no habla nada de español. El chino, llamado Jun, le enseña un tatuaje con una dirección y Roberto le lleva hasta allí. El lugar pertenecía al tío de Jun, pero lo vendió tres años atrás. Sin ningún sitio donde poder ir, Roberto acoge a Jun en su casa y encuentra un repartidor que puede hacer de traductor.En ese momento aprende la dramática historia de Jun.'),
(16, 'el clan', 'img/el_clan.png', '01:52:35', 'Pablo Trapero', 'nacional', 'Hacia afuera la familia de los Puccio guarda una apariencia discreta. No obstante, tras la aparente normalidad el clan de los Puccio es una familia sin escrúpulos que asegura sus ingresos a base de secuestros y extorsiones. Por un lado, Arquímedes, el patriarca, lidera las operaciones, mientras que Alejandro, el hijo mayor, se sirve de su popularidad para no levantar sospechas. Solo cuando Alejandro muestra sus dudas por las prácticas de su familia, el patriarca pierde la compostura.'),
(17, 'son como niños', 'img/son_como_niños.png', '01:55:53', 'Dennis Dugan', 'comedia', 'La muerte de su entrenador de baloncesto durante su infancia provoca la reunión de algunos viejos amigos, quienes se ven en el lugar en el que celebraron un campeonato años atrás. Los compañeros hablan sobre sus esposas y sus hijos, y descubren que la edad no necesariamente va de la mano con la madurez.'),
(18, 'son como niños 2', 'img/son_como_niños2.png', '02:21:12', 'Dennis Dugan', 'comedia', 'Tres años después de la reunión que volvió a unirlo a sus amigos de la infancia, Lenny Feder regresa junto a su familia a su pueblo natal para poder estar más cerca de sus amigos, a los que echa verdaderamente de menos.'),
(19, 'zombieland', 'img/zombieland.png', '01:35:53', 'Ruben Fleischer', 'comedia', 'En un mundo plagado de zombis, Columbus es un joven que vive aterrorizado. Sin embargo, precisamente el miedo y la cobardía le han permitido sobrevivir. Un día conoce a Tallahassse, un gamberro cazazombies cuyo único deseo en la vida es lograr el último Twinkie de la Tierra.'),
(20, 'scary movie', 'img/scary_movie.png', '01:56:30', 'Keenen Ivory Wayans', 'comedia', 'En esta parodia de las películas de terror modernas, un año después de atropellar a un hombre y deshacerse del cadáver, un grupo de adolescentes es acechado por un asesino en serie bastante inútil.'),
(21, 'scary movie 2', 'img/scary_movie2.png', '01:35:53', 'Keenen Ivory Wayans', 'comedia', 'Un profesor loco recluta a una chica y a un grupo de jóvenes, todos ellos deseosos de vivir aventuras y nuevas experiencias, para una salida de fin de semana. Una vez allí todos se instalan, con el pretexto de realizar un experimento científico sobreT desórdenes del sueño, en una caso que resulta estar embrujada, lo cual es adecuado para el propósito real del profesor.'),
(22, 'harry potter y la piedra filosofal', 'img/harry_potter1.png', '02:26:35', 'Chris Columbus', 'ciencia ficcion', 'El día en que cumple once años, Harry Potter descubre que es hijo de dos conocidos hechiceros, de los que ha heredado poderes mágicos. Deberá acudir entonces a una famosa escuela de magia y hechicería: Howards.'),
(23, 'Harry Potter y la cámara secreta', 'img/harry_potter2.png', '02:35:53', 'Chris Columbus', 'ciencia ficcion', 'Terminado el verano, Harry no ve la hora de abandonar la casa de sus odiosos tíos. Inesperadamente se presenta en su dormitorio Dobby, un elfo doméstico, que le anuncia que correrá un gran peligro si vuelve a Hogwarts.'),
(24, 'jurassic park', 'img/jurassic_park.png', '02:00:00', 'Steven Spielberg', 'ciencia ficcion', 'El multimillonario John Hammond hace realidad su sueño de clonar dinosaurios del Jurásico y crear con ellos un parque temático en una isla. Antes de abrir el parque al público general, Hammond invita a una pareja de científicos y a un matemático para que comprueben la viabilidad del proyecto. Sin embargo, el sistema de seguridad falla y los dinosaurios se escapan.');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `cant_copias` smallint(6) NOT NULL,
  `precio_usd` int(11) NOT NULL,
  `id_pelicula` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`cant_copias`, `precio_usd`, `id_pelicula`) VALUES
(1, 6, 1),
(0, 5, 2),
(0, 9, 3),
(1, 7, 4),
(0, 6, 5),
(1, 4, 6),
(7, 3, 7),
(5, 3, 8),
(2, 6, 9),
(11, 7, 10),
(3, 4, 11),
(4, 8, 12),
(3, 3, 13),
(5, 5, 14),
(5, 4, 16),
(6, 7, 17),
(6, 4, 18),
(7, 8, 19),
(6, 7, 20),
(1, 4, 21),
(3, 9, 22),
(4, 6, 23),
(1, 8, 24);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` text NOT NULL,
  `es_admin` tinyint(1) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `email`, `password`, `es_admin`, `id_usuario`) VALUES
('Emilio Colombo', 'emiliocolombo97@gmail.com', '$2a$12$5s2ICfIHHCVJ6XDiUj.3R.XZTbGmDDBmTis/mlIpCH73xJDu4qcM.', 1, 1),
('Geronimo Serratti', 'geronimoserratti@gmail.com', '$2a$12$Y4qKVUHMqss2E0Q8cErEDOHACScS/640iBtVocBVOPSiX1nc/VI/u', 0, 2),
('santiago', 'santiagonicola@gmail.com', '$2y$10$Z1RU5I3LbtOcx3olC5Pn0OqU6uVA4Fnlwcl8C04QSNCRJtWnjJ20e', 0, 3),
('clarita paskvan', 'clarapaskvan@gmail.com', '$2y$10$YIiiwrStc.B8zcjekwRy4OjzM.CSko8vL.sSwArs5cl12eq5beY76', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id_pelicula` int(11) NOT NULL,
  `precio_vendido` int(11) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `id_transaccion` smallint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id_pelicula`, `precio_vendido`, `id_usuario`, `id_transaccion`) VALUES
(1, 6, 2, 34),
(4, 7, 2, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`genero`);

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_genero` (`genero`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD UNIQUE KEY `fk_peliculas` (`id_pelicula`) USING BTREE;

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_transaccion`),
  ADD KEY `fk_venta_pelicula` (`id_pelicula`),
  ADD KEY `fk_venta_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_transaccion` smallint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_genero` FOREIGN KEY (`genero`) REFERENCES `generos` (`genero`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_peliculas` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id`);

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_venta_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id`),
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
