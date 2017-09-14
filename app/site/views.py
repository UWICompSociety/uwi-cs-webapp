from app import app, db, login_manager
from flask import Blueprint, render_template, url_for, request, redirect, session
from flask_login import login_user, logout_user, current_user, login_required
from app.models import About, Person, ImageView, ProjectView, Project, CarouselView, Carousel, NewsView, News, ExecutivesView, Executives, Images, Developers
from app.forms import Sign_in, Sign_up

import random, hashlib, time

site = Blueprint('site', __name__, template_folder='templates')
@site.route('/sign-in', methods=['GET','POST'])
def sign_in():
	form = Sign_in()
	if request.method == 'POST':
		
		email = request.form['email']
		password = request.form['password']

		user = Person.query.filter_by(email=email).first()
		hash_num = user.pass_num
		f_name = user.firstname

		hash_pass = hash_password(password, hash_num, f_name)

		if hash_pass == user.pass_hash:
			
			login_user(user)
			
			return redirect(url_for('site.index'))
		else:
			return redirect(url_for('site.sign_in'))
	display = 1
	return render_template("sign.html", display = display, form = form)


@site.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
	print ("hello")
	form = Sign_up()
	
	if request.method == 'POST':

		
		firstname = request.form['firstname']
		lastname = request.form['lastname']
		email = request.form['email']
		status = request.form['status']
		password = request.form['password']
		confirm = request.form['confirm']

		ran_number = random_num()
		hash_pass = hash_password(password, ran_number, firstname)
		hash_confirm_pass = hash_password(confirm, ran_number, firstname)

		if hash_pass == hash_confirm_pass and Person.query.filter_by(email=email).first() is None:
			
			user = Person(firstname, lastname, email, ran_number, hash_pass, status)
			db.session.add(user)
			db.session.commit()
			login_user(user)

			return redirect(url_for('site.index'))
		else:
			return redirect(url_for('site.sign_up'))
	display = 2
	return render_template("sign.html", display = display, form = form)

@site.route('/sign-out')
@login_required
def sign_out():
	logout_user()
	return redirect(url_for('site.index'))


@site.route('/', methods=['GET'])
def index():
	carousel_list = Carousel.query.all()
	about = About.query.all()
	news = News.query.all()
	news_list = []
	for x in reversed(range(len(news))):
		if x <= 6:
			news_list.append(news[x])
		else:
			break
	
	return render_template("home.html", carousel_list = carousel_list, about = about, news_list = news_list)

@site.route('/about', methods=['GET'])
def about():
	about = About.query.all()
	execut = Executives.query.all()

	return render_template("about.html", about = about, execut = execut)

@site.route('/forum', methods=['GET'])
def forum():
	about = About.query.all()
	return render_template('coming_soon.html', about=about)

@site.route('/news', methods=['GET'])
def news():
	news = News.query.all()
	about = About.query.all()
	news_list = []
	for x in reversed(xrange(len(news))):
		news_list.append(news[x])
	return render_template('news.html', news_list = news_list, about = about)


@site.route('/projects', methods=['GET'])
def projects():
	projects = Project.query.all()
	about = About.query.all()
	return render_template('project.html', projects = projects, about=about)

@site.route('/projects/detail/<pro_name>', methods=['GET'])
@login_required
def view_projects(pro_name):
	get_project = Project.query.filter_by(pro_name=pro_name).first()
	get_pro_img = Images.query.filter_by(pro_id=get_project.id).all()
	get_developers = Developers.query.filter_by(pro_id=get_project.id).all()
	about = About.query.all()
	return render_template('vw_projects.html', get_project=get_project, get_pro_img=get_pro_img, get_developers=get_developers, about=about)

@site.route('/stream', methods=['GET'])
@login_required
def stream():
	about = About.query.all()
	return render_template('coming_soon.html', about=about)

# ------------------ Functionalities ---------------------

# def validate(email, password):
# 	if user != None:
# 		return user.password
# 	return False

def random_num():
	return random.randrange(12828756, 99999999, 3)

def hash_password(password, ran_num, f_name):
	new_password = password + str(ran_num) + f_name
	return hashlib.md5(new_password).hexdigest()


@login_manager.user_loader
def load_user(id):
	return Person.query.get(int(id))