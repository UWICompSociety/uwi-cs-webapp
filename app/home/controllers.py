from . import home
from flask import render_template


@home.route('/', methods=['GET'])
def index():
    return render_template("index.html")


@home.route('/forum', methods=['GET'])
def forum():
    return render_template('forum.html')

@home.route('/news', methods=['GET'])
def news():
    return render_template('news.html')


@home.route('/projects', methods=['GET'])
def projects():
    return render_template('projects.html')


@home.route('/stream', methods=['GET'])
def stream():
    return render_template('stream.html')