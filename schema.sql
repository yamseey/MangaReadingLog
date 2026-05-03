CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL
);


CREATE TABLE items (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    author TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id) NOT NULL
);


CREATE TABLE reviews (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items(id) NOT NULL,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    review TEXT NOT NULL
);


CREATE TABLE classes (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    value TEXT NOT NULL
);


CREATE TABLE item_classes (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items(id) NOT NULL,
    title TEXT NOT NULL,
    value TEXT NOT NULL
);


CREATE TABLE images (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items(id) NOT NULL,
    image BLOB NOT NULL
);


CREATE INDEX idx_items_user_id ON items (user_id);
CREATE INDEX idx_items_title ON items (title);
CREATE INDEX idx_reviews_item_id ON reviews (item_id);
CREATE INDEX idx_item_classes_item_id ON item_classes (item_id);
CREATE INDEX idx_images_item_id ON images (item_id);