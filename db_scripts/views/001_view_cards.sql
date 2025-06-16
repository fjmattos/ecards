CREATE VIEW vw_cards AS
SELECT 
    c.id,
    col.collectionSetName AS collection,
    t.typeName AS type,
    s.stageName AS stage,
    c.hp,
    c.name,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resistance,
    c.retreat,
    c.cardNumberInCollection
FROM tbl_cards c
LEFT JOIN tbl_collections col ON c.collection_id = col.id
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id;
