"""
Application module
"""

from flask import Flask, request, url_for, redirect, render_template
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from config import app_config

db = SQLAlchemy()

app = Flask(__name__, instance_relative_config=True)

def create_app(config_name):
    """
    Todo
    """
    app.config.from_object(app_config[config_name])
    app.config.from_pyfile('config.py')
    db.init_app(app)

    migrate = Migrate(app, db)

    from app import models

    from .auth import auth as auth_blueprint
    app.register_blueprint(auth_blueprint)

    from .home import home as home_blueprint
    app.register_blueprint(home_blueprint)

    return app


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/')
def news():
    return render_template('news.html')

@app.route('/')
def forum():
    return render_template('forum.html')

@app.route('/')
def projects():
    return render_template('projects.html')

@app.route('/')
def stream():
    return render_template('stream.html')


