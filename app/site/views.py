from app import app, db
from flask import Blueprint, render_template, url_for, request
from app.models import person, ProjectView, Project, CarouselView, Carousel, NewsView, News

site = Blueprint('site', __name__, template_folder='templates')

@site.route('/sign-in', methods=['GET','POST'])
def sign_in():
	if request.method == 'POST':
		pass
	display = 1
	return render_template("signIn.html", display = display)

@site.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
	if request.method == 'POST':
		pass
	display = 2
	return render_template("signIn.html", display = display)
@site.route('/', methods=['GET'])
def index():
	carousel_list = Carousel.query.all()
	news = News.query.all()
	news_list = []
	for x in reversed(range(len(news))):
		if x <= 6:
			news_list.append(news[x])
		else:
			break
	return render_template("home.html", carousel_list = carousel_list, news_list = news_list)

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