DROP TABLE IF EXISTS Monster;

CREATE TABLE Monster(
 MonsterID INT PRIMARY KEY,
 Health INT,
 Attack INT,
 Defense INT,
 Name VARCHAR(25)
);

INSERT INTO Monster VALUES (1, 10, 3, 2, 'wolf');
INSERT INTO Monster VALUES (2, 12, 4, 3, 'feral wolf');
INSERT INTO Monster VALUES (3, 14, 5, 4, 'dire wolf');
INSERT INTO Monster VALUES (4, 16, 6, 5, 'rabid wolf');
INSERT INTO Monster VALUES (5, 18, 7, 6, 'timber wolf');
INSERT INTO Monster VALUES (6, 15, 5, 5, 'black bear');
INSERT INTO Monster VALUES (7, 18, 6, 6, 'brown bear');
INSERT INTO Monster VALUES (8, 21, 7, 7, 'grizzly bear');
INSERT INTO Monster VALUES (9, 24, 8, 8, 'polar bear');
INSERT INTO Monster VALUES (10, 7, 2, 1, 'wild cat');
INSERT INTO Monster VALUES (11, 8, 4, 2, 'bobcat');
INSERT INTO Monster VALUES (12, 9, 6, 3, 'cougar');
INSERT INTO Monster VALUES (13, 10, 8, 4, 'mountain lion');
INSERT INTO Monster VALUES (14, 20, 5, 7, 'spider beetle');
INSERT INTO Monster VALUES (15, 24, 6, 9, 'hive drone');
INSERT INTO Monster VALUES (16, 26, 7, 11, 'hive lord');
INSERT INTO Monster VALUES (17, 28, 8, 13, 'hive matriarch');
INSERT INTO Monster VALUES (18, 30, 9, 15, 'hive queen');
INSERT INTO Monster VALUES (19, 5, 6, 0, 'vagabond');
INSERT INTO Monster VALUES (20, 8, 7, 2, 'bandit');
INSERT INTO Monster VALUES (21, 11, 8, 4, 'highway man');
INSERT INTO Monster VALUES (22, 14, 9, 6, 'rebel');
INSERT INTO Monster VALUES (23, 17, 10, 8, 'bandit chief');
INSERT INTO Monster VALUES (24, 10, 3, 7, 'civilians');
INSERT INTO Monster VALUES (25, 12, 5, 9, 'town guard');
INSERT INTO Monster VALUES (26, 14, 7, 11, 'foot soldier');
INSERT INTO Monster VALUES (27, 16, 9, 13, 'elite soldier');
INSERT INTO Monster VALUES (28, 10, 1, 0, 'lesser water elemental');
INSERT INTO Monster VALUES (29, 25, 3, 0, 'water elemental');
INSERT INTO Monster VALUES (30, 100, 5, 0, 'greater water elemental');
INSERT INTO Monster VALUES (31, 15, 5, 0, 'lesser wind elemental');
INSERT INTO Monster VALUES (32, 20, 10, 0, 'wind elemental');
INSERT INTO Monster VALUES (33, 25, 15, 0, 'greater wind elemental');
INSERT INTO Monster VALUES (34, 100, 5, 5, 'lesser wood elemental');
INSERT INTO Monster VALUES (35, 250, 7, 7, 'wood elemental');
INSERT INTO Monster VALUES (36, 500, 9, 9, 'greater wood elemental');

DROP TABLE IF EXISTS Item;

CREATE TABLE Item(
 ItemID INT PRIMARY KEY,
 Name VARCHAR(25)
);

INSERT INTO Item VALUES (1, 'pelt');
INSERT INTO Item VALUES (2, 'leather scraps');
INSERT INTO Item VALUES (3, 'earth aspect');
INSERT INTO Item VALUES (4, 'wind aspect');
INSERT INTO Item VALUES (5, 'poison sac');
INSERT INTO Item VALUES (6, 'spider silk');
INSERT INTO Item VALUES (7, 'oak');
INSERT INTO Item VALUES (8, 'maple');
INSERT INTO Item VALUES (9, 'yew');
INSERT INTO Item VALUES (10, 'sandalwood');
INSERT INTO Item VALUES (11, 'rosewood');
INSERT INTO Item VALUES (12, 'ironwood');
INSERT INTO Item VALUES (13, 'aesirwood');
INSERT INTO Item VALUES (14, 'bronze');
INSERT INTO Item VALUES (15, 'iron');
INSERT INTO Item VALUES (16, 'steel');
INSERT INTO Item VALUES (17, 'titanium');
INSERT INTO Item VALUES (18, 'mythrium');
INSERT INTO Item VALUES (19, 'cobaltite');
INSERT INTO Item VALUES (20, 'infernite');
INSERT INTO Item VALUES (21, 'tin');
INSERT INTO Item VALUES (22, 'copper');
INSERT INTO Item VALUES (23, 'petrified wood');
INSERT INTO Item VALUES (24, 'silver');
INSERT INTO Item VALUES (25, 'gold');
INSERT INTO Item VALUES (26, 'platinum');
INSERT INTO Item VALUES (27, 'crystal');
INSERT INTO Item VALUES (28, 'armor fragment');
INSERT INTO Item VALUES (29, 'weapon fragment');
INSERT INTO Item VALUES (30, 'gp');
INSERT INTO Item VALUES (31, 'water aspect');
INSERT INTO Item VALUES (32, 'wood aspect');

