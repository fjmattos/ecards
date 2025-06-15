CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    collection_id INT REFERENCES tbl_collections(id) ON DELETE CASCADE,
    type_id INT REFERENCES tbl_types(id) ON DELETE SET NULL,
    stage_id INT REFERENCES tbl_stages(id) ON DELETE SET NULL,
    hp INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    info TEXT,
    attack VARCHAR(50),
    damage VARCHAR(10),
    weak VARCHAR(30),
    resistance VARCHAR(30),
    retreat VARCHAR(10),
    cardNumberInCollection INT NOT NULL
);