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
    id INT AUTO_INCREMENT PRIMARY KEY,
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

INSERT INTO pokemons (nombre, tipo, ps, ataque, defensa, at_especial, def_especial, velocidad) VALUES
('Bulbasaur', 'Planta/Veneno', 21, 11, 11, 13, 13, 11),
('Ivysaur', 'Planta/Veneno', 65, 45, 45, 58, 58, 45),
('Venusaur', 'Planta/Veneno', 155, 101, 103, 132, 120, 100),
('Charmander', 'Fuego', 19, 12, 10, 13, 11, 13),
('Charmeleon', 'Fuego', 62, 52, 48, 65, 52, 65),
('Charizard', 'Fuego/Volador', 153, 104, 98, 141, 105, 132),
('Squirtle', 'Agua', 20, 11, 13, 11, 13, 10),
('Wartortle', 'Agua', 63, 53, 65, 53, 65, 48),
('Blastoise', 'Agua', 154, 103, 121, 105, 126, 98),
('Caterpie', 'Bicho', 20, 9, 9, 7, 7, 10),
('Metapod', 'Bicho', 55, 25, 55, 30, 30, 35),
('Butterfree', 'Bicho/Volador', 135, 65, 70, 110, 100, 95),
('Weedle', 'Bicho/Veneno', 19, 10, 9, 7, 7, 11),
('Kakuna', 'Bicho/Veneno', 50, 30, 55, 30, 30, 40),
('Beedrill', 'Bicho/Veneno', 140, 115, 60, 65, 100, 113),
('Pidgey', 'Normal/Volador', 19, 10, 10, 9, 9, 11),
('Pidgeotto', 'Normal/Volador', 67, 50, 50, 45, 45, 63),
('Pidgeot', 'Normal/Volador', 158, 100, 95, 90, 90, 133),
('Rattata', 'Normal', 18, 11, 9, 8, 9, 13),
('Raticate', 'Normal', 130, 111, 80, 70, 90, 127),
('Spearow', 'Normal/Volador', 19, 12, 9, 9, 9, 13),
('Fearow', 'Normal/Volador', 140, 121, 85, 81, 81, 132),
('Ekans', 'Veneno', 19, 12, 10, 10, 11, 11),
('Arbok', 'Veneno', 135, 115, 89, 85, 99, 100),
('Pikachu', 'Eléctrico', 19, 11, 10, 11, 10, 15),
('Raichu', 'Eléctrico', 135, 110, 75, 110, 100, 143),
('Sandshrew', 'Tierra', 21, 13, 14, 7, 9, 10),
('Sandslash', 'Tierra', 150, 132, 130, 65, 75, 85),
('Nidoran F', 'Veneno', 21, 11, 11, 10, 10, 10),
('Nidorina', 'Veneno', 75, 52, 52, 45, 45, 45),
('Nidoqueen', 'Veneno/Tierra', 165, 112, 107, 95, 105, 96),
('Nidoran M', 'Veneno', 20, 12, 10, 10, 10, 11),
('Nidorino', 'Veneno', 66, 62, 48, 45, 45, 50),
('Nidoking', 'Veneno/Tierra', 156, 134, 97, 105, 95, 105),
('Clefairy', 'Normal', 23, 10, 11, 12, 12, 9),
('Clefable', 'Normal', 170, 90, 93, 126, 110, 80),
('Vulpix', 'Fuego', 19, 10, 10, 11, 12, 12),
('Ninetales', 'Fuego', 148, 96, 95, 101, 120, 132),
('Jigglypuff', 'Normal', 27, 10, 8, 10, 8, 8),
('Wigglytuff', 'Normal', 215, 90, 65, 105, 70, 65),
('Zubat', 'Veneno/Volador', 19, 10, 9, 9, 9, 11),
('Golbat', 'Veneno/Volador', 80, 70, 60, 55, 60, 80),
('Oddish', 'Planta/Veneno', 20, 11, 11, 13, 12, 9),
('Gloom', 'Planta/Veneno', 65, 55, 55, 75, 65, 45),
('Vileplume', 'Planta/Veneno', 150, 100, 105, 143, 110, 70),
('Paras', 'Bicho/Planta', 19, 13, 11, 10, 11, 8),
('Parasect', 'Bicho/Planta', 135, 126, 100, 80, 100, 50),
('Venonat', 'Bicho/Veneno', 22, 11, 11, 10, 11, 10),
('Venomoth', 'Bicho/Veneno', 145, 85, 80, 121, 95, 121),
('Diglett', 'Tierra', 17, 11, 8, 9, 10, 15),
('Dugtrio', 'Tierra', 110, 121, 70, 70, 90, 154),
('Meowth', 'Normal', 19, 10, 9, 10, 10, 15),
('Persian', 'Normal', 140, 90, 80, 85, 85, 148),
('Psduck', 'Agua', 21, 11, 11, 12, 11, 11),
('Golduck', 'Agua', 155, 102, 98, 115, 100, 115),
('Mankey', 'Lucha', 19, 14, 9, 9, 10, 13),
('Primeape', 'Lucha', 140, 137, 80, 80, 90, 126),
('Growlithe', 'Fuego', 21, 13, 10, 13, 11, 12),
('Arcanine', 'Fuego', 165, 143, 100, 120, 100, 126),
('Poliwag', 'Agua', 19, 11, 10, 10, 10, 15),
('Poliwhirl', 'Agua', 70, 55, 55, 45, 45, 75),
('Poliwrath', 'Agua/Lucha', 165, 126, 115, 90, 110, 90),
('Abra', 'Psíquico', 18, 8, 7, 16, 11, 15),
('Kadabra', 'Psíquico', 45, 40, 35, 100, 60, 85),
('Alakazam', 'Psíquico', 130, 70, 65, 181, 115, 154),
('Machop', 'Lucha', 23, 14, 11, 9, 9, 9),
('Machoke', 'Lucha', 85, 85, 60, 45, 55, 45),
('Machamp', 'Lucha', 165, 165, 100, 85, 105, 75),
('Bellsprout', 'Planta/Veneno', 20, 13, 9, 13, 9, 10),
('Weepinbell', 'Planta/Veneno', 70, 75, 50, 70, 50, 55),
('Victreebel', 'Planta/Veneno', 155, 137, 85, 120, 90, 90),
('Tentacool', 'Agua/Veneno', 19, 10, 9, 11, 16, 13),
('Tentacruel', 'Agua/Veneno', 155, 90, 85, 100, 154, 132),
('Geodude', 'Roca/Tierra', 19, 14, 16, 9, 9, 8),
('Graveler', 'Roca/Tierra', 60, 80, 95, 40, 40, 35),
('Golem', 'Roca/Tierra', 155, 143, 150, 75, 85, 65),
('Ponyta', 'Fuego', 20, 14, 11, 12, 12, 15),
('Rapidash', 'Fuego', 140, 132, 90, 100, 100, 137),
('Slowpoke', 'Agua/Psíquico', 25, 12, 12, 10, 10, 7),
('Slowbro', 'Agua/Psíquico', 170, 95, 132, 120, 100, 50),
('Magnemite', 'Eléctrico/Acero', 18, 9, 13, 15, 11, 10),
('Magneton', 'Eléctrico/Acero', 125, 80, 115, 154, 90, 90),
('Farfetchd', 'Normal/Volador', 127, 100, 75, 78, 82, 80),
('Doduo', 'Normal/Volador', 19, 14, 10, 9, 9, 13),
('Dodrio', 'Normal/Volador', 135, 143, 90, 80, 80, 132),
('Seel', 'Agua', 22, 10, 11, 10, 13, 10),
('Dewgong', 'Agua/Hielo', 165, 90, 100, 90, 115, 90),
('Grimer', 'Veneno', 24, 14, 11, 10, 11, 8),
('Muk', 'Veneno', 180, 137, 95, 85, 120, 70),
('Shellder', 'Agua', 18, 12, 16, 10, 8, 10),
('Cloyster', 'Agua/Hielo', 125, 115, 231, 105, 65, 90),
('Gastly', 'Fantasma/Veneno', 18, 9, 9, 16, 9, 14),
('Haunter', 'Fantasma/Veneno', 50, 45, 45, 95, 50, 75),
('Gengar', 'Fantasma/Veneno', 135, 85, 80, 187, 95, 143),
('Onix', 'Roca/Tierra', 19, 10, 22, 9, 10, 13),
('Drowzee', 'Psíquico', 22, 10, 10, 10, 15, 10),
('Hypno', 'Psíquico', 160, 93, 90, 93, 143, 87),
('Krabby', 'Agua', 18, 16, 15, 8, 8, 11),
('Kingler', 'Agua', 130, 165, 135, 70, 70, 95),
('Voltorb', 'Eléctrico', 19, 9, 11, 11, 11, 16),
('Electrode', 'Eléctrico', 135, 75, 95, 105, 105, 170),
('Exeggcute', 'Planta/Psíquico', 21, 10, 13, 11, 10, 10),
('Exeggutor', 'Planta/Psíquico', 170, 115, 105, 159, 95, 75),
('Cubone', 'Tierra', 20, 11, 14, 9, 10, 9),
('Marowak', 'Tierra', 135, 110, 132, 70, 100, 65),
('Hitmonlee', 'Lucha', 125, 154, 73, 55, 132, 112),
('Hitmonchan', 'Lucha', 125, 137, 99, 55, 132, 96),
('Lickitung', 'Normal', 25, 11, 13, 11, 13, 8),
('Koffing', 'Veneno', 19, 12, 14, 11, 10, 9),
('Weezing', 'Veneno', 140, 112, 143, 105, 90, 80),
('Rhyhorn', 'Tierra/Roca', 23, 14, 15, 8, 8, 8),
('Rhydon', 'Tierra/Roca', 180, 154, 132, 65, 65, 60),
('Chansey', 'Normal', 31, 5, 5, 8, 15, 10),
('Tangela', 'Planta', 21, 11, 16, 15, 9, 11),
('Kangaskhan', 'Normal', 180, 115, 100, 60, 100, 112),
('Horsea', 'Agua', 18, 10, 12, 12, 8, 11),
('Seadra', 'Agua', 130, 85, 115, 115, 65, 105),
('Goldeen', 'Agua', 20, 12, 11, 9, 10, 11),
('Seaking', 'Agua', 155, 112, 85, 85, 100, 88),
('Staryu', 'Agua', 18, 10, 11, 12, 11, 13),
('Starmie', 'Agua/Psíquico', 135, 95, 105, 121, 105, 148),
('Mr. Mime', 'Psíquico', 115, 65, 85, 121, 143, 112),
('Scyther', 'Bicho/Volador', 145, 132, 100, 75, 100, 126),
('Jynx', 'Hielo/Psíquico', 140, 70, 55, 148, 115, 115),
('Electabuzz', 'Eléctrico', 140, 103, 77, 115, 105, 126),
('Magmar', 'Fuego', 140, 115, 77, 121, 105, 113),
('Pinsir', 'Bicho', 140, 154, 121, 75, 90, 105),
('Tauros', 'Normal', 150, 121, 115, 60, 90, 132),
('Magikarp', 'Agua', 17, 6, 11, 6, 8, 13),
('Gyarados', 'Agua/Volador', 170, 159, 99, 80, 120, 101),
('Lapras', 'Agua/Hielo', 205, 105, 100, 105, 115, 80),
('Ditto', 'Normal', 123, 68, 68, 68, 68, 68),
('Eevee', 'Normal', 21, 11, 11, 10, 12, 11),
('Vaporeon', 'Agua', 205, 85, 80, 132, 115, 85),
('Jolteon', 'Eléctrico', 140, 85, 80, 132, 115, 165),
('Flareon', 'Fuego', 140, 165, 80, 115, 132, 85),
('Porygon', 'Normal', 140, 80, 90, 105, 95, 60),
('Omanyte', 'Roca/Agua', 19, 9, 15, 14, 11, 9),
('Omastar', 'Roca/Agua', 145, 80, 143, 148, 90, 75),
('Kabuto', 'Roca/Agua', 18, 13, 14, 11, 10, 11),
('Kabutops', 'Roca/Agua', 135, 143, 126, 85, 90, 100),
('Aerodactyl', 'Roca/Volador', 155, 126, 85, 80, 95, 165),
('Snorlax', 'Normal', 235, 132, 85, 85, 132, 50),
('Articuno', 'Hielo/Volador', 165, 105, 120, 115, 154, 105),
('Zapdos', 'Eléctrico/Volador', 165, 110, 105, 154, 110, 121),
('Moltres', 'Fuego/Volador', 165, 120, 110, 154, 105, 110),
('Dratini', 'Dragón', 19, 12, 10, 11, 11, 11),
('Dragonair', 'Dragón', 76, 84, 65, 70, 70, 70),
('Dragonite', 'Dragón/Volador', 166, 169, 115, 120, 120, 100),
('Mewtwo', 'Psíquico', 181, 130, 110, 191, 110, 167),
('Mew', 'Psíquico', 175, 121, 121, 121, 121, 121),
('Chikorita', 'Planta', 20, 10, 12, 10, 12, 10),
('Bayleef', 'Planta', 75, 62, 80, 63, 80, 60),
('Meganium', 'Planta', 155, 102, 121, 103, 121, 100),
('Cyndaquil', 'Fuego', 19, 11, 10, 12, 11, 12),
('Quilava', 'Fuego', 73, 64, 58, 80, 65, 80),
('Typhlosion', 'Fuego', 153, 104, 98, 132, 105, 121),
('Totodile', 'Agua', 21, 12, 12, 10, 10, 10),
('Croconaw', 'Agua', 80, 80, 80, 59, 63, 58),
('Feraligatr', 'Agua', 160, 132, 121, 99, 103, 98),
('Sentret', 'Normal', 19, 10, 9, 9, 10, 10),
('Furret', 'Normal', 160, 96, 84, 65, 75, 110),
('Hoothoot', 'Normal/Volador', 22, 9, 9, 9, 11, 11),
('Noctowl', 'Normal/Volador', 175, 70, 70, 96, 127, 90),
('Ledyba', 'Bicho/Volador', 19, 8, 9, 10, 14, 11),
('Ledian', 'Bicho/Volador', 130, 55, 70, 75, 132, 105),
('Spinarak', 'Bicho/Veneno', 19, 12, 10, 10, 10, 9),
('Ariados', 'Bicho/Veneno', 145, 110, 90, 80, 80, 60),
('Crobat', 'Veneno/Volador', 160, 110, 100, 90, 100, 165),
('Chinchou', 'Agua/Eléctrico', 23, 9, 9, 11, 11, 12),
('Lanturn', 'Agua/Eléctrico', 200, 78, 78, 96, 96, 87),
('Pichu', 'Eléctrico', 17, 10, 7, 9, 9, 12),
('Cleffa', 'Normal', 21, 8, 8, 10, 11, 7),
('Igglybuff', 'Normal', 25, 9, 7, 10, 8, 7),
('Togepi', 'Normal', 19, 8, 12, 10, 12, 8),
('Togetic', 'Normal/Volador', 70, 40, 85, 80, 105, 40),
('Natu', 'Psíquico/Volador', 19, 11, 10, 13, 10, 13),
('Xatu', 'Psíquico/Volador', 140, 95, 90, 115, 90, 115),
('Mareep', 'Eléctrico', 21, 10, 10, 12, 10, 9),
('Flaaffy', 'Eléctrico', 85, 55, 55, 80, 60, 45),
('Ampharos', 'Eléctrico', 165, 95, 105, 137, 110, 75),
('Bellossom', 'Planta', 150, 100, 115, 110, 121, 70),
('Marill', 'Agua', 23, 8, 11, 8, 11, 10),
('Azumarill', 'Agua', 175, 70, 100, 80, 100, 70),
('Sudowoodo', 'Roca', 145, 121, 137, 50, 85, 50),
('Politoed', 'Agua', 165, 95, 95, 110, 121, 90),
('Hoppip', 'Planta/Volador', 19, 9, 10, 9, 11, 11),
('Skiploom', 'Planta/Volador', 70, 45, 50, 45, 65, 80),
('Jumpluff', 'Planta/Volador', 150, 75, 90, 75, 115, 132),
('Aipom', 'Normal', 21, 13, 11, 10, 11, 14),
('Sunkern', 'Planta', 19, 9, 9, 9, 9, 9),
('Sunflora', 'Planta', 150, 95, 75, 126, 105, 50),
('Yanma', 'Bicho/Volador', 22, 12, 10, 13, 10, 15),
('Wooper', 'Agua/Tierra', 21, 10, 10, 8, 8, 7),
('Quagsire', 'Agua/Tierra', 170, 105, 105, 85, 85, 55),
('Espeon', 'Psíquico', 140, 85, 80, 143, 115, 132),
('Umbreon', 'Siniestro', 170, 85, 132, 80, 143, 85),
('Murkrow', 'Siniestro/Volador', 21, 14, 10, 14, 10, 15),
('Slowking', 'Agua/Psíquico', 170, 95, 100, 121, 132, 50),
('Misdreavus', 'Fantasma', 21, 12, 12, 14, 14, 14),
('Unown', 'Psíquico', 123, 85, 63, 85, 63, 63),
('Wobbuffet', 'Psíquico', 265, 48, 73, 48, 73, 48),
('Girafarig', 'Normal/Psíquico', 145, 95, 80, 112, 80, 100),
('Pineco', 'Bicho', 20, 12, 14, 9, 9, 8),
('Forretress', 'Bicho/Acero', 150, 132, 154, 75, 75, 55),
('Dunsparce', 'Normal', 175, 85, 85, 80, 80, 60),
('Gligar', 'Tierra/Volador', 22, 13, 16, 9, 11, 14),
('Steelix', 'Acero/Tierra', 150, 100, 220, 70, 80, 45),
('Snubbull', 'Normal', 22, 14, 11, 10, 10, 9),
('Granbull', 'Normal', 165, 143, 90, 75, 75, 60),
('Qwilfish', 'Agua/Veneno', 140, 110, 95, 70, 70, 100),
('Scizor', 'Bicho/Acero', 145, 154, 121, 70, 100, 85),
('Shuckle', 'Bicho/Roca', 95, 30, 253, 30, 253, 25),
('Heracross', 'Bicho/Lucha', 155, 148, 90, 55, 115, 105),
('Sneasel', 'Siniestro/Hielo', 21, 15, 11, 9, 13, 17),
('Teddiursa', 'Normal', 22, 14, 11, 11, 11, 10),
('Ursaring', 'Normal', 165, 154, 95, 90, 95, 70),
('Slugma', 'Fuego', 19, 10, 10, 13, 10, 8),
('Magcargo', 'Fuego/Roca', 125, 65, 132, 100, 95, 45),
('Swinub', 'Hielo/Tierra', 21, 11, 10, 9, 9, 11),
('Piloswine', 'Hielo/Tierra', 175, 110, 95, 75, 75, 65),
('Corsola', 'Agua/Roca', 130, 70, 105, 80, 105, 50),
('Remoraid', 'Agua', 19, 12, 9, 12, 9, 12),
('Octillery', 'Agua', 150, 121, 90, 121, 90, 60),
('Delibird', 'Hielo/Volador', 120, 70, 60, 80, 60, 90),
('Mantine', 'Agua/Volador', 140, 55, 85, 95, 154, 85),
('Skarmory', 'Acero/Volador', 140, 95, 154, 55, 85, 85),
('Houndour', 'Siniestro/Fuego', 20, 12, 9, 14, 11, 12),
('Houndoom', 'Siniestro/Fuego', 150, 105, 65, 132, 95, 115),
('Kingdra', 'Agua/Dragón', 150, 110, 110, 110, 110, 100),
('Phanpy', 'Tierra', 25, 12, 12, 10, 10, 10),
('Donphan', 'Tierra', 165, 143, 132, 75, 75, 65),
('Porygon2', 'Normal', 160, 95, 105, 121, 110, 75),
('Stantler', 'Normal', 148, 110, 77, 100, 82, 105),
('Smeargle', 'Normal', 130, 35, 50, 35, 60, 90),
('Tyrogue', 'Lucha', 19, 9, 9, 9, 9, 9),
('Hitmontop', 'Lucha', 125, 110, 110, 50, 126, 85),
('Smoochum', 'Hielo/Psíquico', 20, 9, 7, 14, 12, 12),
('Elekid', 'Eléctrico', 20, 12, 9, 12, 11, 15),
('Magby', 'Fuego', 20, 13, 9, 13, 11, 14),
('Miltank', 'Normal', 170, 95, 121, 55, 85, 115),
('Blissey', 'Normal', 330, 25, 25, 90, 154, 70),
('Raikou', 'Eléctrico', 165, 100, 90, 137, 115, 132),
('Entei', 'Fuego', 190, 137, 100, 105, 90, 115),
('Suicune', 'Agua', 175, 90, 132, 105, 132, 100),
('Larvitar', 'Roca/Tierra', 21, 12, 11, 10, 11, 10),
('Pupitar', 'Roca/Tierra', 85, 75, 65, 60, 65, 55),
('Tyranitar', 'Roca/Siniestro', 175, 154, 126, 110, 120, 77),
('Lugia', 'Psíquico/Volador', 181, 110, 143, 110, 169, 126),
('Ho-Oh', 'Fuego/Volador', 181, 143, 110, 126, 169, 110),
('Celebi', 'Psíquico/Planta', 175, 121, 121, 121, 121, 121),
('Treecko', 'Planta', 20, 10, 9, 12, 11, 13),
('Grovyle', 'Planta', 65, 65, 45, 85, 65, 95),
('Sceptile', 'Planta', 145, 100, 80, 126, 100, 143),
('Torchic', 'Fuego', 20, 12, 10, 13, 11, 10),
('Combusken', 'Fuego/Lucha', 75, 85, 60, 85, 60, 55),
('Blaziken', 'Fuego/Lucha', 155, 137, 85, 132, 95, 112),
('Mudkip', 'Agua', 21, 13, 11, 11, 11, 10),
('Marshtomp', 'Agua/Tierra', 85, 85, 70, 60, 70, 50),
('Swampert', 'Agua/Tierra', 175, 132, 110, 100, 110, 75),
('Poochyena', 'Siniestro', 19, 11, 9, 9, 9, 9),
('Mightyena', 'Siniestro', 145, 110, 85, 75, 75, 85),
('Zigzagoon', 'Normal', 19, 9, 10, 9, 10, 12),
('Linoone', 'Normal', 153, 85, 76, 65, 76, 121),
('Wurmple', 'Bicho', 20, 10, 9, 8, 9, 8),
('Silcoon', 'Bicho', 65, 35, 55, 25, 25, 15),
('Beautifly', 'Bicho/Volador', 135, 85, 65, 115, 65, 80),
('Cascoon', 'Bicho', 65, 35, 55, 25, 25, 15),
('Dustox', 'Bicho/Veneno', 135, 65, 85, 65, 105, 80),
('Lotad', 'Agua/Planta', 20, 9, 9, 10, 11, 9),
('Lombre', 'Agua/Planta', 75, 50, 50, 60, 70, 50),
('Ludicolo', 'Agua/Planta', 155, 85, 85, 112, 121, 85),
('Seedot', 'Planta', 20, 10, 11, 9, 9, 9),
('Nuzleaf', 'Planta/Siniestro', 85, 70, 40, 60, 40, 60),
('Shiftry', 'Planta/Siniestro', 165, 121, 75, 112, 75, 100),
('Taillow', 'Normal/Volador', 20, 11, 9, 9, 9, 14),
('Swellow', 'Normal/Volador', 135, 115, 75, 65, 65, 159),
('Wingull', 'Agua/Volador', 20, 9, 9, 11, 9, 14),
('Pelipper', 'Agua/Volador', 135, 65, 110, 115, 85, 80),
('Ralts', 'Psíquico', 18, 8, 8, 10, 10, 10),
('Kirlia', 'Psíquico', 53, 35, 35, 65, 55, 50),
('Gardevoir', 'Psíquico', 143, 80, 80, 148, 137, 110),
('Surskit', 'Bicho/Agua', 20, 9, 9, 11, 11, 12),
('Masquerain', 'Bicho/Volador', 145, 75, 77, 115, 112, 105),
('Shroomish', 'Planta', 22, 10, 12, 10, 12, 9),
('Breloom', 'Planta/Lucha', 135, 154, 95, 75, 75, 85),
('Slakoth', 'Normal', 22, 12, 12, 9, 9, 9),
('Vigoroth', 'Normal', 95, 80, 80, 55, 55, 90),
('Slaking', 'Normal', 225, 181, 115, 121, 80, 121),
('Nincada', 'Bicho/Tierra', 19, 11, 15, 9, 9, 10),
('Ninjask', 'Bicho/Volador', 136, 105, 60, 65, 65, 198),
('Shedinja', 'Bicho/Fantasma', 1, 105, 60, 45, 45, 55),
('Whismur', 'Normal', 22, 11, 8, 11, 8, 8),
('Loudred', 'Normal', 99, 71, 43, 71, 43, 48),
('Exploud', 'Normal', 179, 111, 78, 111, 88, 83),
('Makuhita', 'Lucha', 23, 12, 9, 8, 9, 9),
('Hariyama', 'Lucha', 219, 132, 75, 55, 75, 65),
('Azurill', 'Normal', 21, 8, 10, 8, 10, 8),
('Nosepass', 'Roca', 105, 60, 148, 60, 115, 45),
('Skitty', 'Normal', 21, 10, 10, 9, 10, 11),
('Delcatty', 'Normal', 145, 95, 95, 85, 85, 121),
('Sableye', 'Siniestro/Fantasma', 125, 105, 105, 95, 95, 80),
('Mawile', 'Acero', 125, 115, 115, 85, 85, 80),
('Aron', 'Acero/Roca', 21, 13, 16, 9, 9, 8),
('Lairon', 'Acero/Roca', 80, 80, 105, 55, 55, 45),
('Aggron', 'Acero/Roca', 145, 143, 220, 90, 90, 80),
('Meditite', 'Lucha/Psíquico', 19, 10, 10, 10, 10, 12),
('Medicham', 'Lucha/Psíquico', 135, 112, 110, 100, 110, 115),
('Electrike', 'Eléctrico', 19, 10, 9, 12, 9, 12),
('Manectric', 'Eléctrico', 145, 110, 85, 143, 85, 148),
('Plusle', 'Eléctrico', 135, 80, 70, 121, 115, 132),
('Minun', 'Eléctrico', 135, 70, 80, 112, 126, 132),
('Volbeat', 'Bicho', 140, 103, 105, 77, 115, 121),
('Illumise', 'Bicho', 140, 77, 105, 103, 115, 121),
('Roselia', 'Planta/Veneno', 125, 90, 75, 143, 120, 95),
('Gulpin', 'Veneno', 23, 10, 11, 10, 11, 9),
('Swalot', 'Veneno', 175, 102, 113, 102, 113, 85),
('Carvanha', 'Agua/Siniestro', 20, 15, 7, 12, 7, 12),
('Sharpedo', 'Agua/Siniestro', 145, 154, 70, 126, 70, 132),
('Wailmer', 'Agua', 36, 13, 9, 13, 9, 12),
('Wailord', 'Agua', 240, 121, 75, 121, 75, 90),
('Numel', 'Fuego/Tierra', 22, 12, 10, 12, 10, 8),
('Camerupt', 'Fuego/Tierra', 145, 132, 100, 137, 105, 70),
('Torkoal', 'Fuego', 145, 115, 187, 115, 100, 50),
('Spoink', 'Psíquico', 22, 9, 9, 13, 13, 12),
('Grumpig', 'Psíquico', 155, 75, 95, 121, 143, 110),
('Spinda', 'Normal', 135, 90, 90, 90, 90, 90),
('Trapinch', 'Tierra', 20, 16, 10, 10, 10, 6),
('Vibrava', 'Tierra/Dragón', 75, 75, 55, 55, 55, 75),
('Flygon', 'Tierra/Dragón', 155, 132, 110, 110, 110, 132),
('Cacnea', 'Planta', 21, 14, 10, 14, 10, 9),
('Cacturne', 'Planta/Siniestro', 145, 148, 90, 148, 90, 85),
('Swablu', 'Normal/Volador', 20, 10, 12, 10, 13, 11),
('Altaria', 'Dragón/Volador', 150, 100, 121, 100, 143, 112),
('Zangoose', 'Normal', 148, 148, 90, 90, 90, 121),
('Seviper', 'Veneno', 148, 132, 90, 132, 90, 95),
('Lunatone', 'Roca/Psíquico', 165, 85, 105, 126, 115, 100),
('Solrock', 'Roca/Psíquico', 165, 126, 115, 85, 105, 100),
('Barboach', 'Agua/Tierra', 21, 11, 10, 11, 10, 12),
('Whiscash', 'Agua/Tierra', 185, 108, 103, 106, 101, 90),
('Corphish', 'Agua', 20, 14, 12, 11, 9, 9),
('Crawdaunt', 'Agua/Siniestro', 138, 154, 115, 121, 105, 85),
('Baltoy', 'Tierra/Psíquico', 19, 10, 11, 10, 13, 11),
('Claydol', 'Tierra/Psíquico', 135, 100, 137, 100, 154, 105),
('Lileep', 'Roca/Planta', 22, 10, 13, 12, 14, 8),
('Cradily', 'Roca/Planta', 161, 111, 127, 111, 139, 73),
('Anorith', 'Roca/Bicho', 20, 15, 11, 10, 11, 13),
('Armaldo', 'Roca/Bicho', 150, 159, 132, 100, 110, 75),
('Feebas', 'Agua', 17, 7, 8, 7, 11, 14),
('Milotic', 'Agua', 170, 90, 109, 132, 159, 112),
('Castform', 'Normal', 145, 100, 100, 100, 100, 100),
('Kecleon', 'Normal', 135, 121, 100, 90, 154, 70),
('Shuppet', 'Fantasma', 20, 13, 9, 12, 9, 10),
('Banette', 'Fantasma', 139, 148, 95, 113, 93, 95),
('Duskull', 'Fantasma', 18, 10, 15, 9, 15, 8),
('Dusclops', 'Fantasma', 115, 100, 165, 90, 165, 55),
('Tropius', 'Planta/Volador', 174, 98, 113, 102, 117, 81),
('Chimecho', 'Psíquico', 140, 80, 100, 126, 121, 95),
('Absol', 'Siniestro', 140, 165, 90, 105, 90, 105),
('Wynaut', 'Psíquico', 25, 8, 11, 8, 11, 8),
('Snorunt', 'Hielo', 21, 11, 11, 11, 11, 11),
('Glalie', 'Hielo', 155, 110, 110, 110, 110, 110),
('Spheal', 'Hielo/Agua', 23, 10, 11, 11, 11, 10),
('Sealeo', 'Hielo/Agua', 90, 60, 70, 75, 70, 45),
('Walrein', 'Hielo/Agua', 185, 110, 121, 126, 121, 95),
('Clamperl', 'Agua', 19, 12, 14, 13, 11, 9),
('Huntail', 'Agua', 130, 136, 137, 124, 105, 82),
('Gorebyss', 'Agua', 130, 114, 137, 147, 105, 82),
('Relicanth', 'Roca/Agua', 175, 121, 165, 75, 95, 85),
('Luvdisc', 'Agua', 118, 60, 85, 90, 95, 128),
('Bagon', 'Dragón', 20, 13, 12, 10, 9, 11),
('Shelgon', 'Dragón', 85, 95, 100, 60, 50, 50),
('Salamence', 'Dragón/Volador', 170, 181, 110, 143, 110, 132),
('Beldum', 'Acero/Psíquico', 20, 11, 14, 9, 12, 9),
('Metang', 'Acero/Psíquico', 80, 75, 100, 55, 80, 50),
('Metagross', 'Acero/Psíquico', 155, 181, 165, 125, 120, 100),
('Regirock', 'Roca', 155, 132, 253, 80, 132, 80),
('Regice', 'Hielo', 155, 80, 132, 132, 253, 80),
('Registeel', 'Acero', 155, 105, 198, 105, 198, 80),
('Latias', 'Dragón/Psíquico', 155, 110, 120, 143, 165, 143),
('Latios', 'Dragón/Psíquico', 155, 121, 110, 165, 143, 143),
('Kyogre', 'Agua', 175, 132, 120, 198, 176, 121),
('Groudon', 'Tierra', 175, 198, 176, 132, 120, 121),
('Rayquaza', 'Dragón/Volador', 180, 198, 120, 198, 120, 126),
('Jirachi', 'Acero/Psíquico', 175, 132, 132, 132, 132, 132),
('Deoxys', 'Psíquico', 125, 198, 70, 198, 70, 198),
('Turtwig', 'Planta', 21, 12, 12, 10, 11, 9),
('Grotle', 'Planta', 85, 89, 85, 55, 65, 36),
('Torterra', 'Planta/Tierra', 170, 141, 137, 105, 115, 86),
('Chimchar', 'Fuego', 20, 11, 10, 11, 10, 12),
('Monferno', 'Fuego/Lucha', 74, 78, 52, 78, 52, 81),
('Infernape', 'Fuego/Lucha', 151, 136, 101, 136, 101, 140),
('Piplup', 'Agua', 21, 11, 11, 12, 11, 10),
('Prinplup', 'Agua', 74, 66, 68, 81, 76, 50),
('Empoleon', 'Agua/Acero', 159, 116, 118, 144, 133, 90),
('Starly', 'Normal/Volador', 19, 11, 9, 9, 9, 12),
('Staravia', 'Normal/Volador', 65, 75, 50, 40, 40, 80),
('Staraptor', 'Normal/Volador', 160, 154, 100, 80, 90, 132),
('Bidoof', 'Normal', 21, 10, 10, 9, 10, 9),
('Bibarel', 'Normal/Agua', 154, 115, 90, 85, 90, 101),
('Kricketot', 'Bicho', 19, 9, 10, 9, 10, 8),
('Kricketune', 'Bicho', 152, 115, 81, 85, 81, 95),
('Shinx', 'Eléctrico', 20, 12, 10, 10, 10, 10),
('Luxio', 'Eléctrico', 70, 85, 49, 60, 49, 60),
('Luxray', 'Eléctrico', 155, 154, 101, 125, 101, 100),
('Budew', 'Planta/Veneno', 19, 9, 10, 11, 13, 11),
('Roserade', 'Planta/Veneno', 135, 100, 95, 159, 137, 121),
('Cranidos', 'Roca', 22, 17, 10, 9, 9, 11),
('Rampardos', 'Roca', 172, 203, 90, 95, 80, 88),
('Shieldon', 'Roca/Acero', 19, 10, 16, 10, 14, 8),
('Bastiodon', 'Roca/Acero', 135, 82, 184, 77, 151, 60),
('Burmy', 'Bicho', 19, 11, 11, 11, 11, 10),
('Wormadam', 'Bicho/Planta', 135, 89, 137, 100, 137, 66),
('Mothim', 'Bicho/Volador', 145, 124, 80, 124, 80, 96),
('Combee', 'Bicho/Volador', 18, 9, 10, 9, 10, 13),
('Vespiquen', 'Bicho/Volador', 145, 110, 134, 110, 134, 70),
('Pachirisu', 'Eléctrico', 135, 75, 100, 75, 121, 126),
('Buizel', 'Agua', 21, 12, 10, 11, 9, 14),
('Floatzel', 'Agua', 160, 137, 85, 115, 80, 148),
('Cherubi', 'Planta', 20, 10, 10, 12, 11, 9),
('Cherrim', 'Planta', 145, 90, 100, 117, 118, 115),
('Shellos', 'Agua', 23, 11, 11, 12, 12, 9),
('Gastrodon', 'Agua/Tierra', 186, 113, 98, 122, 112, 69),
('Ambipom', 'Normal', 150, 132, 96, 90, 96, 148),
('Drifloon', 'Fantasma/Volador', 25, 11, 9, 12, 10, 13),
('Drifblim', 'Fantasma/Volador', 225, 110, 74, 121, 84, 110),
('Buneary', 'Normal', 20, 11, 10, 10, 11, 14),
('Lopunny', 'Normal', 140, 106, 114, 84, 126, 137),
('Mismagius', 'Fantasma', 135, 90, 90, 137, 137, 137),
('Honchkrow', 'Siniestro/Volador', 175, 159, 82, 137, 82, 101),
('Glameow', 'Normal', 20, 11, 10, 10, 9, 14),
('Purugly', 'Normal', 146, 112, 94, 94, 89, 145),
('Chingling', 'Psíquico', 20, 9, 11, 12, 11, 11),
('Stunky', 'Veneno/Siniestro', 22, 12, 11, 10, 10, 13),
('Skuntank', 'Veneno/Siniestro', 178, 123, 97, 101, 91, 114),
('Bronzor', 'Acero/Psíquico', 21, 9, 13, 9, 13, 8),
('Bronzong', 'Acero/Psíquico', 142, 119, 150, 109, 150, 63),
('Bonsly', 'Roca', 20, 13, 14, 7, 10, 7),
('Mime Jr.', 'Psíquico', 17, 9, 11, 13, 15, 11),
('Happiny', 'Normal', 26, 6, 6, 8, 12, 9),
('Chatot', 'Normal/Volador', 151, 95, 75, 122, 72, 121),
('Spiritomb', 'Fantasma/Siniestro', 125, 123, 140, 123, 140, 65),
('Gible', 'Dragón/Tierra', 21, 13, 11, 10, 10, 10),
('Gabite', 'Dragón/Tierra', 78, 80, 65, 50, 50, 82),
('Garchomp', 'Dragón/Tierra', 183, 165, 125, 110, 115, 134),
('Munchlax', 'Normal', 29, 14, 10, 10, 14, 7),
('Riolu', 'Lucha', 19, 12, 10, 9, 10, 11),
('Lucario', 'Lucha/Acero', 145, 143, 100, 148, 100, 121),
('Hippopotas', 'Tierra', 23, 13, 13, 9, 10, 9),
('Hippowdon', 'Tierra', 183, 145, 152, 98, 102, 77),
('Skorupi', 'Veneno/Bicho', 19, 11, 14, 9, 11, 12),
('Drapion', 'Veneno/Siniestro', 145, 121, 143, 90, 105, 126),
('Croagunk', 'Veneno/Lucha', 20, 11, 10, 11, 10, 11),
('Toxicroak', 'Veneno/Lucha', 158, 138, 95, 116, 95, 115),
('Carnivine', 'Planta', 149, 132, 102, 121, 102, 76),
('Finneon', 'Agua', 20, 10, 11, 10, 12, 12),
('Lumineon', 'Agua', 144, 99, 106, 99, 116, 122),
('Mantyke', 'Agua/Volador', 20, 8, 11, 12, 16, 11),
('Snover', 'Planta/Hielo', 21, 12, 11, 12, 12, 10),
('Abomasnow', 'Planta/Hielo', 165, 123, 105, 123, 115, 90),
('Weavile', 'Siniestro/Hielo', 145, 154, 85, 63, 105, 159),
('Magnezone', 'Eléctrico/Acero', 145, 100, 148, 165, 120, 90),
('Lickilicky', 'Normal', 185, 115, 125, 110, 125, 80),
('Rhyperior', 'Tierra/Roca', 190, 176, 165, 85, 85, 70),
('Tangrowth', 'Planta', 175, 132, 159, 143, 80, 80),
('Electivire', 'Eléctrico', 150, 157, 97, 125, 115, 126),
('Magmortar', 'Fuego', 150, 125, 97, 159, 125, 113),
('Togekiss', 'Normal/Volador', 160, 70, 125, 154, 145, 110),
('Yanmega', 'Bicho/Volador', 161, 106, 116, 150, 86, 126),
('Leafeon', 'Planta', 140, 143, 165, 90, 95, 126),
('Glaceon', 'Hielo', 140, 90, 143, 176, 125, 95),
('Gliscor', 'Tierra/Volador', 150, 126, 159, 75, 105, 126),
('Mamoswine', 'Hielo/Tierra', 185, 165, 110, 100, 90, 110),
('Porygon-Z', 'Normal', 160, 110, 100, 181, 105, 121),
('Gallade', 'Psíquico/Lucha', 143, 159, 95, 95, 145, 110),
('Probopass', 'Roca/Acero', 135, 85, 181, 105, 198, 70),
('Dusknoir', 'Fantasma', 120, 132, 181, 95, 181, 75),
('Froslass', 'Hielo/Fantasma', 145, 110, 100, 110, 100, 143),
('Rotom', 'Eléctrico/Fantasma', 125, 80, 107, 125, 107, 121),
('Uxie', 'Psíquico', 150, 105, 165, 105, 165, 126),
('Mesprit', 'Psíquico', 155, 137, 137, 137, 137, 110),
('Azelf', 'Psíquico', 150, 159, 100, 159, 100, 148),
('Dialga', 'Acero/Dragón', 175, 154, 154, 198, 132, 121),
('Palkia', 'Agua/Dragón', 165, 154, 132, 198, 154, 132),
('Heatran', 'Fuego/Acero', 166, 120, 138, 165, 138, 107),
('Regigigas', 'Normal', 185, 198, 143, 110, 143, 132),
('Giratina', 'Fantasma/Dragón', 225, 132, 154, 132, 154, 121),
('Cresselia', 'Psíquico', 120, 70, 120, 75, 130, 85),
('Phione', 'Agua', 155, 110, 110, 110, 110, 110),
('Manaphy', 'Agua', 175, 132, 132, 132, 132, 132),
('Darkrai', 'Siniestro', 145, 121, 121, 181, 121, 176),
('Shaymin', 'Planta', 175, 132, 132, 132, 132, 132),
('Arceus', 'Normal', 195, 154, 154, 154, 154, 154),
('Victini', 'Psíquico/Fuego', 175, 132, 132, 132, 132, 132),
('Snivy', 'Planta', 20, 10, 11, 10, 11, 12),
('Servine', 'Planta', 75, 60, 75, 60, 75, 83),
('Serperior', 'Planta', 150, 105, 126, 105, 126, 146),
('Tepig', 'Fuego', 22, 12, 10, 10, 10, 10),
('Pignite', 'Fuego/Lucha', 90, 93, 55, 70, 55, 55),
('Emboar', 'Fuego/Lucha', 185, 157, 95, 132, 95, 95),
('Oshawott', 'Agua', 21, 11, 10, 12, 10, 10),
('Dewott', 'Agua', 85, 85, 70, 93, 70, 70),
('Samurott', 'Agua', 170, 132, 115, 130, 100, 100),
('Patrat', 'Normal', 20, 11, 10, 9, 10, 10),
('Watchog', 'Normal', 135, 115, 99, 90, 99, 106),
('Lillipup', 'Normal', 20, 12, 10, 8, 10, 11),
('Herdier', 'Normal', 75, 80, 60, 35, 60, 60),
('Stoutland', 'Normal', 160, 143, 115, 75, 115, 110),
('Purrloin', 'Siniestro', 19, 10, 9, 10, 9, 12),
('Liepard', 'Siniestro', 139, 118, 80, 118, 80, 138),
('Pansage', 'Planta', 20, 11, 10, 11, 10, 12),
('Simisage', 'Planta', 150, 128, 93, 128, 93, 133),
('Pansear', 'Fuego', 20, 11, 10, 11, 10, 12),
('Simisear', 'Fuego', 150, 128, 93, 128, 93, 133),
('Panpour', 'Agua', 20, 11, 10, 11, 10, 12),
('Simipour', 'Agua', 150, 128, 93, 128, 93, 133),
('Munna', 'Psíquico', 23, 8, 10, 12, 11, 7),
('Musharna', 'Psíquico', 191, 85, 115, 139, 125, 59),
('Pidove', 'Normal/Volador', 20, 11, 11, 9, 9, 10),
('Tranquill', 'Normal/Volador', 72, 77, 62, 50, 50, 65),
('Unfezant', 'Normal/Volador', 155, 140, 110, 95, 85, 124),
('Blitzle', 'Eléctrico', 20, 12, 9, 11, 9, 13),
('Zebstrika', 'Eléctrico', 150, 132, 93, 110, 93, 149),
('Roggenrola', 'Roca', 21, 13, 14, 8, 8, 7),
('Boldore', 'Roca', 80, 105, 105, 50, 40, 20),
('Gigalith', 'Roca', 160, 172, 165, 90, 110, 55),
('Woobat', 'Psíquico/Volador', 21, 10, 10, 11, 10, 13),
('Swoobat', 'Psíquico/Volador', 142, 85, 85, 106, 85, 147),
('Drilbur', 'Tierra', 22, 14, 10, 9, 10, 12),
('Excadrill', 'Tierra/Acero', 185, 172, 90, 80, 95, 118),
('Audino', 'Normal', 178, 90, 116, 90, 116, 80),
('Timburr', 'Lucha', 23, 14, 11, 8, 9, 9),
('Gurdurr', 'Lucha', 95, 105, 85, 40, 50, 40),
('Conkeldurr', 'Lucha', 180, 176, 125, 85, 95, 75),
('Tympole', 'Agua', 21, 11, 10, 11, 10, 12),
('Palpitoad', 'Agua/Tierra', 85, 65, 55, 65, 55, 50),
('Seismitoad', 'Agua/Tierra', 180, 125, 105, 115, 105, 104),
('Throh', 'Lucha', 195, 132, 115, 60, 115, 75),
('Sawk', 'Lucha', 150, 159, 105, 60, 105, 115),
('Sewaddle', 'Bicho/Planta', 20, 11, 13, 10, 12, 10),
('Swadloon', 'Bicho/Planta', 65, 63, 90, 50, 80, 42),
('Leavanny', 'Bicho/Planta', 150, 135, 110, 100, 100, 123),
('Venipede', 'Bicho/Veneno', 19, 10, 11, 9, 10, 11),
('Whirlipede', 'Bicho/Veneno', 50, 55, 99, 40, 79, 47),
('Scolipede', 'Bicho/Veneno', 135, 132, 120, 85, 100, 145),
('Cottonee', 'Planta', 19, 8, 11, 9, 10, 12),
('Whimsicott', 'Planta', 135, 97, 115, 107, 105, 150),
('Petilil', 'Planta', 20, 9, 10, 13, 10, 9),
('Lilligant', 'Planta', 145, 90, 105, 143, 105, 121),
('Basculin', 'Agua', 145, 123, 95, 110, 85, 128),
('Sandile', 'Tierra/Siniestro', 21, 13, 10, 9, 10, 12),
('Krokorok', 'Tierra/Siniestro', 70, 82, 45, 45, 45, 74),
('Krookodile', 'Tierra/Siniestro', 170, 150, 110, 95, 100, 123),
('Darumaka', 'Fuego', 23, 15, 10, 7, 10, 11),
('Darmanitan', 'Fuego', 180, 176, 85, 60, 85, 126),
('Maractus', 'Planta', 150, 116, 97, 138, 97, 90),
('Dwebble', 'Bicho/Roca', 21, 12, 14, 9, 9, 11),
('Crustle', 'Bicho/Roca', 145, 126, 159, 95, 105, 75),
('Scraggy', 'Lucha/Siniestro', 21, 13, 13, 9, 13, 10),
('Scrafty', 'Lucha/Siniestro', 140, 121, 145, 75, 145, 88),
('Sigilyph', 'Psíquico/Volador', 147, 88, 110, 135, 110, 127),
('Yamask', 'Fantasma', 19, 9, 14, 11, 12, 8),
('Cofagrigus', 'Fantasma', 133, 80, 181, 125, 135, 60),
('Tirtouga', 'Agua/Roca', 21, 13, 16, 11, 10, 8),
('Carracosta', 'Agua/Roca', 149, 140, 163, 113, 95, 62),
('Archen', 'Roca/Volador', 21, 17, 10, 13, 10, 13),
('Archeops', 'Roca/Volador', 150, 176, 95, 145, 95, 143),
('Trubbish', 'Veneno', 21, 11, 12, 10, 12, 12),
('Garbodor', 'Veneno', 155, 125, 112, 90, 112, 105),
('Zorua', 'Siniestro', 19, 12, 10, 14, 10, 12),
('Zoroark', 'Siniestro', 135, 135, 90, 154, 90, 137),
('Minccino', 'Normal', 21, 11, 10, 10, 10, 13),
('Cinccino', 'Normal', 150, 126, 90, 95, 90, 148),
('Gothita', 'Psíquico', 20, 9, 11, 11, 12, 10),
('Gothorita', 'Psíquico', 70, 45, 70, 75, 85, 55),
('Gothitelle', 'Psíquico', 145, 85, 125, 126, 143, 95),
('Solosis', 'Psíquico', 20, 9, 10, 16, 11, 7),
('Duosion', 'Psíquico', 75, 40, 50, 125, 60, 30),
('Reuniclus', 'Psíquico', 185, 95, 105, 159, 115, 60),
('Ducklett', 'Agua/Volador', 22, 10, 11, 10, 11, 11),
('Swanna', 'Agua/Volador', 150, 117, 93, 117, 93, 128),
('Vanillite', 'Hielo', 20, 11, 11, 12, 12, 10),
('Vanillish', 'Hielo', 61, 65, 65, 80, 75, 59),
('Vanilluxe', 'Hielo', 146, 125, 115, 143, 125, 109),
('Deerling', 'Normal/Planta', 22, 12, 11, 10, 11, 13),
('Sawsbuck', 'Normal/Planta', 155, 132, 100, 90, 100, 126),
('Emolga', 'Eléctrico/Volador', 130, 105, 90, 105, 90, 135),
('Karrablast', 'Bicho', 21, 13, 10, 10, 10, 12),
('Escavalier', 'Bicho/Acero', 145, 170, 137, 90, 137, 50),
('Foongus', 'Planta/Veneno', 22, 11, 11, 11, 11, 7),
('Amoonguss', 'Planta/Veneno', 189, 115, 100, 115, 110, 60),
('Frillish', 'Agua/Fantasma', 21, 10, 11, 12, 14, 10),
('Jellicent', 'Agua/Fantasma', 175, 90, 100, 115, 148, 90),
('Alomomola', 'Agua', 240, 105, 110, 70, 75, 95),
('Joltik', 'Bicho/Eléctrico', 20, 11, 11, 11, 11, 12),
('Galvantula', 'Bicho/Eléctrico', 145, 107, 90, 128, 90, 140),
('Ferroseed', 'Planta/Acero', 20, 11, 15, 8, 14, 7),
('Ferrothorn', 'Planta/Acero', 149, 124, 163, 84, 146, 50),
('Klink', 'Acero', 20, 11, 12, 10, 11, 9),
('Klang', 'Acero', 70, 80, 95, 70, 85, 50),
('Klinklang', 'Acero', 135, 132, 145, 100, 115, 121),
('Tynamo', 'Eléctrico', 35, 55, 40, 45, 40, 60),
('Eelektrik', 'Eléctrico', 65, 85, 70, 75, 70, 40),
('Eelektross', 'Eléctrico', 85, 115, 80, 105, 80, 50),
('Elgyem', 'Psíquico', 21, 11, 11, 14, 11, 9),
('Beheeyem', 'Psíquico', 150, 105, 105, 159, 125, 70),
('Litwick', 'Fantasma/Fuego', 21, 9, 11, 13, 11, 8),
('Lampent', 'Fantasma/Fuego', 70, 40, 60, 95, 60, 55),
('Chandelure', 'Fantasma/Fuego', 135, 85, 120, 192, 120, 110),
('Axew', 'Dragón', 20, 15, 12, 9, 10, 11),
('Fraxure', 'Dragón', 76, 117, 70, 40, 50, 67),
('Haxorus', 'Dragón', 151, 195, 120, 90, 100, 128),
('Cubchoo', 'Hielo', 21, 13, 10, 12, 10, 10),
('Beartic', 'Hielo', 170, 143, 110, 100, 110, 80),
('Cryogonal', 'Hielo', 145, 80, 60, 125, 170, 137),
('Shelmet', 'Bicho', 21, 10, 14, 10, 12, 8),
('Accelgor', 'Bicho', 155, 100, 70, 132, 90, 192),
('Stunfisk', 'Tierra/Eléctrico', 184, 96, 114, 111, 129, 62),
('Mienfoo', 'Lucha', 20, 15, 11, 11, 11, 12),
('Mienshao', 'Lucha', 140, 159, 90, 125, 90, 137),
('Druddigon', 'Dragón', 152, 154, 120, 90, 120, 78),
('Golett', 'Tierra/Fantasma', 22, 13, 11, 9, 11, 9),
('Golurk', 'Tierra/Fantasma', 164, 158, 110, 85, 110, 85),
('Pawniard', 'Siniestro/Acero', 20, 15, 13, 10, 10, 12),
('Bisharp', 'Siniestro/Acero', 140, 159, 132, 90, 100, 100),
('Bouffalant', 'Normal', 170, 143, 125, 70, 125, 85),
('Rufflet', 'Normal/Volador', 23, 14, 11, 10, 11, 12),
('Braviary', 'Normal/Volador', 175, 157, 105, 85, 105, 110),
('Vullaby', 'Siniestro/Volador', 23, 11, 13, 10, 12, 12),
('Mandibuzz', 'Siniestro/Volador', 185, 95, 137, 85, 126, 110),
('Heatmor', 'Fuego', 160, 127, 96, 135, 96, 95),
('Durant', 'Bicho/Acero', 133, 141, 145, 78, 78, 141),
('Deino', 'Siniestro/Dragón', 21, 12, 11, 10, 11, 10),
('Zweilous', 'Siniestro/Dragón', 82, 85, 70, 65, 70, 58),
('Hydreigon', 'Siniestro/Dragón', 167, 135, 120, 172, 120, 129),
('Larvesta', 'Bicho/Fuego', 21, 15, 11, 11, 11, 12),
('Volcarona', 'Bicho/Fuego', 160, 90, 95, 172, 137, 132),
('Cobalion', 'Acero/Lucha', 166, 120, 163, 120, 102, 140),
('Terrakion', 'Roca/Lucha', 166, 163, 120, 102, 120, 140),
('Virizion', 'Planta/Lucha', 166, 120, 102, 120, 163, 140),
('Tornadus', 'Volador', 154, 145, 100, 159, 110, 144),
('Thundurus', 'Eléctrico/Volador', 154, 145, 100, 159, 110, 144),
('Reshiram', 'Dragón/Fuego', 175, 154, 132, 198, 154, 121),
('Zekrom', 'Dragón/Eléctrico', 175, 198, 154, 154, 132, 121),
('Landorus', 'Tierra/Volador', 164, 159, 120, 148, 110, 133),
('Kyurem', 'Dragón/Hielo', 200, 165, 121, 165, 121, 126),
('Keldeo', 'Agua/Lucha', 166, 102, 120, 163, 120, 140),
('Meloetta', 'Normal/Psíquico', 175, 107, 107, 162, 162, 121),
('Genesect', 'Bicho/Acero', 146, 154, 126, 154, 126, 130);

