# MangaReadingLog
MangaReadingLog is a web application where users can keep track of manga they have read or are currently reading, as well as leave reviews for others to see. A manga entry will contain information such as the title, author and description of the manga.

## Features

- Users can create an account and log in to the application.
- Users can keep track of manga they have read and write reviews about them.
- Users can add their own manga entries, edit them or delete them.
- Users can view added manga reviews.
- Users can search for manga by title.
- The user page shows how many manga entries the user has added and a list of those entries.
- Users can assign one or more categories to a manga (like for example: romance, fantasy, comedy)
- Users can add reviews and ratings to manga, which are shown on the manga page.

In this application the main data object is a manga and the secondary data object is a review related to the manga.

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
$ source venv/bin/activate #Linux
$ venv/bin/activate #Mac
```


Install `flask`:

```
$ pip install flask
```

Create the database tables and add initial data:

```
$ sqlite3 database.db < schema.sql
```

Run the application:

```
$ flask run
```

Open the application in your browser:

```
http://127.0.0.1:5000
```
