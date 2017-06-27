"""
Application module
"""

from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView

app = Flask(__name__)

app.config['SECRET_KEY'] = 'ComputingSociety-secret_key'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://computingsociety:computingsociety@localhost/computingsociety'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True # added just to suppress a warning

db = SQLAlchemy(app)
migrate = Migrate(app, db)

app.config.from_object(__name__)


# ----- Admin ----- #
admin = Admin(app)


# ----- Blueprint ----- #
from app.auth.views import mod
from app.api.views import api
from app.site.views import site

app.register_blueprint(mod)
app.register_blueprint(site)
app.register_blueprint(api)

# from flask import Flask, request, url_for, redirect, render_template
# from flask_sqlalchemy import SQLAlchemy
# from flask_migrate import Migrate
# from flask_admin import Admin
# from flask_admin.contrib.sqla import ModelView
# from config import app_config

# db = SQLAlchemy()
# def create_app(config_name):
#     """
#     Todo
#     """
#     app = Flask(__name__, instance_relative_config=True)
#     app.config.from_object(app_config[config_name])
#     app.config.from_pyfile('config.py')
#     db.init_app(app)

#     migrate = Migrate(app, db)

#     from app import models

#     from .auth import auth as auth_blueprint
#     app.register_blueprint(auth_blueprint)

#     from .home import home as home_blueprint
#     app.register_blueprint(home_blueprint)

#     return app