-- ACTUALIZACION DE LOS TIPOS HADA

-- Evoluciones de Clefairy (Pasan de Normal a Hada puro)
UPDATE pokemons SET tipo = 'Hada' WHERE nombre IN ('Cleffa', 'Clefairy', 'Clefable');

-- Evoluciones de Jigglypuff (Pasan de Normal a Normal/Hada)
UPDATE pokemons SET tipo = 'Normal/Hada' WHERE nombre IN ('Igglybuff', 'Jigglypuff', 'Wigglytuff');

-- Evoluciones de Togepi (Pasan de Normal/Volador a Hada/Volador)
UPDATE pokemons SET tipo = 'Hada' WHERE nombre = 'Togepi';
UPDATE pokemons SET tipo = 'Hada/Volador' WHERE nombre IN ('Togetic', 'Togekiss');

-- Evoluciones de Marill (Pasan de Agua a Agua/Hada)
UPDATE pokemons SET tipo = 'Agua/Hada' WHERE nombre IN ('Marill', 'Azumarill');
UPDATE pokemons SET tipo = 'Hada' WHERE nombre = 'Azurill';

-- Evoluciones de Ralts (Pasan de Psíquico a Psíquico/Hada)
-- Nota: Gallade se mantiene como Psíquico/Lucha, no cambia.
UPDATE pokemons SET tipo = 'Psíquico/Hada' WHERE nombre IN ('Ralts', 'Kirlia', 'Gardevoir');

