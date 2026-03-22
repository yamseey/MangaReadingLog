from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "This site will be up soon..."