DROP TABLE IF EXISTS Recipe;

CREATE TABLE Recipe(
 RecipeID INT PRIMARY KEY,
 Name VARCHAR(25),
 Quality INT
);

INSERT INTO Recipe VALUES (1, 'bronze 1h sword', 1);
INSERT INTO Recipe VALUES (2, 'iron 1h sword', 2);
INSERT INTO Recipe VALUES (3, 'steel 1h sword', 3);
INSERT INTO Recipe VALUES (4, 'titanium 1h sword', 4);
INSERT INTO Recipe VALUES (5, 'mythrium 1h sword', 5);
INSERT INTO Recipe VALUES (6, 'cobaltite 1h sword', 6);
INSERT INTO Recipe VALUES (7, 'infernite 1h sword', 7);
INSERT INTO Recipe VALUES (8, 'bronze 2h sword', 1);
INSERT INTO Recipe VALUES (9, 'iron 2h sword', 2);
INSERT INTO Recipe VALUES (10, 'steel 2h sword', 3);
INSERT INTO Recipe VALUES (11, 'titanium 2h sword', 4);
INSERT INTO Recipe VALUES (12, 'mythrium 2h sword', 5);
INSERT INTO Recipe VALUES (13, 'cobaltite 2h sword', 6);
INSERT INTO Recipe VALUES (14, 'infernite 2h sword', 7);
INSERT INTO Recipe VALUES (15, 'bronze 1h axe', 1);
INSERT INTO Recipe VALUES (16, 'iron 1h axe', 2);
INSERT INTO Recipe VALUES (17, 'steel 1h axe', 3);
INSERT INTO Recipe VALUES (18, 'titanium 1h axe', 4);
INSERT INTO Recipe VALUES (19, 'mythrium 1h axe', 5);
INSERT INTO Recipe VALUES (20, 'cobaltite 1h axe', 6);
INSERT INTO Recipe VALUES (21, 'infernite 1h axe', 7);
INSERT INTO Recipe VALUES (22, 'bronze 2h axe', 1);
INSERT INTO Recipe VALUES (23, 'iron 2h axe', 2);
INSERT INTO Recipe VALUES (24, 'steel 2h axe', 3);
INSERT INTO Recipe VALUES (25, 'titanium 2h axe', 4);
INSERT INTO Recipe VALUES (26, 'mythrium 2h axe', 5);
INSERT INTO Recipe VALUES (27, 'cobaltite 2h axe', 6);
INSERT INTO Recipe VALUES (28, 'infernite 2h axe', 7);
INSERT INTO Recipe VALUES (29, 'bronze 1h mace', 1);
INSERT INTO Recipe VALUES (30, 'iron 1h mace', 2);
INSERT INTO Recipe VALUES (31, 'steel 1h mace', 3);
INSERT INTO Recipe VALUES (32, 'titanium 1h mace', 4);
INSERT INTO Recipe VALUES (33, 'mythrium 1h mace', 5);
INSERT INTO Recipe VALUES (34, 'cobaltite 1h mace', 6);
INSERT INTO Recipe VALUES (35, 'infernite 1h mace', 7);
INSERT INTO Recipe VALUES (36, 'bronze 2h mace', 1);
INSERT INTO Recipe VALUES (37, 'iron 2h mace', 2);
INSERT INTO Recipe VALUES (38, 'steel 2h mace', 3);
INSERT INTO Recipe VALUES (39, 'titanium 2h mace', 4);
INSERT INTO Recipe VALUES (40, 'mythrium 2h mace', 5);
INSERT INTO Recipe VALUES (41, 'cobaltite 2h mace', 6);
INSERT INTO Recipe VALUES (42, 'infernite 2h mace', 7);
INSERT INTO Recipe VALUES (43, 'bronze polearm', 1);
INSERT INTO Recipe VALUES (44, 'iron polearm', 2);
INSERT INTO Recipe VALUES (45, 'steel polearm', 3);
INSERT INTO Recipe VALUES (46, 'titanium polearm', 4);
INSERT INTO Recipe VALUES (47, 'mythrium polearm', 5);
INSERT INTO Recipe VALUES (48, 'cobaltite polearm', 6);
INSERT INTO Recipe VALUES (49, 'infernite polearm', 7);
INSERT INTO Recipe VALUES (50, 'bronze whip', 1);
INSERT INTO Recipe VALUES (51, 'iron whip', 2);
INSERT INTO Recipe VALUES (52, 'steel whip', 3);
INSERT INTO Recipe VALUES (53, 'titanium whip', 4);
INSERT INTO Recipe VALUES (54, 'mythrium whip', 5);
INSERT INTO Recipe VALUES (55, 'cobaltite whip', 6);
INSERT INTO Recipe VALUES (56, 'infernite whip', 7);
INSERT INTO Recipe VALUES (57, 'bronze dagger', 1);
INSERT INTO Recipe VALUES (58, 'iron dagger', 2);
INSERT INTO Recipe VALUES (59, 'steel dagger', 3);
INSERT INTO Recipe VALUES (60, 'titanium dagger', 4);
INSERT INTO Recipe VALUES (61, 'mythrium dagger', 5);
INSERT INTO Recipe VALUES (62, 'cobaltite dagger', 6);
INSERT INTO Recipe VALUES (63, 'infernite dagger', 7);
INSERT INTO Recipe VALUES (64, 'bronze fist', 1);
INSERT INTO Recipe VALUES (65, 'iron fist', 2);
INSERT INTO Recipe VALUES (66, 'steel fist', 3);
INSERT INTO Recipe VALUES (67, 'titanium fist', 4);
INSERT INTO Recipe VALUES (68, 'mythrium fist', 5);
INSERT INTO Recipe VALUES (69, 'cobaltite fist', 6);
INSERT INTO Recipe VALUES (70, 'infernite fist', 7);
INSERT INTO Recipe VALUES (71, 'oak staff', 1);
INSERT INTO Recipe VALUES (72, 'maple staff', 2);
INSERT INTO Recipe VALUES (73, 'yew staff', 3);
INSERT INTO Recipe VALUES (74, 'sandalwood staff', 4);
INSERT INTO Recipe VALUES (75, 'rosewood staff', 5);
INSERT INTO Recipe VALUES (76, 'ironwood staff', 6);
INSERT INTO Recipe VALUES (77, 'aesirwood staff', 7);
INSERT INTO Recipe VALUES (78, 'oak bow', 1);
INSERT INTO Recipe VALUES (79, 'maple bow', 2);
INSERT INTO Recipe VALUES (80, 'yew bow', 3);
INSERT INTO Recipe VALUES (81, 'sandalwood bow', 4);
INSERT INTO Recipe VALUES (82, 'rosewood bow', 5);
INSERT INTO Recipe VALUES (83, 'ironwood bow', 6);
INSERT INTO Recipe VALUES (84, 'aesirwood bow', 7);
INSERT INTO Recipe VALUES (85, 'oak crossbow', 1);
INSERT INTO Recipe VALUES (86, 'maple crossbow', 2);
INSERT INTO Recipe VALUES (87, 'yew crossbow', 3);
INSERT INTO Recipe VALUES (88, 'sandalwood crossbow', 4);
INSERT INTO Recipe VALUES (89, 'rosewood crossbow', 5);
INSERT INTO Recipe VALUES (90, 'ironwood crossbow', 6);
INSERT INTO Recipe VALUES (91, 'aesirwood crossbow', 7);