-- Mawile (Pasa de Acero a Acero/Hada)
UPDATE pokemons SET tipo = 'Acero/Hada' WHERE nombre = 'Mawile';

-- Snubbull y Granbull (Pasan de Normal a Hada puro)
UPDATE pokemons SET tipo = 'Hada' WHERE nombre IN ('Snubbull', 'Granbull');

-- Mime Jr. y Mr. Mime (Pasan de Psíquico a Psíquico/Hada)
UPDATE pokemons SET tipo = 'Psíquico/Hada' WHERE nombre IN ('Mime Jr.', 'Mr. Mime');

-- Cottonee y Whimsicott (Pasan de Planta a Planta/Hada)
UPDATE pokemons SET tipo = 'Planta/Hada' WHERE nombre IN ('Cottonee', 'Whimsicott');

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

-- ========================================================
-- 1. TABLA MOVIMIENTOS
-- ========================================================
DROP TABLE IF EXISTS movimientos;

CREATE TABLE movimientos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    categoria VARCHAR(3) NOT NULL, -- FIS, ESP, EST
    potencia INT DEFAULT 0,
    precision_atq INT DEFAULT 100,
    pp INT DEFAULT 10
);

-- ========================================================
-- 2. INSERCIÓN DE MOVIMIENTOS POR TIPO
-- ========================================================

