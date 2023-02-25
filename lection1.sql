CREATE TABLE vehicles (
    vendor    TEXT,
    model     TEXT,
    "year"    INTEGER,
    color     TEXT,
    price     NUMERIC(10,2),
    available BOOLEAN
);

SELECT * FROM vehicles;


INSERT INTO vehicles (vendor, model, "year", color, price, available)
     VALUES ('Honda', 'Civic', 1999, 'black', 4599.99, TRUE);

INSERT INTO vehicles (vendor, model, "year", color, price, available)
     VALUES ('Ford', 'Focus', null, 'black', 25000, TRUE);

SELECT vendor,
       model,
       price as "Original price",
       price * 1.10 as "Best price"
  FROM vehicles;

UPDATE vehicles
   SET price = price * 1.20
 WHERE vendor = 'Mazda';

UPDATE vehicles
   SET price = price * 1.20
 WHERE vendor = 'Mazda'
   AND "year" > 2020;

 UPDATE vehicles
    SET price = price * 1.20
  WHERE vendor = 'Honda'
    AND model = 'Civic'
    AND "year" = 1999
    AND color = 'black'
    AND price = 4599.99
    AND available = true;


DROP TABLE vehicles;

select * from vehicles;

ALTER TABLE vehicles ADD id INTEGER;
UPDATE vehicles SET id = 1 WHERE vendor = 'Mazda' and model = 'CX-5' and color = 'Gray';
UPDATE vehicles SET id = 2 WHERE vendor = 'Toyota' and model = 'Camry' and color = 'White';
UPDATE vehicles SET id = 3 WHERE vendor = 'Honda' and model = 'Civic' and color = 'black';
UPDATE vehicles SET id = 4 WHERE vendor = 'Ford' and model = 'Focus' and color = 'black';
ALTER TABLE vehicles ADD CONSTRAINT vehicles_primary_key PRIMARY KEY (id);


CREATE TABLE vehicles (
    id        INTEGER PRIMARY KEY,
    vendor    TEXT,
    model     TEXT,
    "year"    INTEGER,
    color     TEXT,
    price     NUMERIC(10,2),
    available BOOLEAN
);


INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES (1, 'Mazda', 'CX-5', 2020, 'Gray', 20000.00, TRUE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES (2, 'Toyota', 'Camry', 2021, 'White', 38000.00, FALSE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES (3, 'Honda', 'Civic', 1999, 'black', 4599.99, TRUE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES (4, 'Ford', 'Focus', null, 'black', 25000, TRUE);


SELECT  * FROM vehicles;


DROP TABLE vehicles;

CREATE TABLE vehicles (
    id        uuid PRIMARY KEY,
    vendor    TEXT,
    model     TEXT,
    "year"    INTEGER,
    color     TEXT,
    price     NUMERIC(10,2),
    available BOOLEAN
);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES ('c0966540-5672-4da0-bf17-a9bafb634dbd', 'Mazda', 'CX-5', 2020, 'Gray', 20000.00, TRUE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES ('54503d5d-48c4-4a15-b889-39121319932c', 'Toyota', 'Camry', 2021, 'White', 38000.00, FALSE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES ('6dfa0d06-e2b2-40ce-89c9-c12fd1c95122', 'Honda', 'Civic', 1999, 'black', 4599.99, TRUE);

INSERT INTO vehicles (id, vendor, model, "year", color, price, available)
     VALUES ('f0dc8a71-5ad4-4388-b3e5-c5eee0ff8fb1', 'Ford', 'Focus', null, 'black', 25000, TRUE);

SELECT  * FROM vehicles;


UPDATE vehicles
  SET price = price * 1.20
WHERE vendor = 'Honda'
  AND model = 'Civic'
  AND "year" = 1999
  AND color = 'black'
  AND price = 4599.99
  AND available = true;

UPDATE vehicles
   SET price = price * 1.20
 WHERE id = 3;

SELECT *
  FROM vehicles
 WHERE id = 3;

DELETE FROM vehicles
 WHERE id = 3;