DROP TABLE IF EXISTS RecipeIngredients;

CREATE TABLE RecipeIngredients(
 RecipeID INT NOT NULL,
 ItemID INT NOT NULL,
 Quantity INT,
 PRIMARY KEY (RecipeID, ItemID)
);

INSERT INTO RecipeIngredients VALUES (1, 14, 3);
INSERT INTO RecipeIngredients VALUES (1, 7, 1);
INSERT INTO RecipeIngredients VALUES (1, 29, 3);
INSERT INTO RecipeIngredients VALUES (2, 15, 3);
INSERT INTO RecipeIngredients VALUES (2, 8, 1);
INSERT INTO RecipeIngredients VALUES (2, 29, 5);
INSERT INTO RecipeIngredients VALUES (3, 16, 3);
INSERT INTO RecipeIngredients VALUES (3, 9, 1);
INSERT INTO RecipeIngredients VALUES (3, 29, 7);
INSERT INTO RecipeIngredients VALUES (4, 17, 3);
INSERT INTO RecipeIngredients VALUES (4, 10, 1);
INSERT INTO RecipeIngredients VALUES (4, 29, 9);
INSERT INTO RecipeIngredients VALUES (5, 18, 3);
INSERT INTO RecipeIngredients VALUES (5, 11, 1);
INSERT INTO RecipeIngredients VALUES (5, 29, 11);
INSERT INTO RecipeIngredients VALUES (6, 19, 3);
INSERT INTO RecipeIngredients VALUES (6, 12, 1);
INSERT INTO RecipeIngredients VALUES (6, 29, 13);
INSERT INTO RecipeIngredients VALUES (7, 20, 3);
INSERT INTO RecipeIngredients VALUES (7, 13, 1);
INSERT INTO RecipeIngredients VALUES (7, 29, 15);
INSERT INTO RecipeIngredients VALUES (8, 14, 6);
INSERT INTO RecipeIngredients VALUES (8, 7, 2);
INSERT INTO RecipeIngredients VALUES (8, 29, 3);
INSERT INTO RecipeIngredients VALUES (9, 15, 6);
INSERT INTO RecipeIngredients VALUES (9, 8, 2);
INSERT INTO RecipeIngredients VALUES (9, 29, 5);
INSERT INTO RecipeIngredients VALUES (10, 16, 6);
INSERT INTO RecipeIngredients VALUES (10, 9, 2);
INSERT INTO RecipeIngredients VALUES (10, 29, 7);
INSERT INTO RecipeIngredients VALUES (11, 17, 6);
INSERT INTO RecipeIngredients VALUES (11, 10, 3);
INSERT INTO RecipeIngredients VALUES (11, 29, 9);
INSERT INTO RecipeIngredients VALUES (12, 18, 6);
INSERT INTO RecipeIngredients VALUES (12, 11, 2);
INSERT INTO RecipeIngredients VALUES (12, 29, 11);
INSERT INTO RecipeIngredients VALUES (13, 19, 6);
INSERT INTO RecipeIngredients VALUES (13, 12, 2);
INSERT INTO RecipeIngredients VALUES (13, 29, 13);
INSERT INTO RecipeIngredients VALUES (14, 20, 6);
INSERT INTO RecipeIngredients VALUES (14, 13, 2);
INSERT INTO RecipeIngredients VALUES (14, 29, 15);
INSERT INTO RecipeIngredients VALUES (15, 14, 2);
INSERT INTO RecipeIngredients VALUES (15, 7, 2);
INSERT INTO RecipeIngredients VALUES (15, 29, 3);
INSERT INTO RecipeIngredients VALUES (16, 15, 2);
INSERT INTO RecipeIngredients VALUES (16, 8, 2);
INSERT INTO RecipeIngredients VALUES (16, 29, 5);
INSERT INTO RecipeIngredients VALUES (17, 16, 2);
INSERT INTO RecipeIngredients VALUES (17, 9, 2);
INSERT INTO RecipeIngredients VALUES (17, 29, 7);
INSERT INTO RecipeIngredients VALUES (18, 17, 2);
INSERT INTO RecipeIngredients VALUES (18, 10, 2);
INSERT INTO RecipeIngredients VALUES (18, 29, 9);
INSERT INTO RecipeIngredients VALUES (19, 18, 2);
INSERT INTO RecipeIngredients VALUES (19, 11, 2);
INSERT INTO RecipeIngredients VALUES (19, 29, 11);
INSERT INTO RecipeIngredients VALUES (20, 19, 2);
INSERT INTO RecipeIngredients VALUES (20, 12, 2);
INSERT INTO RecipeIngredients VALUES (20, 29, 13);
INSERT INTO RecipeIngredients VALUES (21, 20, 2);
INSERT INTO RecipeIngredients VALUES (21, 13, 2);
INSERT INTO RecipeIngredients VALUES (21, 29, 15);
INSERT INTO RecipeIngredients VALUES (22, 14, 4);
INSERT INTO RecipeIngredients VALUES (22, 7, 4);
INSERT INTO RecipeIngredients VALUES (22, 29, 3);
INSERT INTO RecipeIngredients VALUES (23, 15, 4);
INSERT INTO RecipeIngredients VALUES (23, 8, 4);
INSERT INTO RecipeIngredients VALUES (23, 29, 5);
INSERT INTO RecipeIngredients VALUES (24, 16, 4);
INSERT INTO RecipeIngredients VALUES (24, 9, 4);
INSERT INTO RecipeIngredients VALUES (24, 29, 7);
INSERT INTO RecipeIngredients VALUES (25, 17, 4);
INSERT INTO RecipeIngredients VALUES (25, 10, 4);
INSERT INTO RecipeIngredients VALUES (25, 29, 9);
INSERT INTO RecipeIngredients VALUES (26, 18, 4);
INSERT INTO RecipeIngredients VALUES (26, 11, 4);
INSERT INTO RecipeIngredients VALUES (26, 29, 11);
INSERT INTO RecipeIngredients VALUES (27, 19, 4);
INSERT INTO RecipeIngredients VALUES (27, 12, 4);
INSERT INTO RecipeIngredients VALUES (27, 29, 13);
INSERT INTO RecipeIngredients VALUES (28, 20, 4);
INSERT INTO RecipeIngredients VALUES (28, 13, 4);
INSERT INTO RecipeIngredients VALUES (28, 29, 15);
INSERT INTO RecipeIngredients VALUES (29, 14, 3);
INSERT INTO RecipeIngredients VALUES (29, 7, 2);
INSERT INTO RecipeIngredients VALUES (29, 29, 3);
INSERT INTO RecipeIngredients VALUES (30, 15, 3);
INSERT INTO RecipeIngredients VALUES (30, 8, 2);
INSERT INTO RecipeIngredients VALUES (30, 29, 5);
INSERT INTO RecipeIngredients VALUES (31, 16, 3);
INSERT INTO RecipeIngredients VALUES (31, 9, 2);
INSERT INTO RecipeIngredients VALUES (31, 29, 7);
INSERT INTO RecipeIngredients VALUES (32, 17, 3);
INSERT INTO RecipeIngredients VALUES (32, 10, 2);
INSERT INTO RecipeIngredients VALUES (32, 29, 9);
INSERT INTO RecipeIngredients VALUES (33, 18, 3);
INSERT INTO RecipeIngredients VALUES (33, 11, 2);
INSERT INTO RecipeIngredients VALUES (33, 29, 11);
INSERT INTO RecipeIngredients VALUES (34, 19, 3);
INSERT INTO RecipeIngredients VALUES (34, 12, 2);
INSERT INTO RecipeIngredients VALUES (34, 29, 13);
INSERT INTO RecipeIngredients VALUES (35, 20, 3);
INSERT INTO RecipeIngredients VALUES (35, 13, 2);
INSERT INTO RecipeIngredients VALUES (35, 29, 15);
INSERT INTO RecipeIngredients VALUES (36, 14, 6);
INSERT INTO RecipeIngredients VALUES (36, 7, 4);
INSERT INTO RecipeIngredients VALUES (36, 29, 3);
INSERT INTO RecipeIngredients VALUES (37, 15, 6);
INSERT INTO RecipeIngredients VALUES (37, 8, 4);
INSERT INTO RecipeIngredients VALUES (37, 29, 5);
INSERT INTO RecipeIngredients VALUES (38, 16, 6);
INSERT INTO RecipeIngredients VALUES (38, 9, 4);
INSERT INTO RecipeIngredients VALUES (38, 29, 7);
INSERT INTO RecipeIngredients VALUES (39, 17, 6);
INSERT INTO RecipeIngredients VALUES (39, 10, 4);
INSERT INTO RecipeIngredients VALUES (39, 29, 9);
INSERT INTO RecipeIngredients VALUES (40, 18, 6);
INSERT INTO RecipeIngredients VALUES (40, 11, 4);
INSERT INTO RecipeIngredients VALUES (40, 29, 11);
INSERT INTO RecipeIngredients VALUES (41, 19, 6);
INSERT INTO RecipeIngredients VALUES (41, 12, 4);
INSERT INTO RecipeIngredients VALUES (41, 29, 13);
INSERT INTO RecipeIngredients VALUES (42, 20, 6);
INSERT INTO RecipeIngredients VALUES (42, 13, 4);
INSERT INTO RecipeIngredients VALUES (42, 29, 15);
INSERT INTO RecipeIngredients VALUES (43, 14, 4);
INSERT INTO RecipeIngredients VALUES (43, 7, 5);
INSERT INTO RecipeIngredients VALUES (43, 29, 3);
INSERT INTO RecipeIngredients VALUES (44, 15, 4);
INSERT INTO RecipeIngredients VALUES (44, 8, 5);
INSERT INTO RecipeIngredients VALUES (44, 29, 5);
INSERT INTO RecipeIngredients VALUES (45, 16, 4);
INSERT INTO RecipeIngredients VALUES (45, 9, 5);
INSERT INTO RecipeIngredients VALUES (45, 29, 7);
INSERT INTO RecipeIngredients VALUES (46, 17, 4);
INSERT INTO RecipeIngredients VALUES (46, 10, 5);
INSERT INTO RecipeIngredients VALUES (46, 29, 9);
INSERT INTO RecipeIngredients VALUES (47, 18, 4);
INSERT INTO RecipeIngredients VALUES (47, 11, 5);
INSERT INTO RecipeIngredients VALUES (47, 29, 11);
INSERT INTO RecipeIngredients VALUES (48, 19, 4);
INSERT INTO RecipeIngredients VALUES (48, 12, 5);
INSERT INTO RecipeIngredients VALUES (48, 29, 13);
INSERT INTO RecipeIngredients VALUES (49, 20, 4);
INSERT INTO RecipeIngredients VALUES (49, 13, 5);
INSERT INTO RecipeIngredients VALUES (49, 29, 15);
INSERT INTO RecipeIngredients VALUES (50, 14, 2);
INSERT INTO RecipeIngredients VALUES (50, 7, 1);
INSERT INTO RecipeIngredients VALUES (50, 29, 3);
INSERT INTO RecipeIngredients VALUES (50, 2, 4);
INSERT INTO RecipeIngredients VALUES (51, 15, 2);
INSERT INTO RecipeIngredients VALUES (51, 8, 1);
INSERT INTO RecipeIngredients VALUES (51, 29, 5);
INSERT INTO RecipeIngredients VALUES (51, 2, 4);
INSERT INTO RecipeIngredients VALUES (52, 16, 2);
INSERT INTO RecipeIngredients VALUES (52, 9, 1);
INSERT INTO RecipeIngredients VALUES (52, 29, 7);
INSERT INTO RecipeIngredients VALUES (52, 2, 4);
INSERT INTO RecipeIngredients VALUES (53, 17, 2);
INSERT INTO RecipeIngredients VALUES (53, 10, 1);
INSERT INTO RecipeIngredients VALUES (53, 29, 9);
INSERT INTO RecipeIngredients VALUES (53, 2, 4);
INSERT INTO RecipeIngredients VALUES (54, 18, 2);
INSERT INTO RecipeIngredients VALUES (54, 11, 1);
INSERT INTO RecipeIngredients VALUES (54, 29, 11);
INSERT INTO RecipeIngredients VALUES (54, 2, 4);
INSERT INTO RecipeIngredients VALUES (55, 19, 2);
INSERT INTO RecipeIngredients VALUES (55, 12, 1);
INSERT INTO RecipeIngredients VALUES (55, 29, 13);
INSERT INTO RecipeIngredients VALUES (55, 2, 4);
INSERT INTO RecipeIngredients VALUES (56, 20, 2);
INSERT INTO RecipeIngredients VALUES (56, 13, 1);
INSERT INTO RecipeIngredients VALUES (56, 29, 15);
INSERT INTO RecipeIngredients VALUES (56, 2, 4);
INSERT INTO RecipeIngredients VALUES (57, 14, 1);
INSERT INTO RecipeIngredients VALUES (57, 7, 1);
INSERT INTO RecipeIngredients VALUES (57, 29, 3);
INSERT INTO RecipeIngredients VALUES (57, 2, 1);
INSERT INTO RecipeIngredients VALUES (58, 15, 1);
INSERT INTO RecipeIngredients VALUES (58, 8, 1);
INSERT INTO RecipeIngredients VALUES (58, 29, 5);
INSERT INTO RecipeIngredients VALUES (58, 2, 1);
INSERT INTO RecipeIngredients VALUES (59, 16, 1);
INSERT INTO RecipeIngredients VALUES (59, 9, 1);
INSERT INTO RecipeIngredients VALUES (59, 29, 7);
INSERT INTO RecipeIngredients VALUES (59, 2, 1);
INSERT INTO RecipeIngredients VALUES (60, 17, 1);
INSERT INTO RecipeIngredients VALUES (60, 10, 1);
INSERT INTO RecipeIngredients VALUES (60, 29, 9);
INSERT INTO RecipeIngredients VALUES (60, 2, 1);
INSERT INTO RecipeIngredients VALUES (61, 18, 1);
INSERT INTO RecipeIngredients VALUES (61, 11, 1);
INSERT INTO RecipeIngredients VALUES (61, 29, 11);
INSERT INTO RecipeIngredients VALUES (61, 2, 1);
INSERT INTO RecipeIngredients VALUES (62, 19, 1);
INSERT INTO RecipeIngredients VALUES (62, 12, 1);
INSERT INTO RecipeIngredients VALUES (62, 29, 13);
INSERT INTO RecipeIngredients VALUES (62, 2, 1);
INSERT INTO RecipeIngredients VALUES (63, 20, 1);
INSERT INTO RecipeIngredients VALUES (63, 13, 1);
INSERT INTO RecipeIngredients VALUES (63, 29, 15);
INSERT INTO RecipeIngredients VALUES (63, 2, 1);
INSERT INTO RecipeIngredients VALUES (64, 14, 1);
INSERT INTO RecipeIngredients VALUES (64, 7, 2);
INSERT INTO RecipeIngredients VALUES (64, 29, 3);
INSERT INTO RecipeIngredients VALUES (65, 15, 1);
INSERT INTO RecipeIngredients VALUES (65, 8, 2);
INSERT INTO RecipeIngredients VALUES (65, 29, 5);
INSERT INTO RecipeIngredients VALUES (66, 16, 1);
INSERT INTO RecipeIngredients VALUES (66, 9, 2);
INSERT INTO RecipeIngredients VALUES (66, 29, 7);
INSERT INTO RecipeIngredients VALUES (67, 17, 1);
INSERT INTO RecipeIngredients VALUES (67, 10, 2);
INSERT INTO RecipeIngredients VALUES (67, 29, 9);
INSERT INTO RecipeIngredients VALUES (68, 18, 1);
INSERT INTO RecipeIngredients VALUES (68, 11, 2);
INSERT INTO RecipeIngredients VALUES (68, 29, 11);
INSERT INTO RecipeIngredients VALUES (69, 19, 1);
INSERT INTO RecipeIngredients VALUES (69, 12, 2);
INSERT INTO RecipeIngredients VALUES (69, 29, 13);
INSERT INTO RecipeIngredients VALUES (70, 20, 1);
INSERT INTO RecipeIngredients VALUES (70, 13, 2);
INSERT INTO RecipeIngredients VALUES (70, 29, 15);
INSERT INTO RecipeIngredients VALUES (71, 14, 1);
INSERT INTO RecipeIngredients VALUES (71, 7, 4);
INSERT INTO RecipeIngredients VALUES (71, 29, 3);
INSERT INTO RecipeIngredients VALUES (72, 15, 1);
INSERT INTO RecipeIngredients VALUES (72, 8, 4);
INSERT INTO RecipeIngredients VALUES (72, 29, 5);
INSERT INTO RecipeIngredients VALUES (73, 16, 1);
INSERT INTO RecipeIngredients VALUES (73, 9, 4);
INSERT INTO RecipeIngredients VALUES (73, 29, 7);
INSERT INTO RecipeIngredients VALUES (74, 17, 1);
INSERT INTO RecipeIngredients VALUES (74, 10, 4);
INSERT INTO RecipeIngredients VALUES (74, 29, 9);
INSERT INTO RecipeIngredients VALUES (75, 18, 1);
INSERT INTO RecipeIngredients VALUES (75, 11, 4);
INSERT INTO RecipeIngredients VALUES (75, 29, 11);
INSERT INTO RecipeIngredients VALUES (76, 19, 1);
INSERT INTO RecipeIngredients VALUES (76, 12, 4);
INSERT INTO RecipeIngredients VALUES (76, 29, 13);
INSERT INTO RecipeIngredients VALUES (77, 20, 1);
INSERT INTO RecipeIngredients VALUES (77, 13, 4);
INSERT INTO RecipeIngredients VALUES (77, 29, 15);
INSERT INTO RecipeIngredients VALUES (78, 14, 1);
INSERT INTO RecipeIngredients VALUES (78, 7, 4);
INSERT INTO RecipeIngredients VALUES (78, 29, 3);
INSERT INTO RecipeIngredients VALUES (78, 2, 4);
INSERT INTO RecipeIngredients VALUES (79, 15, 1);
INSERT INTO RecipeIngredients VALUES (79, 8, 4);
INSERT INTO RecipeIngredients VALUES (79, 29, 5);
INSERT INTO RecipeIngredients VALUES (79, 2, 4);
INSERT INTO RecipeIngredients VALUES (80, 16, 1);
INSERT INTO RecipeIngredients VALUES (80, 9, 4);
INSERT INTO RecipeIngredients VALUES (80, 29, 7);
INSERT INTO RecipeIngredients VALUES (80, 2, 4);
INSERT INTO RecipeIngredients VALUES (81, 17, 1);
INSERT INTO RecipeIngredients VALUES (81, 10, 4);
INSERT INTO RecipeIngredients VALUES (81, 29, 9);
INSERT INTO RecipeIngredients VALUES (81, 2, 4);
INSERT INTO RecipeIngredients VALUES (82, 18, 1);
INSERT INTO RecipeIngredients VALUES (82, 11, 4);
INSERT INTO RecipeIngredients VALUES (82, 29, 11);
INSERT INTO RecipeIngredients VALUES (82, 2, 4);
INSERT INTO RecipeIngredients VALUES (83, 19, 1);
INSERT INTO RecipeIngredients VALUES (83, 12, 4);
INSERT INTO RecipeIngredients VALUES (83, 29, 13);
INSERT INTO RecipeIngredients VALUES (83, 2, 4);
INSERT INTO RecipeIngredients VALUES (84, 20, 1);
INSERT INTO RecipeIngredients VALUES (84, 13, 4);
INSERT INTO RecipeIngredients VALUES (84, 29, 15);
INSERT INTO RecipeIngredients VALUES (84, 2, 4);
INSERT INTO RecipeIngredients VALUES (85, 14, 2);
INSERT INTO RecipeIngredients VALUES (85, 7, 3);
INSERT INTO RecipeIngredients VALUES (85, 29, 3);
INSERT INTO RecipeIngredients VALUES (85, 2, 4);
INSERT INTO RecipeIngredients VALUES (86, 15, 2);
INSERT INTO RecipeIngredients VALUES (86, 8, 3);
INSERT INTO RecipeIngredients VALUES (86, 29, 5);
INSERT INTO RecipeIngredients VALUES (86, 2, 4);
INSERT INTO RecipeIngredients VALUES (87, 16, 2);
INSERT INTO RecipeIngredients VALUES (87, 9, 3);
INSERT INTO RecipeIngredients VALUES (87, 29, 7);
INSERT INTO RecipeIngredients VALUES (87, 2, 4);
INSERT INTO RecipeIngredients VALUES (88, 17, 2);
INSERT INTO RecipeIngredients VALUES (88, 10, 3);
INSERT INTO RecipeIngredients VALUES (88, 29, 9);
INSERT INTO RecipeIngredients VALUES (88, 2, 4);
INSERT INTO RecipeIngredients VALUES (89, 18, 2);
INSERT INTO RecipeIngredients VALUES (89, 11, 3);
INSERT INTO RecipeIngredients VALUES (89, 29, 11);
INSERT INTO RecipeIngredients VALUES (89, 2, 4);
INSERT INTO RecipeIngredients VALUES (90, 19, 2);
INSERT INTO RecipeIngredients VALUES (90, 12, 3);
INSERT INTO RecipeIngredients VALUES (90, 29, 13);
INSERT INTO RecipeIngredients VALUES (90, 2, 4);
INSERT INTO RecipeIngredients VALUES (91, 20, 2);
INSERT INTO RecipeIngredients VALUES (91, 13, 3);
INSERT INTO RecipeIngredients VALUES (91, 29, 15);
INSERT INTO RecipeIngredients VALUES (91, 2, 4);