INSERT INTO movimientos (nombre, tipo, categoria, potencia, precision_atq, pp) VALUES
-- TIPO ACERO (15)
('Cabeza de Hierro', 'Acero', 'FIS', 80, 100, 15),
('Foco Resplandor', 'Acero', 'ESP', 80, 100, 10),
('Garra Metal', 'Acero', 'FIS', 50, 95, 35),
('Puño Bala', 'Acero', 'FIS', 40, 100, 30),
('Defensa Férrea', 'Acero', 'EST', 0, 0, 15),
('Eco Metálico', 'Acero', 'EST', 0, 85, 40),
('Cola Férrea', 'Acero', 'FIS', 100, 75, 15),
('Ala de Acero', 'Acero', 'FIS', 70, 90, 25),
('Represión Metal', 'Acero', 'FIS', 0, 100, 10),
('Disparo Espejo', 'Acero', 'ESP', 65, 85, 10),
('Cambio de Marcha', 'Acero', 'EST', 0, 0, 10),
('Aligerar', 'Acero', 'EST', 0, 0, 15),

-- TIPO AGUA (15)
('Pistola Agua', 'Agua', 'ESP', 40, 100, 25),
('Hidrobomba', 'Agua', 'ESP', 110, 80, 5),
('Surf', 'Agua', 'ESP', 90, 100, 15),
('Rayo Burbuja', 'Agua', 'ESP', 65, 100, 20),
('Cascada', 'Agua', 'FIS', 80, 100, 15),
('Acua Cola', 'Agua', 'FIS', 90, 90, 10),
('Salpicar', 'Agua', 'ESP', 150, 100, 5),
('Hidropulso', 'Agua', 'ESP', 60, 100, 20),
('Salmuera', 'Agua', 'ESP', 65, 100, 10),
('Buceo', 'Agua', 'FIS', 80, 100, 10),
('Agua Lodosa', 'Agua', 'ESP', 90, 85, 10),
('Danza Lluvia', 'Agua', 'EST', 0, 0, 5),
('Refugio', 'Agua', 'EST', 0, 0, 40),
('Acua Aro', 'Agua', 'EST', 0, 0, 20),
('Escaldar', 'Agua', 'ESP', 80, 100, 15),

-- TIPO BICHO (15)
('Tijera X', 'Bicho', 'FIS', 80, 100, 15),
('Zumbido', 'Bicho', 'ESP', 90, 100, 10),
('Ida y Vuelta', 'Bicho', 'FIS', 70, 100, 20),
('Picadura', 'Bicho', 'FIS', 60, 100, 20),
('Megacuerno', 'Bicho', 'FIS', 120, 85, 10),
('Doble Rayo', 'Bicho', 'ESP', 75, 100, 20),
('Chupavidas', 'Bicho', 'FIS', 80, 100, 10),
('Corte Furia', 'Bicho', 'FIS', 40, 95, 20),
('Pin Misil', 'Bicho', 'FIS', 25, 95, 20),
('Estoicismo', 'Bicho', 'ESP', 50, 100, 20),
('Viento Plata', 'Bicho', 'ESP', 60, 100, 5),
('Danza Aleteo', 'Bicho', 'EST', 0, 0, 20),
('Disparo Demora', 'Bicho', 'EST', 0, 95, 40),
('Ráfaga', 'Bicho', 'EST', 0, 100, 15),
('Polvo Ira', 'Bicho', 'EST', 0, 0, 20),

-- TIPO DRAGON (15)
('Garra Dragón', 'Dragón', 'FIS', 80, 100, 15),
('Pulso Dragón', 'Dragón', 'ESP', 85, 100, 10),
('Enfado', 'Dragón', 'FIS', 120, 100, 10),
('Cometa Draco', 'Dragón', 'ESP', 130, 90, 5),
('Carga Dragón', 'Dragón', 'FIS', 100, 75, 10),
('Cola Dragón', 'Dragón', 'FIS', 60, 90, 10),
('Dragoaliento', 'Dragón', 'ESP', 60, 100, 20),
('Ciclón', 'Dragón', 'ESP', 40, 100, 20),
('Golpe Bis', 'Dragón', 'FIS', 40, 90, 15),
('Danza Dragón', 'Dragón', 'EST', 0, 0, 20),
('Cometa Draco', 'Dragón', 'ESP', 130, 90, 5),

-- TIPO ELECTRICO (15)
('Rayo', 'Eléctrico', 'ESP', 90, 100, 15),
('Trueno', 'Eléctrico', 'ESP', 110, 70, 10),
('Impactrueno', 'Eléctrico', 'ESP', 40, 100, 30),
('Puño Trueno', 'Eléctrico', 'FIS', 75, 100, 15),
('Chispazo', 'Eléctrico', 'ESP', 80, 100, 15),
('Voltio Cruel', 'Eléctrico', 'FIS', 90, 100, 15),
('Voltiocambio', 'Eléctrico', 'ESP', 70, 100, 20),
('Onda Trueno', 'Eléctrico', 'EST', 0, 90, 20),
('Colmillo Rayo', 'Eléctrico', 'FIS', 65, 95, 15),
('Placaje Eléc', 'Eléctrico', 'FIS', 120, 100, 15),
('Rayo Carga', 'Eléctrico', 'ESP', 50, 90, 10),
('Chispa', 'Eléctrico', 'FIS', 65, 100, 20),
('Levitón', 'Eléctrico', 'EST', 0, 0, 10),
('Electrotela', 'Eléctrico', 'ESP', 55, 95, 15),

-- TIPO FANTASMA (15)
('Bola Sombra', 'Fantasma', 'ESP', 80, 100, 15),
('Garra Umbría', 'Fantasma', 'FIS', 70, 100, 15),
('Lengüetazo', 'Fantasma', 'FIS', 30, 100, 30),
('Infortunio', 'Fantasma', 'ESP', 65, 100, 10),
('Sombra Vil', 'Fantasma', 'FIS', 40, 100, 30),
('Viento Aciago', 'Fantasma', 'ESP', 60, 100, 5),
('Maldición', 'Fantasma', 'EST', 0, 0, 10),
('Rayo Confuso', 'Fantasma', 'EST', 0, 100, 10),
('Mismo Destino', 'Fantasma', 'EST', 0, 0, 5),
('Rencor', 'Fantasma', 'EST', 0, 100, 10),
('Impresionar', 'Fantasma', 'FIS', 30, 100, 15),
('Pesadilla', 'Fantasma', 'EST', 0, 100, 15),
('Golpe Fantasma', 'Fantasma', 'FIS', 90, 100, 10),

-- TIPO FUEGO (15)
('Lanzallamas', 'Fuego', 'ESP', 90, 100, 15),
('Llamarada', 'Fuego', 'ESP', 110, 85, 5),
('Ascuas', 'Fuego', 'ESP', 40, 100, 25),
('Puño Fuego', 'Fuego', 'FIS', 75, 100, 15),
('Envite Ígneo', 'Fuego', 'FIS', 120, 100, 15),
('Sofoco', 'Fuego', 'ESP', 130, 90, 5),
('Onda Ígnea', 'Fuego', 'ESP', 95, 90, 10),
('Fuego Fatuo', 'Fuego', 'EST', 0, 85, 15),
('Colmillo Ígneo', 'Fuego', 'FIS', 65, 95, 15),
('Rueda Fuego', 'Fuego', 'FIS', 60, 100, 25),
('Nitrocarga', 'Fuego', 'FIS', 50, 100, 20),
('Giro Fuego', 'Fuego', 'ESP', 35, 85, 15),
('Erupción', 'Fuego', 'ESP', 150, 100, 5),
('Día Soleado', 'Fuego', 'EST', 0, 0, 5),
('Calcinación', 'Fuego', 'ESP', 60, 100, 15),

-- TIPO HADA (15) - Incluye retcons clásicos
('Brillo Mágico', 'Hada', 'ESP', 80, 100, 10),
('Fuerza Lunar', 'Hada', 'ESP', 95, 100, 15),
('Carantoña', 'Hada', 'FIS', 90, 90, 10),
('Beso Drenaje', 'Hada', 'ESP', 50, 100, 10),
('Voz Cautivadora', 'Hada', 'ESP', 40, 0, 15),
('Encanto', 'Hada', 'EST', 0, 100, 20),
('Luz Lunar', 'Hada', 'EST', 0, 0, 5),
('Beso Dulce', 'Hada', 'EST', 0, 75, 10),
('Viento Feérico', 'Hada', 'ESP', 40, 100, 30),
('Campo de Niebla', 'Hada', 'EST', 0, 0, 10),
('Ojos Tiernos', 'Hada', 'EST', 0, 100, 30),
('Geocontrol', 'Hada', 'EST', 0, 0, 10),
('Beso Amoroso', 'Hada', 'EST', 0, 75, 10), -- Jynx signature
('Llama Embrujada', 'Hada', 'ESP', 75, 100, 10),

-- TIPO HIELO (15)
('Rayo Hielo', 'Hielo', 'ESP', 90, 100, 10),
('Ventisca', 'Hielo', 'ESP', 110, 70, 5),
('Puño Hielo', 'Hielo', 'FIS', 75, 100, 15),
('Canto Helado', 'Hielo', 'FIS', 40, 100, 30),
('Vaho Gélido', 'Hielo', 'ESP', 60, 90, 10),
('Chuzos', 'Hielo', 'FIS', 85, 90, 10),
('Colmillo Hielo', 'Hielo', 'FIS', 65, 95, 15),
('Alud', 'Hielo', 'FIS', 60, 100, 10),
('Rayo Aurora', 'Hielo', 'ESP', 65, 100, 20),
('Viento Hielo', 'Hielo', 'ESP', 55, 95, 15),
('Nieve Polvo', 'Hielo', 'ESP', 40, 100, 25),
('Granizo', 'Hielo', 'EST', 0, 0, 10),
('Neblina', 'Hielo', 'EST', 0, 0, 30),
('Niebla', 'Hielo', 'EST', 0, 0, 30),
('Frío Polar', 'Hielo', 'ESP', 0, 30, 5), -- OHKO

-- TIPO LUCHA (15)
('A Bocajarro', 'Lucha', 'FIS', 120, 100, 5),
('Onda Certera', 'Lucha', 'ESP', 120, 70, 5),
('Fuerza Bruta', 'Lucha', 'FIS', 120, 100, 5),
('Demolición', 'Lucha', 'FIS', 75, 100, 15),
('Ultrapuño', 'Lucha', 'FIS', 40, 100, 30),
('Patada Salto Alta', 'Lucha', 'FIS', 130, 90, 10),
('Puño Dinámico', 'Lucha', 'FIS', 100, 50, 5),
('Contraataque', 'Lucha', 'FIS', 0, 100, 20),
('Doble Patada', 'Lucha', 'FIS', 30, 100, 30),
('Corpulencia', 'Lucha', 'EST', 0, 0, 20),
('Detección', 'Lucha', 'EST', 0, 0, 5),
('Llave Giro', 'Lucha', 'FIS', 60, 100, 10),
('Espada Santa', 'Lucha', 'FIS', 90, 100, 15),

-- TIPO NORMAL (15)
('Placaje', 'Normal', 'FIS', 40, 100, 35),
('Ataque Rápido', 'Normal', 'FIS', 40, 100, 30),
('Corte', 'Normal', 'FIS', 50, 95, 30),
('Fuerza', 'Normal', 'FIS', 80, 100, 15),
('Doble Filo', 'Normal', 'FIS', 120, 100, 15),
('Hiperrayo', 'Normal', 'ESP', 150, 90, 5),
('Gigaimpacto', 'Normal', 'FIS', 150, 90, 5),
('Triataque', 'Normal', 'ESP', 80, 100, 10),
('Velocidad Extrema', 'Normal', 'FIS', 80, 100, 5),
('Cuchillada', 'Normal', 'FIS', 70, 100, 20),
('Vozarrón', 'Normal', 'ESP', 90, 100, 10),
('Protección', 'Normal', 'EST', 0, 0, 10),
('Recuperación', 'Normal', 'EST', 0, 0, 10),
('Danza Espada', 'Normal', 'EST', 0, 0, 20),
('Sustituto', 'Normal', 'EST', 0, 0, 10),

-- TIPO PLANTA (15)
('Rayo Solar', 'Planta', 'ESP', 120, 100, 10),
('Latigazo', 'Planta', 'FIS', 120, 85, 10),
('Gigadrenado', 'Planta', 'ESP', 75, 100, 10),
('Hoja Aguda', 'Planta', 'FIS', 90, 100, 15),
('Bomba Germen', 'Planta', 'FIS', 80, 100, 15),
('Energibola', 'Planta', 'ESP', 90, 100, 10),
('Lluevehojas', 'Planta', 'ESP', 130, 90, 5),
('Hoja Afilada', 'Planta', 'FIS', 55, 95, 25),
('Látigo Cepa', 'Planta', 'FIS', 45, 100, 25),
('Drenadoras', 'Planta', 'EST', 0, 90, 10),
('Somnífero', 'Planta', 'EST', 0, 75, 15),
('Espora', 'Planta', 'EST', 0, 100, 15),
('Síntesis', 'Planta', 'EST', 0, 0, 5),
('Tormenta Floral', 'Planta', 'FIS', 90, 100, 15),
('Mazazo', 'Planta', 'FIS', 120, 100, 15),

-- TIPO PSIQUICO (15)
('Psíquico', 'Psíquico', 'ESP', 90, 100, 10),
('Psicocarga', 'Psíquico', 'ESP', 80, 100, 10),
('Confusión', 'Psíquico', 'ESP', 50, 100, 25),
('Cabezazo Zen', 'Psíquico', 'FIS', 80, 90, 15),
('Psicocorte', 'Psíquico', 'FIS', 70, 100, 20),
('Premonición', 'Psíquico', 'ESP', 120, 100, 10),
('Comesueños', 'Psíquico', 'ESP', 100, 100, 15),
('Paz Mental', 'Psíquico', 'EST', 0, 0, 20),
('Hipnosis', 'Psíquico', 'EST', 0, 60, 20),
('Pantalla Luz', 'Psíquico', 'EST', 0, 0, 30),
('Reflejo', 'Psíquico', 'EST', 0, 0, 20),
('Teletransporte', 'Psíquico', 'EST', 0, 0, 20),
('Truco', 'Psíquico', 'EST', 0, 100, 10),
('Agilidad', 'Psíquico', 'EST', 0, 0, 30),
('Espacio Raro', 'Psíquico', 'EST', 0, 0, 5),

