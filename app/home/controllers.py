from . import home
from flask import render_template


@home.route('/', methods=['GET'])
def index():
    return render_template("index.html")


@home.route('/forum', methods=['GET'])
def forum():
    """
    Remove pass and render the file for the forum section of the website. 
    Use the index function above as a guide.
    """
    pass


@home.route('/news', methods=['GET'])
def news():
    """
    Remove pass and render the file for the news section of the website. 
    Use the index function above as a guide.
    """
    pass


@home.route('/projects', methods=['GET'])
def projects():
    """
    Remove pass and render the file for the projects section of the website. 
    Use the index function above as a guide.
    """
    pass


@home.route('/stream', methods=['GET'])
def stream():
    """
    Remove pass and render the file for the stream section of the website. 
    Use the index function above as a guide.
    """
    pass