DROP TABLE IF EXISTS LootTable;

CREATE TABLE LootTable(
 MonsterID INT NOT NULL,
 ItemID INT NOT NULL,
 DropChance INT,
 Quantity INT,
 PRIMARY KEY (MonsterID, ItemID)
);

INSERT INTO LootTable VALUES (1, 1, 50, 1);
INSERT INTO LootTable VALUES (1, 2, 50, 3);
INSERT INTO LootTable VALUES (2, 1, 50, 1);
INSERT INTO LootTable VALUES (2, 2, 50, 3);
INSERT INTO LootTable VALUES (3, 1, 100, 2);
INSERT INTO LootTable VALUES (4, 1, 100, 2);
INSERT INTO LootTable VALUES (5, 2, 100, 4);
INSERT INTO LootTable VALUES (6, 2, 100, 2);
INSERT INTO LootTable VALUES (7, 2, 100, 2);
INSERT INTO LootTable VALUES (8, 2, 100, 2);
INSERT INTO LootTable VALUES (9, 2, 100, 3);
INSERT INTO LootTable VALUES (10, 2, 100, 1);
INSERT INTO LootTable VALUES (11, 2, 100, 2);
INSERT INTO LootTable VALUES (12, 2, 100, 3);
INSERT INTO LootTable VALUES (13, 2, 100, 4);
INSERT INTO LootTable VALUES (14, 3, 25, 1);
INSERT INTO LootTable VALUES (14, 4, 25, 1);
INSERT INTO LootTable VALUES (14, 5, 25, 1);
INSERT INTO LootTable VALUES (14, 6, 25, 1);
INSERT INTO LootTable VALUES (15, 3, 25, 1);
INSERT INTO LootTable VALUES (15, 4, 25, 1);
INSERT INTO LootTable VALUES (15, 5, 25, 2);
INSERT INTO LootTable VALUES (15, 6, 25, 1);
INSERT INTO LootTable VALUES (16, 3, 25, 1);
INSERT INTO LootTable VALUES (16, 4, 25, 1);
INSERT INTO LootTable VALUES (16, 5, 25, 2);
INSERT INTO LootTable VALUES (16, 6, 25, 2);
INSERT INTO LootTable VALUES (17, 3, 25, 2);
INSERT INTO LootTable VALUES (17, 4, 25, 1);
INSERT INTO LootTable VALUES (17, 5, 25, 2);
INSERT INTO LootTable VALUES (17, 6, 25, 2);
INSERT INTO LootTable VALUES (18, 3, 25, 2);
INSERT INTO LootTable VALUES (18, 4, 25, 2);
INSERT INTO LootTable VALUES (18, 5, 25, 2);
INSERT INTO LootTable VALUES (18, 6, 25, 2);
INSERT INTO LootTable VALUES (19, 28, 33, 1);
INSERT INTO LootTable VALUES (19, 29, 33, 1);
INSERT INTO LootTable VALUES (19, 30, 33, 1);
INSERT INTO LootTable VALUES (20, 28, 16, 1);
INSERT INTO LootTable VALUES (20, 29, 16, 1);
INSERT INTO LootTable VALUES (20, 30, 16, 2);
INSERT INTO LootTable VALUES (20, 7, 16, 1);
INSERT INTO LootTable VALUES (20, 14, 16, 1);
INSERT INTO LootTable VALUES (20, 21, 16, 1);
INSERT INTO LootTable VALUES (21, 28, 16, 1);
INSERT INTO LootTable VALUES (21, 29, 16, 1);
INSERT INTO LootTable VALUES (21, 30, 16, 3);
INSERT INTO LootTable VALUES (21, 8, 16, 1);
INSERT INTO LootTable VALUES (21, 15, 16, 1);
INSERT INTO LootTable VALUES (21, 22, 16, 1);
INSERT INTO LootTable VALUES (22, 28, 16, 1);
INSERT INTO LootTable VALUES (22, 29, 16, 1);
INSERT INTO LootTable VALUES (22, 30, 16, 4);
INSERT INTO LootTable VALUES (22, 9, 16, 1);
INSERT INTO LootTable VALUES (22, 16, 16, 1);
INSERT INTO LootTable VALUES (22, 23, 16, 1);
INSERT INTO LootTable VALUES (23, 28, 16, 1);
INSERT INTO LootTable VALUES (23, 29, 16, 1);
INSERT INTO LootTable VALUES (23, 30, 16, 5);
INSERT INTO LootTable VALUES (23, 11, 16, 1);
INSERT INTO LootTable VALUES (23, 18, 16, 1);
INSERT INTO LootTable VALUES (23, 24, 16, 1);
INSERT INTO LootTable VALUES (24, 30, 100, 2);
INSERT INTO LootTable VALUES (25, 30, 33, 3);
INSERT INTO LootTable VALUES (25, 29, 33, 1);
INSERT INTO LootTable VALUES (25, 28, 33, 1);
INSERT INTO LootTable VALUES (26, 30, 33, 5);
INSERT INTO LootTable VALUES (26, 29, 33, 1);
INSERT INTO LootTable VALUES (26, 28, 33, 1);
INSERT INTO LootTable VALUES (27, 30, 33, 7);
INSERT INTO LootTable VALUES (27, 29, 33, 1);
INSERT INTO LootTable VALUES (27, 28, 33, 1);
INSERT INTO LootTable VALUES (28, 31, 100, 1);
INSERT INTO LootTable VALUES (29, 31, 100, 2);
INSERT INTO LootTable VALUES (30, 31, 100, 3);
INSERT INTO LootTable VALUES (31, 4, 100, 1);
INSERT INTO LootTable VALUES (32, 4, 100, 2);
INSERT INTO LootTable VALUES (33, 4, 100, 3);
INSERT INTO LootTable VALUES (34, 32, 100, 1);
INSERT INTO LootTable VALUES (35, 32, 100, 2);
INSERT INTO LootTable VALUES (36, 32, 100, 3);