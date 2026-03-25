import db

def add_item(title, description, author, user_id):
    sql = """INSERT INTO items (title, description, author, user_id) VALUES (?, ?, ?, ?)"""
    db.execute(sql, [title, description, author, user_id])