-- TIPO ROCA (15)
('Avalancha', 'Roca', 'FIS', 75, 90, 10),
('Roca Afilada', 'Roca', 'FIS', 100, 80, 5),
('Testarazo', 'Roca', 'FIS', 150, 80, 5),
('Lanzarrocas', 'Roca', 'FIS', 50, 90, 15),
('Tumba Rocas', 'Roca', 'FIS', 60, 95, 15),
('Pedrada', 'Roca', 'FIS', 25, 90, 10),
('Poder Pasado', 'Roca', 'ESP', 60, 100, 5),
('Joya de Luz', 'Roca', 'ESP', 80, 100, 20),
('Desenrollar', 'Roca', 'FIS', 30, 90, 20),
('Romperrocas', 'Roca', 'FIS', 40, 100, 15),
('Antiaéreo', 'Roca', 'FIS', 50, 100, 15), 
('Trampa Rocas', 'Roca', 'EST', 0, 0, 20),
('Pulimento', 'Roca', 'EST', 0, 0, 20),
('Tormenta de Arena', 'Roca', 'EST', 0, 0, 10),
('Vasta Guardia', 'Roca', 'EST', 0, 0, 10),

-- TIPO SINIESTRO (15)
('Triturar', 'Siniestro', 'FIS', 80, 100, 15),
('Mordisco', 'Siniestro', 'FIS', 60, 100, 25),
('Pulso Umbrío', 'Siniestro', 'ESP', 80, 100, 15),
('Tajo Umbrío', 'Siniestro', 'FIS', 70, 100, 15),
('Golpe Bajo', 'Siniestro', 'FIS', 70, 100, 5),
('Desarme', 'Siniestro', 'FIS', 65, 100, 20),
('Persecución', 'Siniestro', 'FIS', 40, 100, 20),
('Alarido', 'Siniestro', 'ESP', 55, 95, 15),
('Vendetta', 'Siniestro', 'FIS', 50, 100, 10),
('Juego Sucio', 'Siniestro', 'FIS', 95, 100, 15),
('Maquinación', 'Siniestro', 'EST', 0, 0, 20),
('Mofa', 'Siniestro', 'EST', 0, 100, 20),
('Tormento', 'Siniestro', 'EST', 0, 100, 15),
('Legado', 'Siniestro', 'EST', 0, 100, 10),

-- TIPO TIERRA (15)
('Terremoto', 'Tierra', 'FIS', 100, 100, 10),
('Tierra Viva', 'Tierra', 'ESP', 90, 100, 10),
('Excavar', 'Tierra', 'FIS', 80, 100, 10),
('Bofetón Lodo', 'Tierra', 'ESP', 20, 100, 10),
('Disparo Lodo', 'Tierra', 'ESP', 55, 95, 15),
('Bomba Fango', 'Tierra', 'ESP', 65, 85, 10),
('Hueso Palo', 'Tierra', 'FIS', 65, 85, 20),
('Huesomerang', 'Tierra', 'FIS', 50, 90, 10),
('Taladradora', 'Tierra', 'FIS', 80, 95, 10),
('Bucle Arena', 'Tierra', 'FIS', 35, 85, 15),
('Puas', 'Tierra', 'EST', 0, 0, 20),
('Ataque Arena', 'Tierra', 'EST', 0, 100, 15),
('Chapoteo Lodo', 'Tierra', 'EST', 0, 0, 15),
('Fisura', 'Tierra', 'FIS', 0, 30, 5), -- OHKO

-- TIPO VENENO (15)
('Bomba Lodo', 'Veneno', 'ESP', 90, 100, 10),
('Puya Nociva', 'Veneno', 'FIS', 80, 100, 20),
('Onda Tóxica', 'Veneno', 'ESP', 95, 100, 10),
('Carga Tóxica', 'Veneno', 'ESP', 65, 100, 10),
('Picotazo Veneno', 'Veneno', 'FIS', 15, 100, 35),
('Residuos', 'Veneno', 'ESP', 65, 100, 20),
('Colmillo Veneno', 'Veneno', 'FIS', 50, 100, 15),
('Cola Veneno', 'Veneno', 'FIS', 50, 100, 25),
('Lanza Mugre', 'Veneno', 'FIS', 120, 80, 5),
('Ácido', 'Veneno', 'ESP', 40, 100, 30),
('Eructo', 'Veneno', 'ESP', 120, 90, 10),
('Tóxico', 'Veneno', 'EST', 0, 90, 10),
('Puas Tóxicas', 'Veneno', 'EST', 0, 0, 20),
('Armadura Ácida', 'Veneno', 'EST', 0, 0, 20),
('Bomba Ácida', 'Veneno', 'ESP', 40, 100, 20),

-- TIPO VOLADOR (15)
('Vuelo', 'Volador', 'FIS', 90, 95, 15),
('Pájaro Osado', 'Volador', 'FIS', 120, 100, 15),
('Tajo Aéreo', 'Volador', 'ESP', 75, 95, 15),
('Ataque Ala', 'Volador', 'FIS', 60, 100, 35),
('Picotazo', 'Volador', 'FIS', 35, 100, 35),
('Pico Taladro', 'Volador', 'FIS', 80, 100, 20),
('Acróbata', 'Volador', 'FIS', 55, 100, 15),
('Vendaval', 'Volador', 'ESP', 110, 70, 10),
('Tornado', 'Volador', 'ESP', 40, 100, 35),
('Aire Afilado', 'Volador', 'ESP', 60, 95, 25),
('Respiro', 'Volador', 'EST', 0, 0, 10),
('Viento Afín', 'Volador', 'EST', 0, 0, 15),
('Danza Pluma', 'Volador', 'EST', 0, 100, 15),
('Despejar', 'Volador', 'EST', 0, 0, 15);

-- ========================================================
-- 3. MOVIMIENTOS EXCLUSIVOS (LEGENDARIOS Y SINGULARES)
-- ========================================================

INSERT INTO movimientos (nombre, tipo, categoria, potencia, precision_atq, pp) VALUES
('Brecha Negra', 'Siniestro', 'EST', 0, 50, 10),    -- Darkrai
('Sentencia', 'Normal', 'ESP', 100, 100, 10),       -- Arceus
('V de Fuego', 'Fuego', 'FIS', 180, 95, 5),         -- Victini
('Llama Azul', 'Fuego', 'ESP', 130, 85, 5),         -- Reshiram
('Llama Fusión', 'Fuego', 'ESP', 100, 100, 5),      -- Reshiram
('Ataque Fulgor', 'Eléctrico', 'FIS', 130, 85, 5),  -- Zekrom
('Rayo Fusión', 'Eléctrico', 'FIS', 100, 100, 5),   -- Zekrom
('Mundo Gélido', 'Hielo', 'ESP', 65, 95, 10),       -- Kyurem
('Tecnoshock', 'Normal', 'ESP', 120, 100, 5),       -- Genesect
('Onda Mental', 'Psíquico', 'ESP', 100, 100, 10),   -- Mewtwo
('Aerochorro', 'Volador', 'ESP', 100, 95, 5),       -- Lugia
('Fuego Sagrado', 'Fuego', 'FIS', 100, 95, 5),      -- Ho-Oh
('Corte Vacío', 'Dragón', 'ESP', 100, 95, 5),       -- Palkia
('Distorsión', 'Dragón', 'ESP', 150, 90, 5),        -- Dialga
('Golpe Umbrío', 'Fantasma', 'FIS', 120, 100, 5),   -- Giratina
('Lluvia Ígnea', 'Fuego', 'ESP', 100, 75, 5),       -- Heatran
('Fogonazo', 'Planta', 'ESP', 120, 85, 5),          -- Shaymin
('Canto Arcaico', 'Normal', 'ESP', 75, 100, 10),    -- Meloetta
('Sable Místico', 'Lucha', 'ESP', 85, 100, 10),     -- Keldeo
('Humareda', 'Fuego', 'ESP', 80, 100, 15);          -- Torkoal/Heatran (Semi-exclusivo)

-- ========================================================
-- Creacion de tabla pokemon_movimientos
-- ========================================================

DROP TABLE IF EXISTS pokemon_movimientos;

CREATE TABLE pokemon_movimientos (
    id_pokemon INT,
    id_movimiento INT,
    PRIMARY KEY (id_pokemon, id_movimiento),
    FOREIGN KEY (id_pokemon) REFERENCES pokemons(id) ON DELETE CASCADE,
    FOREIGN KEY (id_movimiento) REFERENCES movimientos(id) ON DELETE CASCADE
);

-- ========================================================
-- Asignación de movimientos (Pokemons 1 - 50)
-- ========================================================

