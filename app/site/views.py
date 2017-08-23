from app import app, db
from flask import Blueprint, render_template, url_for
from app.models import person, ProjectView, Project, CarouselView, Carousel, NewsView, News

site = Blueprint('site', __name__, template_folder='templates')

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
	print('######' + str(news_list[0]) + '######')
	print('######' + str(carousel_list) + '######')
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