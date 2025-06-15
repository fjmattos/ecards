INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO tbl_types (typeName) VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Dark'),
('Metal'),
('Fairy'),
('Dragon'),
('Normal');

INSERT INTO tbl_stages (stageName) VALUES
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO tbl_cards (collection_id, type_id, stage_id, hp, name, info, attack, damage, weak, resistance, retreat, cardNumberInCollection) VALUES
(1, 1, 1, 120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', '', '3', 4),
(1, 2, 1, 60, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '20', 'Electric', '', '1', 7),
(2, 3, 1, 70, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '30', 'Fire', '', '1', 1),
(2, 4, 1, 80, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '40', 'Fighting', '', '1', 25),
(3, 5, 2, 90, 'Gengar', 'Shadow Pokémon', 'Night Shade', '60', 'Dark', 'Fighting', '1', 6);