-- 1. Bulbasaur
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (1, 161); -- Látigo Cepa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (1, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (1, 162); -- Drenadoras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (1, 226); -- Bomba Lodo

-- 2. Ivysaur
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (2, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (2, 161); -- Látigo Cepa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (2, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (2, 162); -- Drenadoras

-- 3. Venusaur
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (3, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (3, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (3, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (3, 226); -- Bomba Lodo

-- 4. Charmander
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (4, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (4, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (4, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (4, 92);  -- Giro Fuego

-- 5. Charmeleon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (5, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (5, 84);  -- Puño Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (5, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (5, 128); -- Demolición

-- 6. Charizard
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (6, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (6, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (6, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (6, 45);  -- Enfado

-- 7. Squirtle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (7, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (7, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (7, 25);  -- Refugio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (7, 110); -- Rayo Hielo

-- 8. Wartortle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (8, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (8, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (8, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (8, 18);  -- Acua Cola

-- 9. Blastoise
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (9, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (9, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (9, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (9, 126); -- Onda Certera

-- 10. Caterpie
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (10, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (10, 40);  -- Disparo Demora

-- 11. Metapod
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (11, 5);   -- Defensa Férrea

-- 12. Butterfree
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (12, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (12, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (12, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (12, 249); -- Tornado

-- 13. Weedle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (13, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (13, 40);  -- Disparo Demora

-- 14. Kakuna
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (14, 5);   -- Defensa Férrea

-- 15. Beedrill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (15, 28);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (15, 227); -- Puya Nociva
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (15, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (15, 30);  -- Ida y Vuelta

-- 16. Pidgey
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (16, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (16, 249); -- Tornado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (16, 251); -- Respiro

-- 17. Pidgeotto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (17, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (17, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (17, 251); -- Respiro

-- 18. Pidgeot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (18, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (18, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (18, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (18, 251); -- Respiro

-- 19. Rattata
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (19, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (19, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (19, 199); -- Mordisco

-- 20. Raticate
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (20, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (20, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (20, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (20, 202); -- Golpe Bajo

-- 21. Spearow HACER ESTE
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (21, 245); -- Picotazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (21, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (21, 244); -- Ataque Ala

-- 22. Fearow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (22, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (22, 246); -- Pico Taladro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (22, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (22, 30);  -- Ida y Vuelta

-- 23. Ekans
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (23, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (23, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (23, 237); -- Armadura Ácida

-- 24. Arbok
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (24, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (24, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (24, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (24, 212); -- Terremoto

-- 25. Pikachu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (25, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (25, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (25, 61);  -- Onda Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (25, 112); -- Puño Hielo

-- 26. Raichu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (26, 55);  -- Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (26, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (26, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (26, 7);   -- Cola Férrea

-- 27. Sandshrew
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (27, 214); -- Excavar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (27, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (27, 187); -- Tumba Rocas

-- 28. Sandslash
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (28, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (28, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (28, 220); -- Taladradora
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (28, 151); -- Danza Espada

-- 29. Nidoran F
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (29, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (29, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (29, 138); -- Placaje

-- 30. Nidorina
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (30, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (30, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (30, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (30, 212); -- Terremoto

-- 31. Nidoqueen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (31, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (31, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (31, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (31, 153); -- Rayo Solar

-- 32. Nidoran M
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (32, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (32, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (32, 138); -- Placaje

-- 33. Nidorino
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (33, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (33, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (33, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (33, 212); -- Terremoto

-- 34. Nidoking
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (34, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (34, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (34, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (34, 54);  -- Rayo

-- 35. Clefairy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (35, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (35, 103); -- Beso Dulce
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (35, 150); -- Recuperación

-- 36. Clefable
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (36, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (36, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (36, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (36, 54);  -- Rayo

-- 37. Vulpix
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (37, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (37, 92);  -- Giro Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (37, 201); -- Pulso Umbrío

-- 38. Ninetales
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (38, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (38, 86);  -- Sofoco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (38, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (38, 209); -- Maquinación

-- 39. Jigglypuff
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (39, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (39, 100); -- Beso Drenaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (39, 152); -- Sustituto

-- 40. Wigglytuff
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (40, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (40, 143); -- Hiperrayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (40, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (40, 152); -- Sustituto

-- 41. Zubat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (41, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (41, 245); -- Picotazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (41, 249); -- Tornado

-- 42. Golbat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (42, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (42, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (42, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (42, 251); -- Respiro

-- 43. Oddish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (43, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (43, 235); -- Ácido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (43, 163); -- Somnífero

-- 44. Gloom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (44, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (44, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (44, 235); -- Ácido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (44, 163); -- Somnífero

-- 45. Vileplume
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (45, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (45, 228); -- Onda Tóxica
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (45, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (45, 164); -- Síntesis

-- 46. Paras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (46, 34);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (46, 164); -- Síntesis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (46, 161); -- Látigo Cepa

-- 47. Parasect
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (47, 28);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (47, 164); -- Síntesis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (47, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (47, 167); -- Mazazo

-- 48. Venonat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (48, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (48, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (48, 230); -- Picotazo Veneno

-- 49. Venomoth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (49, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (49, 39);  -- Danza Aleteo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (49, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (49, 226); -- Bomba Lodo

-- 50. Diglett
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (50, 214); -- Excavar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (50, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (50, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (50, 187); -- Tumba Rocas

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (51 - 100) CON COMENTARIOS
-- ========================================================

-- 51. Dugtrio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (51, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (51, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (51, 220); -- Taladradora
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (51, 202); -- Golpe Bajo

-- 52. Meowth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (52, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (52, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (52, 147); -- Cuchillada

-- 53. Persian
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (53, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (53, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (53, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (53, 60);  -- Voltiocambio

-- 54. Psyduck
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (54, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (54, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (54, 15);  -- Surf

-- 55. Golduck
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (55, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (55, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (55, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (55, 175); -- Paz Mental

-- 56. Mankey
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (56, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (56, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (56, 134); -- Corpulencia

-- 57. Primeape
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (57, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (57, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (57, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (57, 134); -- Corpulencia

-- 58. Growlithe
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (58, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (58, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (58, 81);  -- Lanzallamas

-- 59. Arcanine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (59, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (59, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (59, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (59, 81);  -- Lanzallamas

-- 60. Poliwag
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (60, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (60, 110); -- Rayo Hielo

-- 61. Poliwhirl
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (61, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (61, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (61, 20);  -- Acua Cola

-- 62. Poliwrath
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (62, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (62, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (62, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (62, 212); -- Terremoto

-- 63. Abra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (63, 179); -- Teletransporte

-- 64. Kadabra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (64, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (64, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (64, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (64, 171); -- Cabezazo Zen

-- 65. Alakazam
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (65, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (65, 169); -- Psicocarga
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (65, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (65, 68);  -- Bola Sombra

-- 66. Machop
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (66, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (66, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (66, 212); -- Terremoto

-- 67. Machoke
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (67, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (67, 134); -- Corpulencia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (67, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (67, 183); -- Avalancha

-- 68. Machamp
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (68, 131); -- Puño Dinámico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (68, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (68, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (68, 134); -- Corpulencia

-- 69. Bellsprout
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (69, 161); -- Látigo Cepa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (69, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (69, 163); -- Somnífero

-- 70. Weepinbell
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (70, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (70, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (70, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (70, 164); -- Paralizador

-- 71. Victreebel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (71, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (71, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (71, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (71, 153); -- Rayo Solar

-- 72. Tentacool
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (72, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (72, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (72, 110); -- Rayo Hielo

-- 73. Tentacruel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (73, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (73, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (73, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (73, 27);  -- Escaldar

-- 74. Geodude
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (74, 186); -- Lanzarocas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (74, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (74, 138); -- Placaje

-- 75. Graveler
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (75, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (75, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (75, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (75, 151); -- Danza Espada

-- 76. Golem
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (76, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (76, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (76, 185); -- Testarazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (76, 144); -- Gigaimpacto

-- 77. Ponyta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (77, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (77, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (77, 139); -- Ataque Rápido

-- 78. Rapidash
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (78, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (78, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (78, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (78, 202); -- Golpe Bajo

-- 79. Slowpoke
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (79, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (79, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (79, 110); -- Rayo Hielo

-- 80. Slowbro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (80, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (80, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (80, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (80, 175); -- Paz Mental

-- 81. Magnemite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (81, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (81, 2);   -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (81, 60);  -- Voltiocambio

-- 82. Magneton
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (82, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (82, 2);   -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (82, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (82, 5);   -- Defensa Férrea

-- 83. Farfetch'd
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (83, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (83, 241); -- Vuelo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (83, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (83, 30);  -- Ida y Vuelta

-- 84. Doduo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (84, 245); -- Pico Taladro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (84, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (84, 250); -- Picotazo

-- 85. Dodrio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (85, 246); -- Pico Taladro (Potente)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (85, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (85, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (85, 202); -- Golpe Bajo

-- 86. Seel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (86, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (86, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (86, 25);  -- Acua Aro

-- 87. Dewgong
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (87, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (87, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (87, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (87, 24);  -- Refugio

-- 88. Grimer
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (88, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (88, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (88, 226); -- Bomba Lodo

-- 89. Muk
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (89, 228); -- Onda Tóxica
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (89, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (89, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (89, 81);  -- Lanzallamas

-- 90. Shellder
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (90, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (90, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (90, 25);  -- Acua Aro

-- 91. Cloyster
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (91, 115); -- Chuzos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (91, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (91, 188); -- Pedrada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (91, 240); -- Púas Tóxicas

-- 92. Gastly
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (92, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (92, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (92, 75);  -- Infortunio

-- 93. Haunter
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (93, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (93, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (93, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (93, 75);  -- Infortunio

-- 94. Gengar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (94, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (94, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (94, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (94, 174); -- Comesueños

-- 95. Onix
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (95, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (95, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (95, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (95, 222); -- Trampa Rocas

-- 96. Drowzee
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (96, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (96, 176); -- Hipnosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (96, 84);  -- Puño Fuego

-- 97. Hypno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (97, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (97, 176); -- Hipnosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (97, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (97, 198); -- Triturar

-- 98. Krabby
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (98, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (98, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (98, 18);  -- Martillazo

-- 99. Kingler
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (99, 17);  -- Cascada (Potente)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (99, 18);  -- Martillazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (99, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (99, 1);   -- Cabeza de Hierro

-- 100. Voltorb
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (100, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (100, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (100, 141); -- Autodestrucción

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (101 - 150) CON COMENTARIOS
-- ========================================================

-- 101. Electrode
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (101, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (101, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (101, 145); -- Explosión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (101, 203); -- mofa

-- 102. Exeggcute
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (102, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (102, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (102, 153); -- Rayo Solar

-- 103. Exeggutor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (103, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (103, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (103, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (103, 171); -- Cabezazo Zen

-- 104. Cubone
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (104, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (104, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (104, 1);   -- Cabeza de Hierro

-- 105. Marowak
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (105, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (105, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (105, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (105, 151); -- Danza Espada

-- 106. Hitmonlee
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (106, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (106, 132); -- Patada Salto Alta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (106, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (106, 202); -- Golpe Bajo

-- 107. Hitmonchan
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (107, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (107, 84);  -- Puño Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (107, 114); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (107, 58);  -- Puño Trueno

-- 108. Lickitung
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (108, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (108, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (108, 81);  -- Lanzallamas

-- 109. Koffing
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (109, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (109, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (109, 81);  -- Lanzallamas

-- 110. Weezing
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (110, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (110, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (110, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (110, 68);  -- Bola Sombra

-- 111. Rhyhorn
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (111, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (111, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (111, 143); -- Derribo

-- 112. Rhydon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (112, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (112, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (112, 185); -- Testarazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (112, 151); -- Danza Espada

-- 113. Chansey
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (113, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (113, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (113, 81);  -- Lanzallamas

-- 114. Tangela
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (114, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (114, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (114, 153); -- Rayo Solar

-- 115. Kangaskhan
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (115, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (115, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (115, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (115, 202); -- Golpe Bajo

-- 116. Horsea
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (116, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (116, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (116, 110); -- Rayo Hielo

-- 117. Seadra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (117, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (117, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (117, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (117, 243); -- Agilidad

-- 118. Goldeen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (118, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (118, 20);  -- Acua Cola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (118, 250); -- Picotazo

-- 119. Seaking
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (119, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (119, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (119, 245); -- Pico Taladro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (119, 142); -- Doble Filo

-- 120. Staryu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (120, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (120, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (120, 54);  -- Rayo

-- 121. Starmie
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (121, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (121, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (121, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (121, 54);  -- Rayo

-- 122. Mr. Mime
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (122, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (122, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (122, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (122, 54);  -- Rayo

-- 123. Scyther
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (123, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (123, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (123, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (123, 139); -- Ataque Rápido

-- 124. Jynx
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (124, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (124, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (124, 174); -- Comesueños
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (124, 114); -- Puño Hielo

-- 125. Electabuzz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (125, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (125, 58);  -- Puño Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (125, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (125, 60);  -- Voltiocambio

-- 126. Magmar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (126, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (126, 84);  -- Puño Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (126, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (126, 68);  -- Bola Sombra

-- 127. Pinsir
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (127, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (127, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (127, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (127, 151); -- Danza Espada

-- 128. Tauros
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (128, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (128, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (128, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (128, 171); -- Cabezazo Zen

-- 129. Magikarp
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (129, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (129, 13);  -- Pistola Agua

-- 130. Gyarados
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (130, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (130, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (130, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (130, 151); -- Danza Espada

-- 131. Lapras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (131, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (131, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (131, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (131, 168); -- Psíquico

-- 132. Ditto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (132, 179); -- Teletransporte

-- 133. Eevee
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (133, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (133, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (133, 202); -- Golpe Bajo

-- 134. Vaporeon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (134, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (134, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (134, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (134, 118); -- Rayo Burbuja

-- 135. Jolteon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (135, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (135, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (135, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (135, 68);  -- Bola Sombra

-- 136. Flareon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (136, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (136, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (136, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (136, 134); -- Corpulencia

-- 137. Porygon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (137, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (137, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (137, 54);  -- Rayo

-- 138. Omanyte
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (138, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (138, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (138, 186); -- Lanzarocas

-- 139. Omastar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (139, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (139, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (139, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (139, 212); -- Terremoto

-- 140. Kabuto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (140, 20);  -- Acua Cola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (140, 186); -- Lanzarocas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (140, 147); -- Cuchillada

-- 141. Kabutops
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (141, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (141, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (141, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (141, 151); -- Danza Espada

-- 142. Aerodactyl
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (142, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (142, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (142, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (142, 198); -- Triturar

-- 143. Snorlax
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (143, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (143, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (143, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (143, 114); -- Puño Hielo

-- 144. Articuno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (144, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (144, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (144, 241); -- Vuelo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (144, 243); -- Agilidad

-- 145. Zapdos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (145, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (145, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (145, 245); -- Pico Taladro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (145, 244); -- Respiro

-- 146. Moltres
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (146, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (146, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (146, 241); -- Vuelo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (146, 243); -- Agilidad

-- 147. Dratini
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (147, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (147, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (147, 110); -- Rayo Hielo

-- 148. Dragonair
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (148, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (148, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (148, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (148, 243); -- Agilidad

-- 149. Dragonite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (149, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (149, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (149, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (149, 114); -- Puño Hielo

-- 150. Mewtwo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (150, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (150, 169); -- Psicocarga
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (150, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (150, 126); -- Onda Certera

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (151 - 200) CON COMENTARIOS
-- ========================================================

-- 151. Mew
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (151, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (151, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (151, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (151, 212); -- Terremoto

-- 152. Chikorita
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (152, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (152, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (152, 162); -- Drenadoras

-- 153. Bayleef
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (153, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (153, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (153, 162); -- Drenadoras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (153, 164); -- Síntesis

-- 154. Meganium
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (154, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (154, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (154, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (154, 164); -- Síntesis

-- 155. Cyndaquil
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (155, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (155, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (155, 92);  -- Giro Fuego

-- 156. Quilava
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (156, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (156, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (156, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (156, 142); -- Doble Filo

-- 157. Typhlosion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (157, 86);  -- Sofoco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (157, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (157, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (157, 60);  -- Voltiocambio

-- 158. Totodile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (158, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (158, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (158, 147); -- Cuchillada

-- 159. Croconaw
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (159, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (159, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (159, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (159, 20);  -- Acua Cola

-- 160. Feraligatr
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (160, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (160, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (160, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (160, 151); -- Danza Espada

-- 161. Sentret
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (161, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (161, 199); -- Mordisco

-- 162. Furret
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (162, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (162, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (162, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (162, 30);  -- Ida y Vuelta

-- 163. Hoothoot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (163, 249); -- Tornado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (163, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (163, 176); -- Hipnosis

-- 164. Noctowl
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (164, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (164, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (164, 176); -- Hipnosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (164, 251); -- Respiro

-- 165. Ledyba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (165, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (165, 34);  -- Picadura

-- 166. Ledian
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (166, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (166, 58);  -- Puño Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (166, 114); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (166, 183); -- Avalancha

-- 167. Spinarak
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (167, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (167, 34);  -- Picadura

-- 168. Ariados
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (168, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (168, 227); -- Puya Nociva
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (168, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (168, 151); -- Danza Espada

-- 169. Crobat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (169, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (169, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (169, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (169, 251); -- Respiro

-- 170. Chinchou
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (170, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (170, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (170, 110); -- Rayo Hielo

-- 171. Lanturn
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (171, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (171, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (171, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (171, 60);  -- Voltiocambio

-- 172. Pichu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (172, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (172, 139); -- Ataque Rápido

-- 173. Cleffa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (173, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (173, 103); -- Beso Dulce

-- 174. Igglybuff
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (174, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (174, 100); -- Beso Drenaje

-- 175. Togepi
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (175, 103); -- Beso Dulce
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (175, 168); -- Psíquico

-- 176. Togetic
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (176, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (176, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (176, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (176, 251); -- Respiro

-- 177. Natu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (177, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (177, 249); -- Tornado

-- 178. Xatu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (178, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (178, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (178, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (178, 251); -- Respiro

-- 179. Mareep
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (179, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (179, 54);  -- Rayo

-- 180. Flaaffy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (180, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (180, 58);  -- Puño Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (180, 60);  -- Voltiocambio

-- 181. Ampharos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (181, 55);  -- Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (181, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (181, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (181, 45);  -- Enfado (vía Pulso Dragón)

-- 182. Bellossom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (182, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (182, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (182, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (182, 164); -- Síntesis

-- 183. Marill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (183, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (183, 139); -- Ataque Rápido

-- 184. Azumarill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (184, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (184, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (184, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (184, 202); -- Golpe Bajo

-- 185. Sudowoodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (185, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (185, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (185, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (185, 202); -- Golpe Bajo

-- 186. Politoed
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (186, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (186, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (186, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (186, 168); -- Psíquico

-- 187. Hoppip
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (187, 162); -- Drenadoras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (187, 163); -- Somnífero

-- 188. Skiploom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (188, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (188, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (188, 251); -- Respiro

-- 189. Jumpluff
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (189, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (189, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (189, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (189, 251); -- Respiro

-- 190. Aipom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (190, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (190, 199); -- Mordisco

-- 191. Sunkern
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (191, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (191, 153); -- Rayo Solar

-- 192. Sunflora
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (192, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (192, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (192, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (192, 164); -- Síntesis

-- 193. Yanma
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (193, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (193, 243); -- Tajo Aéreo

-- 194. Wooper
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (194, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (194, 212); -- Terremoto

-- 195. Quagsire
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (195, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (195, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (195, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (195, 27);  -- Escaldar

-- 196. Espeon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (196, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (196, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (196, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (196, 175); -- Paz Mental

-- 197. Umbreon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (197, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (197, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (197, 100); -- Beso Drenaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (197, 203); -- Mofa

-- 198. Murkrow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (198, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (198, 202); -- Golpe Bajo

-- 199. Slowking
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (199, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (199, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (199, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (199, 175); -- Paz Mental

-- 200. Misdreavus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (200, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (200, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (200, 209); -- Maquinación

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (201 - 250)
-- ========================================================

-- 201. Unown
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (201, 168); -- Psíquico (Sustituto de Poder Oculto)

-- 202. Wobbuffet
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (202, 168); -- Psíquico (Sustituto de Manto Espejo/Contador)

-- 203. Girafarig
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (203, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (203, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (203, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (203, 175); -- Paz Mental

-- 204. Pineco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (204, 34);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (204, 212); -- Terremoto

-- 205. Forretress
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (205, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (205, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (205, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (205, 60);  -- Voltiocambio

-- 206. Dunsparce
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (206, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (206, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (206, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (206, 251); -- Respiro

-- 207. Gligar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (207, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (207, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (207, 251); -- Respiro

-- 208. Steelix
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (208, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (208, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (208, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (208, 198); -- Triturar

-- 209. Snubbull
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (209, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (209, 199); -- Mordisco

-- 210. Granbull
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (210, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (210, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (210, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (210, 128); -- Demolición

-- 211. Qwilfish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (211, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (211, 227); -- Puya Nociva
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (211, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (211, 202); -- Golpe Bajo

-- 212. Scizor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (212, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (212, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (212, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (212, 151); -- Danza Espada

-- 213. Shuckle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (213, 162); -- Drenadoras
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (213, 230); -- Picotazo Veneno

-- 214. Heracross
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (214, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (214, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (214, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (214, 212); -- Terremoto

-- 215. Sneasel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (215, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (215, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (215, 202); -- Golpe Bajo

-- 216. Teddiursa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (216, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (216, 199); -- Mordisco

-- 217. Ursaring
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (217, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (217, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (217, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (217, 128); -- Demolición

-- 218. Slugma
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (218, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (218, 183); -- Avalancha

-- 219. Magcargo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (219, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (219, 180); -- Joya de Luz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (219, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (219, 250); -- Recuperación

-- 220. Swinub
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (220, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (220, 212); -- Terremoto

-- 221. Piloswine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (221, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (221, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (221, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (221, 140); -- Golpe Cuerpo

-- 222. Corsola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (222, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (222, 180); -- Joya de Luz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (222, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (222, 250); -- Recuperación

-- 223. Remoraid
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (223, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (223, 56);  -- Impactrueno

-- 224. Octillery
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (224, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (224, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (224, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (224, 54);  -- Rayo

-- 225. Delibird
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (225, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (225, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (225, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (225, 251); -- Respiro

-- 226. Mantine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (226, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (226, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (226, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (226, 251); -- Respiro

-- 227. Skarmory
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (227, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (227, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (227, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (227, 251); -- Respiro

-- 228. Houndour
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (228, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (228, 201); -- Pulso Umbrío

-- 229. Houndoom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (229, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (229, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (229, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (229, 209); -- Maquinación

-- 230. Kingdra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (230, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (230, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (230, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (230, 140); -- Golpe Cuerpo

-- 231. Phanpy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (231, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (231, 183); -- Avalancha

-- 232. Donphan
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (232, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (232, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (232, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (232, 128); -- Demolición

-- 233. Porygon2
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (233, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (233, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (233, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (233, 250); -- Recuperación

-- 234. Stantler
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (234, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (234, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (234, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (234, 176); -- Hipnosis

-- 235. Smeargle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (235, 148); -- Vozarrón

-- 236. Tyrogue
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (236, 128); -- Demolición

-- 237. Hitmontop
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (237, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (237, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (237, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (237, 202); -- Golpe Bajo

-- 238. Smoochum
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (238, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (238, 168); -- Psíquico

-- 239. Elekid
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (239, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (239, 139); -- Ataque Rápido

-- 240. Magby
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (240, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (240, 201); -- Pulso Umbrío

-- 241. Miltank
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (241, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (241, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (241, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (241, 250); -- Recuperación (Leche Mu-mu)

-- 242. Blissey
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (242, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (242, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (242, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (242, 164); -- Síntesis (Sustituto Amortiguador)

-- 243. Raikou
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (243, 55);  -- Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (243, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (243, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (243, 60);  -- Voltiocambio

-- 244. Entei
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (244, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (244, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (244, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (244, 128); -- Demolición

-- 245. Suicune
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (245, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (245, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (245, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (245, 27);  -- Escaldar

-- 246. Larvitar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (246, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (246, 212); -- Terremoto

-- 247. Pupitar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (247, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (247, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (247, 198); -- Triturar

-- 248. Tyranitar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (248, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (248, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (248, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (248, 112); -- Puño Hielo

-- 249. Lugia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (249, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (249, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (249, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (249, 250); -- Recuperación

-- 250. Ho-Oh
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (250, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (250, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (250, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (250, 250); -- Recuperación

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (251 - 300) CON COMENTARIOS
-- ========================================================

-- 251. Celebi
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (251, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (251, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (251, 250); -- Recuperación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (251, 30);  -- Ida y Vuelta

-- 252. Treecko
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (252, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (252, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (252, 155); -- Gigadrenado

-- 253. Grovyle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (253, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (253, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (253, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (253, 151); -- Danza Espada

-- 254. Sceptile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (254, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (254, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (254, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (254, 126); -- Onda Certera

-- 255. Torchic
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (255, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (255, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (255, 199); -- Mordisco

-- 256. Combusken
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (256, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (256, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (256, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (256, 151); -- Danza Espada

-- 257. Blaziken
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (257, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (257, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (257, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (257, 151); -- Danza Espada

-- 258. Mudkip
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (258, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (258, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (258, 212); -- Terremoto

-- 259. Marshtomp
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (259, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (259, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (259, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (259, 183); -- Avalancha

-- 260. Swampert
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (260, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (260, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (260, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (260, 184); -- Roca Afilada

-- 261. Poochyena
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (261, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (261, 138); -- Placaje

-- 262. Mightyena
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (262, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (262, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (262, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (262, 140); -- Golpe Cuerpo

-- 263. Zigzagoon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (263, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (263, 15);  -- Surf

-- 264. Linoone
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (264, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (264, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (264, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (264, 15);  -- Surf

-- 265. Wurmple
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (265, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (265, 138); -- Placaje

-- 266. Silcoon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (266, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (266, 24);  -- Fortaleza

-- 267. Beautifly
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (267, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (267, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (267, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (267, 209); -- Maquinación

-- 268. Cascoon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (268, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (268, 24);  -- Fortaleza

-- 269. Dustox
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (269, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (269, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (269, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (269, 203); -- Mofa

-- 270. Lotad
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (270, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (270, 155); -- Gigadrenado

-- 271. Lombre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (271, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (271, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (271, 110); -- Rayo Hielo

-- 272. Ludicolo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (272, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (272, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (272, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (272, 168); -- Psíquico

-- 273. Seedot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (273, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (273, 145); -- Explosión

-- 274. Nuzleaf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (274, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (274, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (274, 202); -- Golpe Bajo

-- 275. Shiftry
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (275, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (275, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (275, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (275, 212); -- Terremoto

-- 276. Taillow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (276, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (276, 243); -- Tajo Aéreo

-- 277. Swellow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (277, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (277, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (277, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (277, 251); -- Respiro

-- 278. Wingull
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (278, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (278, 249); -- Tornado

-- 279. Pelipper
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (279, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (279, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (279, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (279, 30);  -- Ida y Vuelta

-- 280. Ralts
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (280, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (280, 96);  -- Brillo Mágico

-- 281. Kirlia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (281, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (281, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (281, 175); -- Paz Mental

-- 282. Gardevoir
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (282, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (282, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (282, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (282, 126); -- Onda Certera

-- 283. Surskit
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (283, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (283, 139); -- Ataque Rápido

-- 284. Masquerain
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (284, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (284, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (284, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (284, 110); -- Rayo Hielo

-- 285. Shroomish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (285, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (285, 163); -- Somnífero

-- 286. Breloom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (286, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (286, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (286, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (286, 163); -- Somnífero

-- 287. Slakoth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (287, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (287, 147); -- Cuchillada

-- 288. Vigoroth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (288, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (288, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (288, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (288, 134); -- Corpulencia

-- 289. Slaking
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (289, 144); -- Gigaimpacto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (289, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (289, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (289, 184); -- Roca Afilada

-- 290. Nincada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (290, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (290, 212); -- Terremoto

-- 291. Ninjask
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (291, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (291, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (291, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (291, 30);  -- Ida y Vuelta

-- 292. Shedinja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (292, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (292, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (292, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (292, 163); -- Somnífero

-- 293. Whismur
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (293, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (293, 138); -- Placaje

-- 294. Loudred
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (294, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (294, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (294, 112); -- Puño Hielo

-- 295. Exploud
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (295, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (295, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (295, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (295, 126); -- Onda Certera

-- 296. Makuhita
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (296, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (296, 138); -- Placaje

-- 297. Hariyama
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (297, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (297, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (297, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (297, 134); -- Corpulencia

-- 298. Azurill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (298, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (298, 96);  -- Brillo Mágico

-- 299. Nosepass
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (299, 180); -- Joya de Luz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (299, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (299, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (299, 222); -- Trampa Rocas

-- 300. Skitty
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (300, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (300, 139); -- Ataque Rápido

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (301 - 350) CON COMENTARIOS
-- ========================================================

-- 301. Delcatty
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (301, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (301, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (301, 171); -- Cabezazo Zen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (301, 15);  -- Surf

-- 302. Sableye
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (302, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (302, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (302, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (302, 250); -- Recuperación

-- 303. Mawile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (303, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (303, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (303, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (303, 151); -- Danza Espada

-- 304. Aron
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (304, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (304, 186); -- Lanzarocas

-- 305. Lairon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (305, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (305, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (305, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (305, 5);   -- Defensa Férrea

-- 306. Aggron
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (306, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (306, 185); -- Testarazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (306, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (306, 142); -- Doble Filo

-- 307. Meditite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (307, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (307, 170); -- Confusión

-- 308. Medicham
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (308, 132); -- Patada Salto Alta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (308, 171); -- Cabezazo Zen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (308, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (308, 114); -- Puño Trueno (Uso ID alternativo eléctrico)

-- 309. Electrike
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (309, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (309, 139); -- Ataque Rápido

-- 310. Manectric
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (310, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (310, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (310, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (310, 201); -- Pulso Umbrío

-- 311. Plusle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (311, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (311, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (311, 148); -- Vozarrón

-- 312. Minun
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (312, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (312, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (312, 110); -- Rayo Hielo

-- 313. Volbeat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (313, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (313, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (313, 30);  -- Ida y Vuelta

-- 314. Illumise
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (314, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (314, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (314, 30);  -- Ida y Vuelta

-- 315. Roselia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (315, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (315, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (315, 163); -- Somnífero

-- 316. Gulpin
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (316, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (316, 155); -- Gigadrenado

-- 317. Swalot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (317, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (317, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (317, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (317, 198); -- Triturar

-- 318. Carvanha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (318, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (318, 199); -- Mordisco

-- 319. Sharpedo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (319, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (319, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (319, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (319, 212); -- Terremoto

-- 320. Wailmer
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (320, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (320, 140); -- Golpe Cuerpo

-- 321. Wailord
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (321, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (321, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (321, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (321, 142); -- Doble Filo

-- 322. Numel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (322, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (322, 212); -- Terremoto

-- 323. Camerupt
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (323, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (323, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (323, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (323, 222); -- Trampa Rocas

-- 324. Torkoal
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (324, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (324, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (324, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (324, 5);   -- Defensa Férrea

-- 325. Spoink
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (325, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (325, 175); -- Paz Mental

-- 326. Grumpig
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (326, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (326, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (326, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (326, 175); -- Paz Mental

-- 327. Spinda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (327, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (327, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (327, 198); -- Triturar

-- 328. Trapinch
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (328, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (328, 198); -- Triturar

-- 329. Vibrava
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (329, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (329, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (329, 30);  -- Ida y Vuelta

-- 330. Flygon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (330, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (330, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (330, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (330, 30);  -- Ida y Vuelta

-- 331. Cacnea
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (331, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (331, 201); -- Pulso Umbrío

-- 332. Cacturne
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (332, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (332, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (332, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (332, 203); -- Mofa

-- 333. Swablu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (333, 249); -- Tornado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (333, 103); -- Beso Dulce

-- 334. Altaria
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (334, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (334, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (334, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (334, 251); -- Respiro

-- 335. Zangoose
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (335, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (335, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (335, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (335, 151); -- Danza Espada

-- 336. Seviper
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (336, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (336, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (336, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (336, 155); -- Gigadrenado

-- 337. Lunatone
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (337, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (337, 180); -- Joya de Luz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (337, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (337, 212); -- Terremoto

-- 338. Solrock
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (338, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (338, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (338, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (338, 212); -- Terremoto

-- 339. Barboach
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (339, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (339, 212); -- Terremoto

-- 340. Whiscash
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (340, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (340, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (340, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (340, 183); -- Avalancha

-- 341. Corphish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (341, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (341, 199); -- Mordisco

-- 342. Crawdaunt
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (342, 18);  -- Martillazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (342, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (342, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (342, 151); -- Danza Espada

-- 343. Baltoy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (343, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (343, 212); -- Terremoto

-- 344. Claydol
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (344, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (344, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (344, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (344, 68);  -- Bola Sombra

-- 345. Lileep
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (345, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (345, 186); -- Lanzarocas

-- 346. Cradily
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (346, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (346, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (346, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (346, 250); -- Recuperación

-- 347. Anorith
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (347, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (347, 186); -- Lanzarocas

-- 348. Armaldo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (348, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (348, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (348, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (348, 151); -- Danza Espada

-- 349. Feebas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (349, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (349, 13);  -- Pistola Agua

-- 350. Milotic
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (350, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (350, 27);  -- Escaldar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (350, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (350, 250); -- Recuperación

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (351 - 400) CON COMENTARIOS
-- ========================================================

-- 351. Castform
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (351, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (351, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (351, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (351, 148); -- Vozarrón

-- 352. Kecleon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (352, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (352, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (352, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (352, 250); -- Recuperación

-- 353. Shuppet
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (353, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (353, 203); -- Mofa

-- 354. Banette
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (354, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (354, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (354, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (354, 201); -- Pulso Umbrío

-- 355. Duskull
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (355, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (355, 110); -- Rayo Hielo

-- 356. Dusclops
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (356, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (356, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (356, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (356, 175); -- Paz Mental

-- 357. Tropius
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (357, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (357, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (357, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (357, 164); -- Síntesis

-- 358. Chimecho
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (358, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (358, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (358, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (358, 250); -- Recuperación

-- 359. Absol
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (359, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (359, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (359, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (359, 151); -- Danza Espada

-- 360. Wynaut
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (360, 168); -- Psíquico

-- 361. Snorunt
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (361, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (361, 199); -- Mordisco

-- 362. Glalie
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (362, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (362, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (362, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (362, 145); -- Explosión

-- 363. Spheal
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (363, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (363, 13);  -- Pistola Agua

-- 364. Sealeo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (364, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (364, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (364, 140); -- Golpe Cuerpo

-- 365. Walrein
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (365, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (365, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (365, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (365, 198); -- Triturar

-- 366. Clamperl
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (366, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (366, 110); -- Rayo Hielo

-- 367. Huntail
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (367, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (367, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (367, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (367, 202); -- Golpe Bajo

-- 368. Gorbyss
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (368, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (368, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (368, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (368, 209); -- Maquinación

-- 369. Relicanth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (369, 185); -- Testarazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (369, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (369, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (369, 171); -- Cabezazo Zen

-- 370. Luvdisc
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (370, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (370, 110); -- Rayo Hielo

-- 371. Bagon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (371, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (371, 199); -- Mordisco

-- 372. Shelgon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (372, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (372, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (372, 128); -- Demolición

-- 373. Salamence
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (373, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (373, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (373, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (373, 81);  -- Lanzallamas

-- 374. Beldum
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (374, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (374, 10);  -- Cabeza de Hierro

-- 375. Metang
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (375, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (375, 171); -- Cabezazo Zen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (375, 183); -- Avalancha

-- 376. Metagross
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (376, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (376, 171); -- Cabezazo Zen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (376, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (376, 184); -- Roca Afilada

-- 377. Regirock
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (377, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (377, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (377, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (377, 222); -- Trampa Rocas

-- 378. Regice
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (378, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (378, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (378, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (378, 175); -- Paz Mental

-- 379. Registeel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (379, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (379, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (379, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (379, 5);   -- Defensa Férrea

-- 380. Latias
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (380, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (380, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (380, 250); -- Recuperación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (380, 175); -- Paz Mental

-- 381. Latios
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (381, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (381, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (381, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (381, 250); -- Recuperación

-- 382. Kyogre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (382, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (382, 55);  -- Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (382, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (382, 175); -- Paz Mental

-- 383. Groudon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (383, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (383, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (383, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (383, 151); -- Danza Espada

-- 384. Rayquaza
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (384, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (384, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (384, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (384, 82);  -- Llamarada

-- 385. Jirachi
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (385, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (385, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (385, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (385, 30);  -- Ida y Vuelta

-- 386. Deoxys
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (386, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (386, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (386, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (386, 202); -- Golpe Bajo

-- 387. Turtwig
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (387, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (387, 212); -- Terremoto

-- 388. Grotle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (388, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (388, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (388, 162); -- Drenadoras

-- 389. Torterra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (389, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (389, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (389, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (389, 164); -- Síntesis

-- 390. Chimchar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (390, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (390, 139); -- Ataque Rápido

-- 391. Monferno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (391, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (391, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (391, 202); -- Golpe Bajo

-- 392. Infernape
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (392, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (392, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (392, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (392, 203); -- Mofa

-- 393. Piplup
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (393, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (393, 250); -- Picotazo

-- 394. Prinplup
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (394, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (394, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (394, 245); -- Pico Taladro

-- 395. Empoleon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (395, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (395, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (395, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (395, 222); -- Trampa Rocas

-- 396. Starly
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (396, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (396, 249); -- Tornado

-- 397. Staravia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (397, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (397, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (397, 30);  -- Ida y Vuelta

-- 398. Staraptor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (398, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (398, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (398, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (398, 30);  -- Ida y Vuelta

-- 399. Bidoof
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (399, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (399, 199); -- Mordisco

-- 400. Bibarel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (400, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (400, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (400, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (400, 198); -- Triturar

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (401 - 450) CON COMENTARIOS
-- ========================================================

-- 401. Kricketot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (401, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (401, 139); -- Ataque Rápido

-- 402. Kricketune
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (402, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (402, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (402, 147); -- Cuchillada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (402, 151); -- Danza Espada

-- 403. Shinx
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (403, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (403, 199); -- Mordisco

-- 404. Luxio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (404, 58);  -- Puño Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (404, 199); -- Mordisco
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (404, 139); -- Ataque Rápido

-- 405. Luxray
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (405, 54);  -- Rayo (Voltio Cruel si tuvieras el ID)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (405, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (405, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (405, 60);  -- Voltiocambio

-- 406. Budew
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (406, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (406, 230); -- Picotazo Veneno

-- 407. Roserade
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (407, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (407, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (407, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (407, 163); -- Somnífero

-- 408. Cranidos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (408, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (408, 171); -- Cabezazo Zen

-- 409. Rampardos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (409, 185); -- Testarazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (409, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (409, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (409, 198); -- Triturar

-- 410. Shieldon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (410, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (410, 24);  -- Fortaleza

-- 411. Bastiodon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (411, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (411, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (411, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (411, 5);   -- Defensa Férrea

-- 412. Burmy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (412, 34);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (412, 138); -- Placaje

-- 413. Wormadam
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (413, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (413, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (413, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (413, 163); -- Somnífero

-- 414. Mothim
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (414, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (414, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (414, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (414, 30);  -- Ida y Vuelta

-- 415. Combee
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (415, 249); -- Tornado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (415, 34);  -- Picadura

-- 416. Vespiquen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (416, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (416, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (416, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (416, 201); -- Pulso Umbrío

-- 417. Pachirisu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (417, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (417, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (417, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (417, 203); -- Mofa

-- 418. Buizel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (418, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (418, 139); -- Ataque Rápido

-- 419. Floatzel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (419, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (419, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (419, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (419, 20);  -- Acua Cola

-- 420. Cherubi
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (420, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (420, 103); -- Beso Dulce

-- 421. Cherrim
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (421, 153); -- Rayo Solar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (421, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (421, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (421, 164); -- Síntesis

-- 422. Shellos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (422, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (422, 212); -- Terremoto

-- 423. Gastrodon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (423, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (423, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (423, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (423, 250); -- Recuperación

-- 424. Ambipom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (424, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (424, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (424, 134); -- Corpulencia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (424, 30);  -- Ida y Vuelta

-- 425. Drifloon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (425, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (425, 249); -- Tornado

-- 426. Drifblim
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (426, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (426, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (426, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (426, 145); -- Explosión

-- 427. Buneary
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (427, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (427, 128); -- Demolición

-- 428. Lopunny
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (428, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (428, 132); -- Patada Salto Alta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (428, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (428, 250); -- Recuperación

-- 429. Mismagius
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (429, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (429, 96);  -- Brillo Mágico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (429, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (429, 209); -- Maquinación

-- 430. Honchkrow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (430, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (430, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (430, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (430, 111); -- Ventisca (Sustituto de Onda Ígnea/Canícula)

-- 431. Glameow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (431, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (431, 199); -- Mordisco

-- 432. Purugly
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (432, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (432, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (432, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (432, 176); -- Hipnosis

-- 433. Chingling
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (433, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (433, 168); -- Psíquico

-- 434. Stunky
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (434, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (434, 201); -- Pulso Umbrío

-- 435. Skuntank
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (435, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (435, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (435, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (435, 202); -- Golpe Bajo

-- 436. Bronzor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (436, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (436, 10);  -- Cabeza de Hierro

-- 437. Bronzong
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (437, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (437, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (437, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (437, 175); -- Paz Mental

-- 438. Bonsly
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (438, 186); -- Lanzarocas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (438, 138); -- Placaje

-- 439. Mime Jr.
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (439, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (439, 96);  -- Brillo Mágico

-- 440. Happiny
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (440, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (440, 103); -- Beso Dulce

-- 441. Chatot
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (441, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (441, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (441, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (441, 30);  -- Ida y Vuelta

-- 442. Spiritomb
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (442, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (442, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (442, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (442, 175); -- Paz Mental

-- 443. Gible
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (443, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (443, 42);  -- Pulso Dragón

-- 444. Gabite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (444, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (444, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (444, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (444, 151); -- Danza Espada

-- 445. Garchomp
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (445, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (445, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (445, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (445, 151); -- Danza Espada

-- 446. Munchlax
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (446, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (446, 212); -- Terremoto

-- 447. Riolu
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (447, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (447, 139); -- Ataque Rápido

-- 448. Lucario
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (448, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (448, 10);  -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (448, 146); -- Velocidad Extrema
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (448, 126); -- Onda Certera

-- 449. Hippopotas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (449, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (449, 199); -- Mordisco

-- 450. Hippowdon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (450, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (450, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (450, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (450, 250); -- Recuperación (Sustituto de Relajo)

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (451 - 500) - INCLUYE DARKRAI
-- ========================================================

-- 451. Skorupi
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (451, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (451, 34);  -- Picadura

-- 452. Drapion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (452, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (452, 227); -- Puya Nociva
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (452, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (452, 183); -- Avalancha

-- 453. Croagunk
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (453, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (453, 128); -- Demolición

-- 454. Toxicroak
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (454, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (454, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (454, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (454, 202); -- Golpe Bajo

-- 455. Carnivine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (455, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (455, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (455, 163); -- Somnífero

-- 456. Finneon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (456, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (456, 249); -- Tornado

-- 457. Lumineon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (457, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (457, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (457, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (457, 30);  -- Ida y Vuelta

-- 458. Mantyke
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (458, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (458, 249); -- Tornado

-- 459. Snover
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (459, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (459, 110); -- Rayo Hielo

-- 460. Abomasnow
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (460, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (460, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (460, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (460, 184); -- Roca Afilada

-- 461. Weavile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (461, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (461, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (461, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (461, 151); -- Danza Espada

-- 462. Magnezone
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (462, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (462, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (462, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (462, 5);   -- Defensa Férrea

-- 463. Lickilicky
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (463, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (463, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (463, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (463, 145); -- Explosión

-- 464. Rhyperior
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (464, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (464, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (464, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (464, 198); -- Triturar

-- 465. Tangrowth
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (465, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (465, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (465, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (465, 163); -- Somnífero

-- 466. Electivire
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (466, 54);  -- Rayo (Puño Trueno si prefieres físico)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (466, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (466, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (466, 128); -- Demolición

-- 467. Magmortar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (467, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (467, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (467, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (467, 168); -- Psíquico

-- 468. Togekiss
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (468, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (468, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (468, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (468, 209); -- Maquinación

-- 469. Yanmega
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (469, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (469, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (469, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (469, 30);  -- Ida y Vuelta

-- 470. Leafeon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (470, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (470, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (470, 31);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (470, 151); -- Danza Espada

-- 471. Glaceon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (471, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (471, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (471, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (471, 110); -- Rayo Hielo

-- 472. Gliscor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (472, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (472, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (472, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (472, 251); -- Respiro

-- 473. Mamoswine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (473, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (473, 112); -- Puño Hielo (Chuzos)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (473, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (473, 140); -- Golpe Cuerpo

-- 474. Porygon-Z
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (474, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (474, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (474, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (474, 209); -- Maquinación

-- 475. Gallade
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (475, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (475, 171); -- Cabezazo Zen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (475, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (475, 151); -- Danza Espada

-- 476. Probopass
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (476, 180); -- Joya de Luz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (476, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (476, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (476, 60);  -- Voltiocambio

-- 477. Dusknoir
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (477, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (477, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (477, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (477, 202); -- Golpe Bajo

-- 478. Froslass
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (478, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (478, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (478, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (478, 202); -- Golpe Bajo

-- 479. Rotom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (479, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (479, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (479, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (479, 203); -- Mofa

-- 480. Uxie
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (480, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (480, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (480, 176); -- Hipnosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (480, 222); -- Trampa Rocas

-- 481. Mesprit
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (481, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (481, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (481, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (481, 30);  -- Ida y Vuelta

-- 482. Azelf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (482, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (482, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (482, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (482, 145); -- Explosión

-- 483. Dialga
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (483, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (483, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (483, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (483, 55);  -- Trueno

-- 484. Palkia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (484, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (484, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (484, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (484, 54);  -- Rayo

-- 485. Heatran
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (485, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (485, 11);  -- Foco Resplandor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (485, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (485, 184); -- Roca Afilada

-- 486. Regigigas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (486, 144); -- Gigaimpacto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (486, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (486, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (486, 171); -- Cabezazo Zen

-- 487. Giratina
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (487, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (487, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (487, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (487, 175); -- Paz Mental

-- 488. Cresselia
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (488, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (488, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (488, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (488, 97);  -- Fuerza Lunar

-- 489. Phione
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (489, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (489, 110); -- Rayo Hielo

-- 490. Manaphy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (490, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (490, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (490, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (490, 54);  -- Rayo

-- 491. DARKRAI (TU FAVORITO)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (491, 255); -- Brecha Negra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (491, 174); -- Comesueños
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (491, 200); -- Pulso umbrio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (491, 208); -- Maquinación

-- 492. Shaymin
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (492, 154); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (492, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (492, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (492, 164); -- Síntesis

-- 493. Arceus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (493, 148); -- Vozarrón (Sustituto de Sentencia)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (493, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (493, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (493, 250); -- Recuperación

-- 494. Victini
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (494, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (494, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (494, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (494, 30);  -- Ida y Vuelta

-- 495. Snivy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (495, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (495, 139); -- Ataque Rápido

-- 496. Servine
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (496, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (496, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (496, 151); -- Danza Espada

-- 497. Serperior
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (497, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (497, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (497, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (497, 164); -- Síntesis

-- 498. Tepig
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (498, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (498, 138); -- Placaje

-- 499. Pignite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (499, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (499, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (499, 140); -- Golpe Cuerpo

-- 500. Emboar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (500, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (500, 131); -- Fuerza Bruta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (500, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (500, 184); -- Roca Afilada

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (501 - 550) - DATOS COTEJADOS
-- ========================================================

-- 501. Oshawott
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (501, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (501, 138); -- Placaje

-- 502. Dewott
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (502, 20);  -- Hidropulso
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (502, 140); -- Corte

-- 503. Samurott
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (503, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (503, 203); -- Desarme
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (503, 17);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (503, 241); -- Vuelo (Sustituto de Tajo Umbrío)

-- 504. Patrat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (504, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (504, 199); -- Mordisco

-- 505. Watchog
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (505, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (505, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (505, 176); -- Hipnosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (505, 128); -- Demolición

-- 506. Lillipup
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (506, 138); -- Placaje
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (506, 199); -- Mordisco

-- 507. Herdier
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (507, 140); -- Corte
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (507, 199); -- Mordisco

-- 508. Stoutland
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (508, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (508, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (508, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (508, 112); -- Puño Hielo

-- 509. Purrloin
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (509, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (509, 139); -- Ataque Rápido

-- 510. Liepard
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (510, 201); -- Tajo Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (510, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (510, 209); -- Mofa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (510, 30);  -- Ida y Vuelta

-- 511. Pansage
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (511, 161); -- Látigo Cepa
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (511, 199); -- Mordisco

-- 512. Simisage
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (512, 154); -- Latigazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (512, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (512, 131); -- Puño Dinámico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (512, 163); -- Somnífero

-- 513. Pansear
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (513, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (513, 199); -- Mordisco

-- 514. Simisear
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (514, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (514, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (514, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (514, 134); -- Corpulencia

-- 515. Panpour
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (515, 13);  -- Pistola Agua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (515, 199); -- Mordisco

-- 516. Simipour
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (516, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (516, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (516, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (516, 208); -- Maquinación

-- 517. Munna
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (517, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (517, 176); -- Hipnosis

-- 518. Musharna
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (518, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (518, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (518, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (518, 97);  -- Fuerza Lunar

-- 519. Pidove
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (519, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (519, 249); -- Tornado

-- 520. Tranquill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (520, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (520, 139); -- Ataque Rápido

-- 521. Unfezant
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (521, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (521, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (521, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (521, 30);  -- Ida y Vuelta

-- 522. Blitzle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (522, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (522, 139); -- Ataque Rápido

-- 523. Zebstrika
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (523, 59);  -- Voltio Cruel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (523, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (523, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (523, 60);  -- Voltiocambio

-- 524. Roggenrola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (524, 186); -- Lanzarocas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (524, 138); -- Placaje

-- 525. Boldore
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (525, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (525, 138); -- Placaje

-- 526. Gigalith
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (526, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (526, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (526, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (526, 145); -- Explosión (Sustituto de Cuerpo Pesado)

-- 527. Woobat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (527, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (527, 249); -- Tornado

-- 528. Swoobat
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (528, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (528, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (528, 175); -- Paz Mental
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (528, 30);  -- Ida y Vuelta

-- 529. Drilbur
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (529, 214); -- Excavar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (529, 140); -- Corte

-- 530. Excadrill
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (530, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (530, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (530, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (530, 151); -- Danza Espada

-- 531. Audino
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (531, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (531, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (531, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (531, 150); -- Recuperación

-- 532. Timburr
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (532, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (532, 138); -- Placaje

-- 533. Gurdurr
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (533, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (533, 183); -- Avalancha

-- 534. Conkeldurr
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (534, 131); -- Puño Dinámico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (534, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (534, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (534, 134); -- Corpulencia

-- 535. Tympole
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (535, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (535, 215); -- Bofetón Lodo

-- 536. Palpitoad
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (536, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (536, 212); -- Terremoto

-- 537. Seismitoad
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (537, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (537, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (537, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (537, 112); -- Puño Hielo

-- 538. Throh
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (538, 131); -- Puño Dinámico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (538, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (538, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (538, 134); -- Corpulencia

-- 539. Sawk
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (539, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (539, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (539, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (539, 202); -- Golpe Bajo

-- 540. Sewaddle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (540, 31);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (540, 160); -- Hoja Afilada

-- 541. Swadloon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (541, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (541, 163); -- Somnífero

-- 542. Leavanny
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (542, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (542, 28);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (542, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (542, 163); -- Somnífero

-- 543. Venipede
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (543, 230); -- Picotazo Veneno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (543, 139); -- Ataque Rápido

-- 544. Whirlipede
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (544, 227); -- Puya Nociva
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (544, 31);  -- Picadura

-- 545. Scolipede
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (545, 32);  -- Megacuerno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (545, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (545, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (545, 151); -- Danza Espada

-- 546. Cottonee
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (546, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (546, 103); -- Beso Dulce

-- 547. Whimsicott
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (547, 97);  -- Fuerza Lunar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (547, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (547, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (547, 30);  -- Ida y Vuelta

-- 548. Petilil
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (548, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (548, 163); -- Somnífero

-- 549. Lilligant
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (549, 159); -- Lluevehojas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (549, 39);  -- Danza Aleteo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (549, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (549, 163); -- Somnífero

-- 550. Basculin
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (550, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (550, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (550, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (550, 131); -- Puño Dinámico

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (551 - 600) - DATOS COTEJADOS
-- ========================================================

-- 551. Sandile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (551, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (551, 199); -- Mordisco

-- 552. Krokorok
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (552, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (552, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (552, 183); -- Avalancha

-- 553. Krookodile
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (553, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (553, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (553, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (553, 202); -- Golpe Bajo

-- 554. Darumaka
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (554, 90);  -- Rueda Fuego
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (554, 140); -- Golpe Cuerpo

-- 555. Darmanitan
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (555, 85);  -- Envite Ígneo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (555, 131); -- Fuerza Bruta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (555, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (555, 30);  -- Ida y Vuelta

-- 556. Maractus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (556, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (556, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (556, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (556, 222); -- Trampa Rocas

-- 557. Dwebble
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (557, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (557, 31);  -- Picadura

-- 558. Crustle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (558, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (558, 32);  -- Megacuerno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (558, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (558, 11);  -- Rompecoraza (Sustituto: Foco Resplandor o similar si no hay id)

-- 559. Scraggy
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (559, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (559, 199); -- Mordisco

-- 560. Scrafty
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (560, 132); -- Patada Salto Alta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (560, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (560, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (560, 112); -- Puño Hielo

-- 561. Sigilyph
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (561, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (561, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (561, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (561, 175); -- Paz Mental

-- 562. Yamask
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (562, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (562, 201); -- Pulso Umbrío

-- 563. Cofagrigus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (563, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (563, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (563, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (563, 209); -- Maquinación

-- 564. Tirtouga
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (564, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (564, 186); -- Lanzarocas

-- 565. Carracosta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (565, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (565, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (565, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (565, 110); -- Rayo Hielo

-- 566. Archen
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (566, 183); -- Avalancha
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (566, 249); -- Tornado

-- 567. Archeops
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (567, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (567, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (567, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (567, 30);  -- Ida y Vuelta

-- 568. Trubbish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (568, 235); -- Residuos
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (568, 138); -- Placaje

-- 569. Garbodor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (569, 234); -- Lanza Mugre
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (569, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (569, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (569, 145); -- Explosión

-- 570. Zorua
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (570, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (570, 139); -- Ataque Rápido

-- 571. Zoroark
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (571, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (571, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (571, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (571, 209); -- Maquinación

-- 572. Minccino
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (572, 139); -- Ataque Rápido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (572, 103); -- Beso Dulce

-- 573. Cinccino
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (573, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (573, 245); -- Pico Taladro (Sustituto de Plumerazo)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (573, 30);  -- Ida y Vuelta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (573, 110); -- Rayo Hielo

-- 574. Gothita
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (574, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (574, 103); -- Beso Dulce

-- 575. Gothorita
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (575, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (575, 175); -- Paz Mental

-- 576. Gothitelle
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (576, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (576, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (576, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (576, 175); -- Paz Mental

-- 577. Solosis
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (577, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (577, 20);  -- Hidropulso

-- 578. Duosion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (578, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (578, 110); -- Rayo Hielo

-- 579. Reuniclus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (579, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (579, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (579, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (579, 150); -- Recuperación

-- 580. Ducklett
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (580, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (580, 249); -- Tornado

-- 581. Swanna
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (581, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (581, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (581, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (581, 251); -- Respiro

-- 582. Vanillite
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (582, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (582, 138); -- Placaje

-- 583. Vanillish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (583, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (583, 111); -- Ventisca

-- 584. Vanilluxe
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (584, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (584, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (584, 145); -- Explosión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (584, 126); -- Onda Certera

-- 585. Deerling
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (585, 160); -- Hoja Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (585, 139); -- Ataque Rápido

-- 586. Sawsbuck
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (586, 156); -- Hoja Aguda (Sustituto de Asta Drenaje)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (586, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (586, 32);  -- Megacuerno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (586, 30);  -- Ida y Vuelta

-- 587. Emolga
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (587, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (587, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (587, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (587, 251); -- Respiro

-- 588. Karrablast
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (588, 31);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (588, 140); -- Corte

-- 589. Escavalier
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (589, 32);  -- Megacuerno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (589, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (589, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (589, 128); -- Demolición

-- 590. Foongus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (590, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (590, 163); -- Somnífero

-- 591. Amoonguss
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (591, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (591, 226); -- Bomba Lodo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (591, 163); -- Somnífero
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (591, 212); -- Terremoto

-- 592. Frillish
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (592, 118); -- Rayo Burbuja
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (592, 68);  -- Bola Sombra

-- 593. Jellicent
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (593, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (593, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (593, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (593, 150); -- Recuperación

-- 594. Alomomola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (594, 16);  -- Cascada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (594, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (594, 140); -- Golpe Cuerpo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (594, 150); -- Recuperación

-- 595. Joltik
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (595, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (595, 31);  -- Picadura

-- 596. Galvantula
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (596, 55);  -- Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (596, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (596, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (596, 60);  -- Voltiocambio

-- 597. Ferroseed
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (597, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (597, 162); -- Drenadoras

-- 598. Ferrothorn
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (598, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (598, 154); -- Latigazo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (598, 222); -- Trampa Rocas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (598, 162); -- Drenadoras

-- 599. Klink
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (599, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (599, 1);   -- Cabeza de Hierro

-- 600. Klang
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (600, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (600, 54);  -- Rayo

-- ========================================================
-- ASIGNACIÓN DE MOVIMIENTOS (601 - 649) - FINAL QUINTA GEN
-- ========================================================

-- 601. Klinklang
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (601, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (601, 59);  -- Voltio Cruel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (601, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (601, 5);   -- Defensa Férrea

-- 602. Tynamo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (602, 56);  -- Impactrueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (602, 138); -- Placaje

-- 603. Eelektrik
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (603, 58);  -- Puño Trueno
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (603, 199); -- Mordisco

-- 604. Eelektross
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (604, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (604, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (604, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (604, 112); -- Puño Hielo

-- 605. Elgyem
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (605, 170); -- Confusión
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (605, 68);  -- Bola Sombra

-- 606. Beheeyem
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (606, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (606, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (606, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (606, 209); -- Maquinación

-- 607. Litwick
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (607, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (607, 68);  -- Bola Sombra

-- 608. Lampent
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (608, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (608, 68);  -- Bola Sombra

-- 609. Chandelure
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (609, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (609, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (609, 158); -- Energibola
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (609, 175); -- Paz Mental

-- 610. Axew
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (610, 41);  -- Furia Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (610, 199); -- Mordisco

-- 611. Fraxure
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (611, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (611, 151); -- Danza Espada

-- 612. Haxorus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (612, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (612, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (612, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (612, 151); -- Danza Espada

-- 613. Cubchoo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (613, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (613, 140); -- Corte

-- 614. Beartic
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (614, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (614, 131); -- Puño Dinámico (Sustituto de Fuerza Bruta)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (614, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (614, 184); -- Roca Afilada

-- 615. Cryogonal
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (615, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (615, 111); -- Ventisca
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (615, 250); -- Recuperación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (615, 145); -- Explosión

-- 616. Shelmet
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (616, 31);  -- Picadura
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (616, 155); -- Gigadrenado

-- 617. Accelgor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (617, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (617, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (617, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (617, 30);  -- Ida y Vuelta

-- 618. Stunfisk
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (618, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (618, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (618, 15);  -- Surf
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (618, 226); -- Bomba Lodo

-- 619. Mienfoo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (619, 128); -- Demolición
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (619, 139); -- Ataque Rápido

-- 620. Mienshao
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (620, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (620, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (620, 242); -- Pájaro Osado (Sustituto de Patada Salto Alta)
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (620, 30);  -- Ida y Vuelta

-- 621. Druddigon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (621, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (621, 198); -- Triturar
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (621, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (621, 202); -- Golpe Bajo

-- 622. Golett
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (622, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (622, 168); -- Psíquico

-- 623. Golurk
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (623, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (623, 68);  -- Bola Sombra
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (623, 112); -- Puño Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (623, 184); -- Roca Afilada

-- 624. Pawniard
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (624, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (624, 202); -- Golpe Bajo

-- 625. Bisharp
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (625, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (625, 201); -- Tajo Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (625, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (625, 151); -- Danza Espada

-- 626. Bouffalant
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (626, 142); -- Doble Filo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (626, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (626, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (626, 198); -- Triturar

-- 627. Rufflet
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (627, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (627, 139); -- Ataque Rápido

-- 628. Braviary
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (628, 242); -- Pájaro Osado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (628, 131); -- Fuerza Bruta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (628, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (628, 30);  -- Ida y Vuelta

-- 629. Vullaby
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (629, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (629, 201); -- Pulso Umbrío

-- 630. Mandibuzz
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (630, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (630, 251); -- Respiro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (630, 203); -- Desarme
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (630, 209); -- Mofa

-- 631. Heatmor
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (631, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (631, 155); -- Gigadrenado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (631, 202); -- Golpe Bajo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (631, 212); -- Terremoto

-- 632. Durant
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (632, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (632, 28);  -- Tijera X
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (632, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (632, 212); -- Terremoto

-- 633. Deino
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (633, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (633, 199); -- Mordisco

-- 634. Zweilous
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (634, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (634, 198); -- Triturar

-- 635. Hydreigon
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (635, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (635, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (635, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (635, 30);  -- Ida y Vuelta

-- 636. Larvesta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (636, 83);  -- Ascuas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (636, 31);  -- Picadura

-- 637. Volcarona
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (637, 39);  -- Danza Aleteo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (637, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (637, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (637, 158); -- Energibola

-- 638. Cobalion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (638, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (638, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (638, 60);  -- Voltiocambio
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (638, 184); -- Roca Afilada

-- 639. Terrakion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (639, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (639, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (639, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (639, 151); -- Danza Espada

-- 640. Virizion
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (640, 156); -- Hoja Aguda
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (640, 125); -- A Bocajarro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (640, 151); -- Danza Espada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (640, 171); -- Cabezazo Zen

-- 641. Tornadus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (641, 243); -- Tajo Aéreo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (641, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (641, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (641, 30);  -- Ida y Vuelta

-- 642. Thundurus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (642, 54);  -- Rayo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (642, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (642, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (642, 60);  -- Voltiocambio

-- 643. Reshiram
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (643, 82);  -- Llamarada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (643, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (643, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (643, 212); -- Terremoto

-- 644. Zekrom
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (644, 59);  -- Voltio Cruel
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (644, 45);  -- Enfado
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (644, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (644, 212); -- Terremoto

-- 645. Landorus
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (645, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (645, 184); -- Roca Afilada
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (645, 209); -- Maquinación
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (645, 30);  -- Ida y Vuelta

-- 646. Kyurem
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (646, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (646, 42);  -- Pulso Dragón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (646, 212); -- Terremoto
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (646, 171); -- Cabezazo Zen

-- 647. Keldeo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (647, 14);  -- Hidrobomba
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (647, 126); -- Onda Certera
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (647, 110); -- Rayo Hielo
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (647, 175); -- Paz Mental

-- 648. Meloetta
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (648, 168); -- Psíquico
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (648, 148); -- Vozarrón
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (648, 201); -- Pulso Umbrío
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (648, 30);  -- Ida y Vuelta

-- 649. Genesect
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (649, 1);   -- Cabeza de Hierro
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (649, 29);  -- Zumbido
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (649, 81);  -- Lanzallamas
INSERT INTO pokemon_movimientos (id_pokemon, id_movimiento) VALUES (649, 110); -- Rayo Hielo