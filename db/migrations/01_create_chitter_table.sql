CREATE TABLE peeps(id SERIAL PRIMARY KEY, message VARCHAR(60));
INSERT INTO peeps (message) values ('This is another peep!');
ALTER TABLE peeps ADD COLUMN person VARCHAR(50);
