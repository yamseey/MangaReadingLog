CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT UNIQUE,
    password_hash TEXT
);

CREATE TABLE items (
    id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    author TEXT,
    user_id INTEGER REFERENCES USERS
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items,
    user_id INTEGER REFERENCES users,
    review TEXT
);

CREATE TABLE classes (
    id INTEGER PRIMARY KEY, 
    title TEXT,
    value TEXT
);

CREATE TABLE item_classes (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items,
    title TEXT,
    value TEXT
);

CREATE TABLE images (
    id INTEGER PRIMARY KEY,
    item_id INTEGER REFERENCES items,
    image BLOB
);

CREATE INDEX idx_items_user_id ON items (user_id);
CREATE INDEX idx_items_title ON items (title);
CREATE INDEX idx_reviews_item_id ON reviews (item_id);
CREATE INDEX idx_item_classes_item_id ON item_classes (item_id);
CREATE INDEX idx_images_item_id ON images (item_id);