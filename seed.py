import random
import sqlite3

from werkzeug.security import generate_password_hash

db = sqlite3.connect("database.db")

db.execute("DELETE FROM images")
db.execute("DELETE FROM reviews")
db.execute("DELETE FROM item_classes")
db.execute("DELETE FROM items")
db.execute("DELETE FROM users")

user_count = 1000
item_count = 5000
review_count = 100000

password_hash = generate_password_hash("password")

for i in range(1, user_count + 1):
    db.execute(
        "INSERT INTO users (username, password_hash) VALUES (?, ?)",
        ["user" + str(i), password_hash],
    )

for i in range(1, item_count + 1):
    user_id = random.randint(1, user_count)

    db.execute(
        """INSERT INTO items (title, description, author, user_id)
           VALUES (?, ?, ?, ?)""",
        [
            "Manga " + str(i),
            "Description " + str(i),
            "Author " + str(i),
            user_id,
        ],
    )

    item_id = db.execute("SELECT last_insert_rowid()").fetchone()[0]

    db.execute(
        "INSERT INTO item_classes (item_id, title, value) VALUES (?, ?, ?)",
        [item_id, "Status", random.choice(["Reading", "Completed", "On-Hold"])],
    )

    db.execute(
        "INSERT INTO item_classes (item_id, title, value) VALUES (?, ?, ?)",
        [item_id, "Rating", str(random.randint(1, 5))],
    )

    db.execute(
        "INSERT INTO item_classes (item_id, title, value) VALUES (?, ?, ?)",
        [item_id, "Category", random.choice(["Shounen", "Fantasy", "Romance"])],
    )

for i in range(1, review_count + 1):
    user_id = random.randint(1, user_count)
    item_id = random.randint(1, item_count)

    db.execute(
        """INSERT INTO reviews (item_id, user_id, review)
           VALUES (?, ?, ?)""",
        [
            item_id,
            user_id,
            "Review " + str(i),
        ],
    )

db.commit()
db.close()
