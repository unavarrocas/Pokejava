-- ========================================================
-- Script de creación e inserción para pokemons_db
-- ========================================================

-- 1. POKEMONS

CREATE DATABASE IF NOT EXISTS pokemons_db;
USE pokemons_db;

DROP TABLE IF EXISTS equipo_integrantes;
DROP TABLE IF EXISTS pokemon_movimientos;
DROP TABLE IF EXISTS equipos;
DROP TABLE IF EXISTS movimientos;
DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    ps INT,
    ataque INT,
    defensa INT,
    at_especial INT,
    def_especial INT,
    velocidad INT
);

-- Insert de pokemons

INSERT INTO pokemons (id, nombre, tipo, ps, ataque, defensa, at_especial, def_especial, velocidad) VALUES
(1, 'Turtwig', 'Planta', 130, 96, 84, 65, 75, 51),
(2, 'Grotle', 'Planta', 150, 119, 105, 75, 85, 56),
(3, 'Torterra', 'Planta/Tierra', 170, 141, 125, 95, 105, 76),
(4, 'Chimchar', 'Fuego', 119, 78, 64, 78, 64, 89),
(5, 'Monferno', 'Fuego/Lucha', 139, 98, 72, 98, 72, 111),
(6, 'Infernape', 'Fuego/Lucha', 151, 124, 91, 124, 91, 140),
(7, 'Piplup', 'Agua', 128, 71, 73, 89, 76, 60),
(8, 'Prinplup', 'Agua', 139, 86, 88, 111, 96, 70),
(9, 'Empoleon', 'Agua/Acero', 159, 106, 108, 144, 121, 80),
(10, 'Starly', 'Normal/Volador', 115, 75, 50, 50, 50, 88),
(11, 'Staravia', 'Normal/Volador', 130, 95, 70, 60, 60, 110),
(12, 'Staraptor', 'Normal/Volador', 160, 154, 90, 70, 80, 120),
(13, 'Bidoof', 'Normal', 134, 65, 60, 55, 60, 56),
(14, 'Bibarel', 'Normal/Agua', 154, 115, 80, 75, 80, 91),
(15, 'Kricketot', 'Bicho', 112, 45, 67, 45, 61, 45),
(16, 'Kricketune', 'Bicho', 152, 115, 71, 75, 71, 85),
(17, 'Shinx', 'Eléctrico', 120, 93, 54, 60, 54, 65),
(18, 'Luxio', 'Eléctrico', 135, 115, 69, 80, 69, 80),
(19, 'Luxray', 'Eléctrico', 155, 154, 99, 115, 99, 90),
(20, 'Abra', 'Psíquico', 100, 40, 35, 137, 75, 110),
(21, 'Kadabra', 'Psíquico', 115, 55, 50, 154, 90, 126),
(22, 'Alakazam', 'Psíquico', 130, 70, 65, 170, 115, 154),
(23, 'Magikarp', 'Agua', 95, 30, 75, 35, 40, 110),
(24, 'Gyarados', 'Agua/Volador', 170, 159, 99, 80, 120, 101),
(25, 'Budew', 'Planta/Veneno', 115, 50, 55, 70, 99, 75),
(26, 'Roselia', 'Planta/Veneno', 125, 80, 65, 132, 100, 85),
(27, 'Roserade', 'Planta/Veneno', 135, 90, 85, 159, 125, 110),
(28, 'Zubat', 'Veneno/Volador', 115, 65, 55, 50, 60, 82),
(29, 'Golbat', 'Veneno/Volador', 150, 100, 90, 85, 95, 110),
(30, 'Crobat', 'Veneno/Volador', 160, 110, 100, 90, 100, 165),
(31, 'Geodude', 'Roca/Tierra', 115, 100, 132, 50, 50, 40),
(32, 'Graveler', 'Roca/Tierra', 130, 115, 148, 65, 65, 55),
(33, 'Golem', 'Roca/Tierra', 155, 140, 165, 75, 85, 65),
(34, 'Onix', 'Roca/Tierra', 110, 65, 198, 50, 65, 90),
(35, 'Steelix', 'Acero/Tierra', 150, 105, 242, 75, 85, 50),
(36, 'Cranidos', 'Roca', 142, 159, 60, 50, 50, 78),
(37, 'Rampardos', 'Roca', 172, 203, 80, 85, 70, 78),
(38, 'Shieldon', 'Roca/Acero', 105, 62, 151, 62, 108, 50),
(39, 'Bastiodon', 'Roca/Acero', 135, 72, 206, 67, 158, 50),
(40, 'Machop', 'Lucha', 145, 110, 70, 55, 55, 55),
(41, 'Machoke', 'Lucha', 155, 132, 90, 70, 80, 65),
(42, 'Machamp', 'Lucha', 165, 165, 100, 85, 105, 75),
(43, 'Psyduck', 'Agua', 125, 72, 68, 93, 70, 75),
(44, 'Golduck', 'Agua', 155, 102, 98, 126, 100, 105),
(45, 'Burmy', 'Bicho', 115, 49, 71, 49, 65, 56),
(46, 'Wormadam', 'Bicho/Planta', 135, 79, 105, 99, 137, 56),
(47, 'Mothim', 'Bicho/Volador', 145, 125, 70, 125, 70, 86),
(48, 'Wurmple', 'Bicho', 120, 65, 55, 40, 55, 40),
(49, 'Silcoon', 'Bicho', 125, 55, 82, 45, 45, 35),
(50, 'Beautifly', 'Bicho/Volador', 135, 90, 70, 132, 70, 85),
(51, 'Cascoon', 'Bicho', 125, 55, 82, 45, 45, 35),
(52, 'Dustox', 'Bicho/Veneno', 135, 70, 90, 70, 121, 85),
(53, 'Combee', 'Bicho/Volador', 105, 50, 62, 50, 62, 99),
(54, 'Vespiquen', 'Bicho/Volador', 145, 100, 134, 100, 134, 60),
(55, 'Pachirisu', 'Eléctrico', 135, 65, 90, 65, 121, 126),
(56, 'Buizel', 'Agua', 130, 85, 55, 80, 50, 115),
(57, 'Floatzel', 'Agua', 160, 125, 75, 105, 70, 148),
(58, 'Cherubi', 'Planta', 120, 55, 65, 82, 73, 55),
(59, 'Cherrim', 'Planta', 145, 80, 90, 117, 98, 105),
(60, 'Shellos', 'Agua', 151, 68, 68, 77, 90, 54),
(61, 'Gastrodon', 'Agua/Tierra', 186, 103, 88, 112, 102, 59),
(62, 'Heracross', 'Bicho/Lucha', 155, 159, 95, 60, 115, 105),
(63, 'Aipom', 'Normal', 130, 90, 75, 60, 75, 115),
(64, 'Ambipom', 'Normal', 150, 121, 86, 80, 86, 148),
(65, 'Drifloon', 'Fantasma/Volador', 165, 70, 54, 80, 64, 99),
(66, 'Drifblim', 'Fantasma/Volador', 225, 100, 64, 121, 74, 110),
(67, 'Buneary', 'Normal', 130, 86, 64, 64, 76, 115),
(68, 'Lopunny', 'Normal', 140, 96, 104, 74, 116, 137),
(69, 'Gastly', 'Fantasma/Veneno', 105, 55, 50, 132, 55, 100),
(70, 'Haunter', 'Fantasma/Veneno', 120, 70, 65, 148, 75, 115),
(71, 'Gengar', 'Fantasma/Veneno', 135, 85, 80, 165, 95, 143),
(72, 'Misdreavus', 'Fantasma', 135, 80, 80, 105, 105, 115),
(73, 'Mismagius', 'Fantasma', 135, 80, 80, 125, 125, 137),
(74, 'Murkrow', 'Siniestro/Volador', 135, 105, 62, 105, 62, 122),
(75, 'Honchkrow', 'Siniestro/Volador', 175, 159, 72, 125, 72, 91),
(76, 'Glameow', 'Normal', 124, 75, 62, 62, 57, 115),
(77, 'Purugly', 'Normal', 146, 102, 84, 84, 79, 145),
(78, 'Goldeen', 'Agua', 120, 95, 80, 55, 70, 83),
(79, 'Seaking', 'Agua', 155, 123, 85, 85, 100, 88),
(80, 'Barboach', 'Agua/Tierra', 125, 68, 63, 66, 61, 88),
(81, 'Whiscash', 'Agua/Tierra', 185, 98, 93, 96, 91, 88),
(82, 'Chingling', 'Psíquico', 120, 50, 70, 93, 70, 65),
(83, 'Chimecho', 'Psíquico', 150, 70, 100, 115, 121, 85),
(84, 'Stunky', 'Veneno/Siniestro', 138, 83, 67, 61, 61, 103),
(85, 'Skuntank', 'Veneno/Siniestro', 178, 113, 87, 91, 81, 114),
(86, 'Meditite', 'Lucha/Psíquico', 105, 60, 75, 60, 75, 88),
(87, 'Medicham', 'Lucha/Psíquico', 135, 80, 95, 80, 95, 110),
(88, 'Bronzor', 'Acero/Psíquico', 117, 44, 116, 44, 116, 43),
(89, 'Bronzong', 'Acero/Psíquico', 142, 109, 149, 99, 149, 53),
(90, 'Ponyta', 'Fuego', 125, 105, 75, 85, 85, 121),
(91, 'Rapidash', 'Fuego', 140, 121, 90, 100, 100, 137),
(92, 'Bonsly', 'Roca', 125, 100, 126, 30, 65, 30),
(93, 'Sudowoodo', 'Roca', 145, 121, 148, 50, 85, 50),
(94, 'Mime Jr.', 'Psíquico/Hada', 100, 45, 65, 90, 121, 80),
(95, 'Mr. Mime', 'Psíquico/Hada', 115, 65, 85, 121, 154, 110),
(96, 'Happiny', 'Normal', 175, 25, 25, 35, 93, 50),
(97, 'Chansey', 'Normal', 325, 25, 25, 55, 137, 70),
(98, 'Blissey', 'Normal', 330, 30, 30, 95, 170, 75),
(99, 'Cleffa', 'Hada', 110, 45, 48, 65, 82, 35),
(100, 'Clefairy', 'Hada', 145, 65, 68, 80, 93, 55),
(101, 'Clefable', 'Hada', 170, 90, 93, 115, 110, 88),
(102, 'Chatot', 'Normal/Volador', 151, 85, 65, 123, 62, 112),
(103, 'Pichu', 'Eléctrico', 95, 60, 35, 55, 55, 88),
(104, 'Pikachu', 'Eléctrico', 110, 75, 60, 70, 70, 121),
(105, 'Raichu', 'Eléctrico', 135, 110, 75, 110, 100, 143),
(106, 'Hoothoot', 'Normal/Volador', 135, 50, 50, 56, 83, 70),
(107, 'Noctowl', 'Normal/Volador', 175, 70, 70, 106, 127, 90),
(108, 'Spiritomb', 'Fantasma/Siniestro', 125, 112, 140, 112, 140, 35),
(109, 'Gible', 'Dragón/Tierra', 133, 99, 65, 60, 65, 62),
(110, 'Gabite', 'Dragón/Tierra', 143, 110, 85, 70, 75, 112),
(111, 'Garchomp', 'Dragón/Tierra', 183, 150, 115, 100, 105, 134),
(112, 'Munchlax', 'Normal', 185, 105, 60, 60, 117, 25),
(113, 'Snorlax', 'Normal', 235, 130, 85, 85, 143, 50),
(114, 'Unown', 'Psíquico', 123, 92, 68, 101, 68, 68),
(115, 'Riolu', 'Lucha', 110, 99, 60, 55, 60, 80),
(116, 'Lucario', 'Lucha/Acero', 145, 130, 90, 148, 90, 110),
(117, 'Wooper', 'Agua/Tierra', 130, 65, 71, 45, 45, 13),
(118, 'Quagsire', 'Agua/Tierra', 170, 105, 115, 85, 85, 55),
(119, 'Wingull', 'Agua/Volador', 115, 50, 50, 75, 50, 115),
(120, 'Pelipper', 'Agua/Volador', 135, 70, 132, 115, 90, 85),
(121, 'Girafarig', 'Normal/Psíquico', 145, 100, 85, 110, 85, 115),
(122, 'Hippopotas', 'Tierra', 143, 92, 107, 58, 62, 52),
(123, 'Hippowdon', 'Tierra', 183, 132, 151, 88, 92, 67),
(124, 'Azurill', 'Normal/Hada', 125, 40, 66, 40, 60, 40),
(125, 'Marill', 'Agua/Hada', 145, 40, 77, 40, 70, 60),
(126, 'Azumarill', 'Agua/Hada', 175, 70, 110, 80, 100, 70),
(127, 'Skorupi', 'Veneno/Bicho', 115, 70, 121, 50, 75, 85),
(128, 'Drapion', 'Veneno/Siniestro', 145, 110, 130, 80, 95, 126),
(129, 'Croagunk', 'Veneno/Lucha', 123, 81, 60, 81, 60, 77),
(130, 'Toxicroak', 'Veneno/Lucha', 158, 127, 85, 106, 85, 115),
(131, 'Carnivine', 'Planta', 149, 133, 92, 110, 92, 66),
(132, 'Remoraid', 'Agua', 110, 85, 55, 85, 55, 93),
(133, 'Octillery', 'Agua', 150, 125, 95, 137, 95, 65),
(134, 'Finneon', 'Agua', 124, 69, 76, 69, 81, 94),
(135, 'Lumineon', 'Agua', 144, 89, 96, 89, 106, 122),
(136, 'Tentacool', 'Agua/Veneno', 115, 60, 55, 70, 132, 99),
(137, 'Tentacruel', 'Agua/Veneno', 155, 90, 85, 100, 154, 121),
(138, 'Feebas', 'Agua', 95, 35, 40, 30, 75, 110),
(139, 'Milotic', 'Agua', 170, 80, 99, 120, 159, 101),
(140, 'Mantyke', 'Agua/Volador', 120, 40, 70, 80, 154, 70),
(141, 'Mantine', 'Agua/Volador', 140, 60, 90, 100, 176, 90),
(142, 'Snover', 'Planta/Hielo', 135, 82, 70, 82, 80, 60),
(143, 'Abomasnow', 'Planta/Hielo', 165, 112, 95, 112, 105, 80),
(144, 'Sneasel', 'Siniestro/Hielo', 130, 115, 75, 55, 95, 148),
(145, 'Weavile', 'Siniestro/Hielo', 145, 140, 85, 65, 105, 159),
(146, 'Uxie', 'Psíquico', 150, 95, 165, 95, 165, 115),
(147, 'Mesprit', 'Psíquico', 155, 125, 125, 125, 125, 100),
(148, 'Azelf', 'Psíquico', 150, 145, 90, 145, 90, 148),
(149, 'Dialga', 'Acero/Dragón', 175, 140, 140, 187, 120, 110),
(150, 'Palkia', 'Agua/Dragón', 165, 140, 120, 187, 140, 121),
(151, 'Manaphy', 'Agua', 175, 120, 120, 132, 120, 120),
(152, 'Rotom', 'Eléctrico/Fantasma', 125, 70, 97, 126, 97, 112),
(153, 'Gligar', 'Tierra/Volador', 140, 95, 137, 55, 85, 115),
(154, 'Gliscor', 'Tierra/Volador', 150, 115, 159, 65, 95, 115),
(155, 'Nosepass', 'Roca', 105, 65, 170, 65, 110, 50),
(156, 'Probopass', 'Roca/Acero', 135, 75, 181, 95, 187, 60),
(157, 'Ralts', 'Psíquico/Hada', 103, 45, 45, 71, 55, 60),
(158, 'Kirlia', 'Psíquico/Hada', 113, 55, 55, 93, 75, 70),
(159, 'Gardevoir', 'Psíquico/Hada', 143, 85, 85, 159, 135, 110),
(160, 'Gallade', 'Psíquico/Lucha', 143, 159, 85, 85, 135, 110),
(161, 'Lickitung', 'Normal', 165, 75, 95, 80, 104, 50),
(162, 'Lickilicky', 'Normal', 185, 105, 115, 100, 126, 77),
(163, 'Eevee', 'Normal', 130, 75, 70, 65, 85, 82),
(164, 'Vaporeon', 'Agua', 205, 85, 80, 143, 115, 85),
(165, 'Jolteon', 'Eléctrico', 140, 85, 80, 132, 115, 165),
(166, 'Flareon', 'Fuego', 140, 165, 80, 115, 130, 85),
(167, 'Espeon', 'Psíquico', 140, 85, 80, 165, 115, 132),
(168, 'Umbreon', 'Siniestro', 170, 85, 130, 80, 165, 85),
(169, 'Leafeon', 'Planta', 140, 130, 165, 80, 85, 115),
(170, 'Glaceon', 'Hielo', 140, 80, 130, 165, 115, 85),
(171, 'Swablu', 'Normal/Volador', 120, 60, 80, 60, 104, 70),
(172, 'Altaria', 'Dragón/Volador', 150, 90, 110, 90, 137, 110),
(173, 'Togepi', 'Hada', 110, 40, 85, 60, 93, 40),
(174, 'Togetic', 'Hada/Volador', 130, 60, 105, 100, 137, 60),
(175, 'Togekiss', 'Hada/Volador', 160, 70, 115, 154, 135, 110),
(176, 'Houndour', 'Siniestro/Fuego', 120, 80, 50, 110, 70, 93),
(177, 'Houndoom', 'Siniestro/Fuego', 150, 110, 70, 143, 100, 126),
(178, 'Magnemite', 'Eléctrico/Acero', 100, 55, 90, 126, 75, 65),
(179, 'Magneton', 'Eléctrico/Acero', 125, 80, 115, 154, 90, 90),
(180, 'Magnezone', 'Eléctrico/Acero', 145, 90, 135, 165, 110, 80),
(181, 'Tangela', 'Planta', 140, 75, 137, 121, 60, 80),
(182, 'Tangrowth', 'Planta', 175, 120, 148, 132, 70, 70),
(183, 'Yanma', 'Bicho/Volador', 140, 85, 65, 95, 65, 126),
(184, 'Yanmega', 'Bicho/Volador', 161, 96, 106, 149, 76, 126),
(185, 'Tropius', 'Planta/Volador', 174, 88, 103, 92, 117, 71),
(186, 'Rhyhorn', 'Tierra/Roca', 155, 105, 115, 50, 50, 44),
(187, 'Rhydon', 'Tierra/Roca', 180, 154, 140, 65, 65, 60),
(188, 'Rhyperior', 'Tierra/Roca', 190, 165, 154, 75, 75, 60),
(189, 'Duskull', 'Fantasma', 95, 60, 110, 50, 110, 44),
(190, 'Dusclops', 'Fantasma', 115, 90, 165, 80, 165, 44),
(191, 'Dusknoir', 'Fantasma', 120, 121, 170, 85, 170, 65),
(192, 'Porygon', 'Normal', 140, 80, 90, 115, 95, 60),
(193, 'Porygon2', 'Normal', 160, 100, 110, 137, 115, 80),
(194, 'Porygon-Z', 'Normal', 160, 100, 90, 170, 95, 110),
(195, 'Scyther', 'Bicho/Volador', 145, 132, 100, 75, 100, 137),
(196, 'Scizor', 'Bicho/Acero', 145, 165, 120, 75, 100, 91),
(197, 'Elekid', 'Eléctrico', 120, 83, 57, 85, 75, 126),
(198, 'Electabuzz', 'Eléctrico', 140, 103, 77, 115, 105, 137),
(199, 'Electivire', 'Eléctrico', 150, 157, 87, 115, 105, 115),
(200, 'Magby', 'Fuego', 120, 95, 57, 90, 75, 112),
(201, 'Magmar', 'Fuego', 140, 115, 77, 132, 105, 124),
(202, 'Magmortar', 'Fuego', 150, 115, 87, 159, 115, 112),
(203, 'Swinub', 'Hielo/Tierra', 125, 70, 60, 50, 50, 77),
(204, 'Piloswine', 'Hielo/Tierra', 175, 121, 100, 80, 90, 70),
(205, 'Mamoswine', 'Hielo/Tierra', 185, 165, 100, 90, 80, 110),
(206, 'Snorunt', 'Hielo', 125, 70, 70, 70, 70, 77),
(207, 'Glalie', 'Hielo', 155, 100, 100, 100, 100, 110),
(208, 'Froslass', 'Hielo/Fantasma', 145, 100, 90, 100, 90, 143),
(209, 'Absol', 'Siniestro', 140, 165, 80, 95, 80, 104),
(210, 'Giratina', 'Fantasma/Dragón', 225, 120, 165, 120, 165, 110);

