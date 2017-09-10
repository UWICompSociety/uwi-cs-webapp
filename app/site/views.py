from app import app, db, login_manager
from flask import Blueprint, render_template, url_for, request, redirect, session
from flask_login import login_user, logout_user, current_user, login_required
from app.models import About, Person, ProjectView, Project, CarouselView, Carousel, NewsView, News
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
			
			return redirect(url_for('index'))
	display = 1
	return render_template("signIn.html", display = display, form = form)


@site.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
	form = Sign_up()
	print('######## GOT IN #########')
	if request.method == 'POST':

		print('######## GOT IN POST #########')
		firtname = request.form['firstname']
		lastname = request.form['lastname']
		email = request.form['email']
		status = request.form['status']
		password = request.form['password']
		confirm = request.form['confirm']

		ran_number = random_num()
		hash_pass = hash_password(password, ran_number, firstname)
		hash_confirm_pass = hash_password(confirm, ran_number, firstname)

		if hash_pass == hash_confirm_pass and Person.query.filter_by(email=email).first() is None:
			print('######## GOT IN #########')
			user = Person(firstname, lastname, email, ran_number, hash_pass, status)
			db.session.add(user)
			db.session.commit()

			return redirect(url_for('index'))
		else:
			return redirect(url_for('sign_up'))
	display = 2
	return render_template("signIn.html", display = display, form = form)


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
    return render_template('coming_soon.html')

@site.route('/news', methods=['GET'])
def news():
    return render_template('coming_soon.html')


@site.route('/projects', methods=['GET'])
def projects():
    return render_template('coming_soon.html')


@site.route('/stream', methods=['GET'])
@login_required
def stream():
    return render_template('coming_soon.html')

# ------------------ Functionalities ---------------------

# def validate(email, password):
# 	if user != None:
# 		return user.password
# 	return False

def random_num():
	return random.randrange(12828756, 99999999, 3)

def hash_password(password, ran_num, f_name):
	new_password = password + ran_num + f_name
	return hashlib.md5(new_password).hexdigest()