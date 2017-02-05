from . import home
from flask import render_template


@home.route('/', methods=['GET'])
def index():
    """
    TODO
    """
    return render_template("index.html")
