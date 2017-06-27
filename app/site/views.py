from flask import Blueprint, render_template, url_for

site = Blueprint('site', __name__, template_folder='templates')

@site.route('/', methods=['GET'])
def index():
    return render_template("home.html")

@site.route('/forum', methods=['GET'])
def forum():
    return render_template('forum.html')

@site.route('/news', methods=['GET'])
def news():
    return render_template('news.html')


@site.route('/projects', methods=['GET'])
def projects():
    return render_template('projects.html')


@site.route('/stream', methods=['GET'])
def stream():
    return render_template('stream.html')