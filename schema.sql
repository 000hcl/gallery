CREATE TABLE users (id SERIAL PRIMARY KEY, username TEXT, password TEXT);



CREATE TABLE categories (id SERIAL PRIMARY KEY, name TEXT);

INSERT INTO categories (name) VALUES ('Traditional');
INSERT INTO categories (name) VALUES ('Digital');
INSERT INTO categories (name) VALUES ('Photography');
INSERT INTO categories (name) VALUES ('Mixed media');
INSERT INTO categories (name) VALUES ('Other');



CREATE TABLE images (id SERIAL PRIMARY KEY, title TEXT, data BYTEA, description TEXT, userid INTEGER REFERENCES users);

CREATE TABLE comments (id SERIAL PRIMARY KEY, userid INTEGER REFERENCES users, imgid INTEGER REFERENCES images);

CREATE TABLE favourites (userid INTEGER REFERENCES users, imgid INTEGER REFERENCES images);

CREATE TABLE imagecategories (imgid INTEGER REFERENCES images, catid INTEGER REFERENCES categories);