-- EQUIPOS

CREATE TABLE IF NOT EXISTS equipos (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS equipo_integrantes (
    id_equipo INT,
    id_pokemon INT,
    posicion INT, -- Orden del 1 al 6
    PRIMARY KEY (id_equipo, id_pokemon),
    -- Relaciones: Si borras un equipo, se borran sus integrantes (CASCADE)
    FOREIGN KEY (id_equipo) REFERENCES equipos(id_equipo) ON DELETE CASCADE,
    -- Referencia al ID de la Pokédex en la tabla 'pokemons'
    FOREIGN KEY (id_pokemon) REFERENCES pokemons(id) ON UPDATE CASCADE
);

-- Insert de equipos de prueba

INSERT INTO equipos (nombre_equipo) VALUES ('Sinnoh All-Stars');
INSERT INTO equipo_integrantes (id_equipo, id_pokemon, posicion) VALUES 
(1, 111, 1), -- Garchomp
(1, 116, 2), -- Lucario
(1, 6, 3),   -- Infernape
(1, 19, 4),  -- Luxray
(1, 145, 5), -- Weavile
(1, 42, 6);  -- Machamp

INSERT INTO equipos (nombre_equipo) VALUES ('Trío de Iniciales');
INSERT INTO equipo_integrantes (id_equipo, id_pokemon, posicion) VALUES 
(2, 3, 1),   -- Torterra
(2, 6, 2),   -- Infernape
(2, 9, 3);   -- Empoleon

INSERT INTO equipos (nombre_equipo) VALUES ('Tanques de Roca');
INSERT INTO equipo_integrantes (id_equipo, id_pokemon, posicion) VALUES 
(3, 35, 1),  -- Steelix
(3, 33, 2);  -- Golem

-- MOVIMIENTOS

CREATE TABLE movimientos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    categoria VARCHAR(20) NOT NULL, -- FISICO o ESPECIAL
    potencia INT DEFAULT 0,
    precision_atq INT DEFAULT 100,
    pp INT DEFAULT 15
);

