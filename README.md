# MangaReadingLog
MangaReadingLog is a web application where users can keep track of manga they have read or are currently reading, as well as leave reviews for others to see. A manga entry will contain information such as the title, author and description of the manga.

## Features

- Users can create an account and log in to the application.
- Users can add manga entries with a title, author, synopsis, categories, status, and rating.
- Users can assign one or more categories to a manga (for example: romance, fantasy, comedy).
- Users can edit and delete their own manga entries.
- Users can view manga reviews.
- Users can upload a PNG cover image for a manga.
- Users can write reviews on manga pages.
- Users can view reviews written by other users.
- Users can search for manga by title or synopsis.
- The user page shows how many manga entries the user has added and lists those entries.

In this application, the main data object is a manga, and the secondary data object is a review related to the manga.

## How to run the application
Clone the repository:

```
$ git clone https://github.com/yamseey/MangaReadingLog.git
```
Create a virtual environment:

```
$ cd MangaReadingLog
$ python -m venv venv
```

Activate the environment:

```
$ source venv/Scripts/activate #Windows
$ source venv/bin/activate #Linux / Mac
```


Install Flask:

```
$ pip install flask
```

Create the database tables and add initial data:

```
$ sqlite3 database.db < schema.sql
$ sqlite3 database.db < init.sql
```

Run the application:

```
$ flask run
```

Open the application in your browser:

```
http://127.0.0.1:5000
```