CREATE TABLE pokemon_movimientos (
    pokemon_id INT,
    movimiento_id INT,
    PRIMARY KEY (pokemon_id, movimiento_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemons(id) ON DELETE CASCADE,
    FOREIGN KEY (movimiento_id) REFERENCES movimientos(id) ON DELETE CASCADE
);

-- 2. INSERCIÓN DE MOVIMIENTOS (18 TIPOS)
INSERT INTO movimientos (nombre, tipo, categoria, potencia, precision_atq, pp) VALUES
-- ACERO
('Puño Meteoro', 'ACERO', 'FISICO', 90, 90, 10),
('Foco Resplandor', 'ACERO', 'ESPECIAL', 80, 100, 10),
('Cabeza de Hierro', 'ACERO', 'FISICO', 80, 100, 15),
('Ala de Acero', 'ACERO', 'FISICO', 70, 90, 25),
('Garra Metal', 'ACERO', 'FISICO', 50, 95, 35),
-- AGUA
('Hidrobomba', 'AGUA', 'ESPECIAL', 110, 80, 5),
('Surf', 'AGUA', 'ESPECIAL', 90, 100, 15),
('Cascada', 'AGUA', 'FISICO', 80, 100, 15),
('Rayo Burbuja', 'AGUA', 'ESPECIAL', 65, 100, 20),
('Acua Jet', 'AGUA', 'FISICO', 40, 100, 20),
-- BICHO
('Tijera X', 'BICHO', 'FISICO', 80, 100, 15),
('Zumbido', 'BICHO', 'ESPECIAL', 90, 100, 10),
('Ida y Vuelta', 'BICHO', 'FISICO', 70, 100, 20),
('Chupavidas', 'BICHO', 'FISICO', 80, 100, 10),
('Megacuerno', 'BICHO', 'FISICO', 120, 85, 10),
-- DRAGON
('Enfado', 'DRAGON', 'FISICO', 120, 100, 10),
('Garra Dragon', 'DRAGON', 'FISICO', 80, 100, 15),
('Pulso Dragon', 'DRAGON', 'ESPECIAL', 85, 100, 10),
('Carga Dragon', 'DRAGON', 'FISICO', 100, 75, 10),
('Cometa Draco', 'DRAGON', 'ESPECIAL', 130, 90, 5),
-- ELECTRICO
('Trueno', 'ELECTRICO', 'ESPECIAL', 110, 70, 10),
('Rayo', 'ELECTRICO', 'ESPECIAL', 90, 100, 15),
('Chispazo', 'ELECTRICO', 'ESPECIAL', 80, 100, 15),
('Puño Trueno', 'ELECTRICO', 'FISICO', 75, 100, 15),
('Voltio Cruel', 'ELECTRICO', 'FISICO', 90, 100, 15),
-- FANTASMA
('Bola Sombra', 'FANTASMA', 'ESPECIAL', 80, 100, 15),
('Garra Umbria', 'FANTASMA', 'FISICO', 70, 100, 15),
('Puño Sombra', 'FANTASMA', 'FISICO', 60, 100, 20),
('Tinieblas', 'FANTASMA', 'ESPECIAL', 60, 100, 15),
('Golpe Fantasma', 'FANTASMA', 'FISICO', 90, 100, 10),
-- FUEGO
('Llamarada', 'FUEGO', 'ESPECIAL', 110, 85, 5),
('Lanzallamas', 'FUEGO', 'ESPECIAL', 90, 100, 15),
('Envite Igneo', 'FUEGO', 'FISICO', 120, 100, 15),
('Puño Fuego', 'FUEGO', 'FISICO', 75, 100, 15),
('Sofoco', 'FUEGO', 'ESPECIAL', 130, 90, 5),
-- HADA (NUEVO)
('Fuerza Lunar', 'HADA', 'ESPECIAL', 95, 100, 15),
('Brillo Magico', 'HADA', 'ESPECIAL', 80, 100, 10),
('Carantoña', 'HADA', 'FISICO', 90, 90, 10),
('Viento Feerico', 'HADA', 'ESPECIAL', 40, 100, 30),
('Beso Drenaje', 'HADA', 'ESPECIAL', 50, 100, 10),
('Voz Cautivadora', 'HADA', 'ESPECIAL', 40, 100, 15),
-- HIELO
('Ventisca', 'HIELO', 'ESPECIAL', 110, 70, 5),
('Rayo Hielo', 'HIELO', 'ESPECIAL', 90, 100, 10),
('Puño Hielo', 'HIELO', 'FISICO', 75, 100, 15),
('Colmillo Hielo', 'HIELO', 'FISICO', 65, 95, 15),
('Canto Helado', 'HIELO', 'FISICO', 40, 100, 30),
-- LUCHA
('A bocajarro', 'LUCHA', 'FISICO', 120, 100, 5),
('Esfera Aural', 'LUCHA', 'ESPECIAL', 80, 100, 20),
('Onda Certera', 'LUCHA', 'ESPECIAL', 120, 70, 5),
('Demolicion', 'LUCHA', 'FISICO', 75, 100, 15),
('Ultra puño', 'LUCHA', 'FISICO', 40, 100, 30),
-- NORMAL
('Hiperrayo', 'NORMAL', 'ESPECIAL', 150, 90, 5),
('Giga Impacto', 'NORMAL', 'FISICO', 150, 90, 5),
('Fuerza', 'NORMAL', 'FISICO', 80, 100, 15),
('Golpe Cuerpo', 'NORMAL', 'FISICO', 85, 100, 15),
('Placaje', 'NORMAL', 'FISICO', 40, 100, 35),
-- PLANTA
('Rayo Solar', 'PLANTA', 'ESPECIAL', 120, 100, 10),
('Hoja Aguda', 'PLANTA', 'FISICO', 90, 100, 15),
('Energibola', 'PLANTA', 'ESPECIAL', 90, 100, 10),
('Giga Drenado', 'PLANTA', 'ESPECIAL', 75, 100, 10),
('Lluevehojas', 'PLANTA', 'ESPECIAL', 130, 90, 5),
-- PSIQUICO
('Psiquico', 'PSIQUICO', 'ESPECIAL', 90, 100, 10),
('Psicocorte', 'PSIQUICO', 'FISICO', 70, 100, 20),
('Zen Headbutt', 'PSIQUICO', 'FISICO', 80, 90, 15),
('Confusion', 'PSIQUICO', 'ESPECIAL', 50, 100, 25),
('Premonicion', 'PSIQUICO', 'ESPECIAL', 120, 100, 10),
-- ROCA
('Roca Afilada', 'ROCA', 'FISICO', 100, 80, 5),
('Avalancha', 'ROCA', 'FISICO', 75, 90, 10),
('Joyas de Luz', 'ROCA', 'ESPECIAL', 80, 100, 20),
('Poder Pasado', 'ROCA', 'ESPECIAL', 60, 100, 5),
('Lanzarocas', 'ROCA', 'FISICO', 50, 90, 15),
-- SINIESTRO
('Triturar', 'SINIESTRO', 'FISICO', 80, 100, 15),
('Pulso Umbrio', 'SINIESTRO', 'ESPECIAL', 80, 100, 15),
('Tajo Umbrio', 'SINIESTRO', 'FISICO', 70, 100, 15),
('Mordisco', 'SINIESTRO', 'FISICO', 60, 100, 25),
('Vendetta', 'SINIESTRO', 'FISICO', 50, 100, 10),
-- TIERRA
('Terremoto', 'TIERRA', 'FISICO', 100, 100, 10),
('Tierra Viva', 'TIERRA', 'ESPECIAL', 90, 100, 10),
('Excavar', 'TIERRA', 'FISICO', 80, 100, 10),
('Disparo Lodo', 'TIERRA', 'ESPECIAL', 55, 95, 15),
('Magnitud', 'TIERRA', 'FISICO', 70, 100, 30),
-- VENENO
('Bomba Lodo', 'VENENO', 'ESPECIAL', 90, 100, 10),
('Puya Nociva', 'VENENO', 'FISICO', 80, 100, 20),
('Carga Toxica', 'VENENO', 'ESPECIAL', 65, 100, 10),
('Veneno X', 'VENENO', 'FISICO', 70, 100, 20),
('Residuos', 'VENENO', 'ESPECIAL', 65, 100, 20),
-- VOLADOR
('Pajaro Osado', 'VOLADOR', 'FISICO', 120, 100, 15),
('Tajo Aereo', 'VOLADOR', 'ESPECIAL', 75, 95, 15),
('Golpe Aereo', 'VOLADOR', 'FISICO', 60, 100, 20),
('Vuelo', 'VOLADOR', 'FISICO', 90, 95, 15),
('Tornado', 'VOLADOR', 'ESPECIAL', 40, 100, 35);