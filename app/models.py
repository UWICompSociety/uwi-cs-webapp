import os

from app import db, app
from flask import url_for
from flask_admin import BaseView, expose, AdminIndexView, form
from jinja2 import Markup
from flask_admin.form import rules
from flask_admin.contrib import sqla
from werkzeug.utils import secure_filename

file_path = app.config['UPLOAD_FOLDER']

class MyView(AdminIndexView):
	@expose('/')
	def index(self):
		return self.render('auth/templates/index.html')

class Person(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	firstname = db.Column(db.String(30))
	lastname= db.Column(db.String(30))
	email = db.Column(db.String(35))
	pass_num = db.Column(db.Integer)
	pass_hash = db.Column(db.Unicode(255))
	status = db.Column(db.String(6))

	def is_authenticated(self):
		return True

	def is_active(self):
		return True

	def is_anonymous(self):
		return False

	def get_id(self):
		try:
			return unicode(self.id)  # python 2 support
		except NameError:
			return str(self.id)  # python 3 support

	def __init__(self, firstname, lastname, email, pass_num, pass_hash, status):
		self.firstname = firstname
		self.lastname = lastname
		self.email = email
		self.pass_num = pass_num
		self.pass_hash = pass_hash
		self.status = status


class About(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	mission = db.Column(db.Text, nullable=False)

	def __unicode__(self):
		return self.img_name

class Carousel(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.Unicode(70))
	description = db.Column(db.Text, nullable=False)
	image = db.Column(db.Unicode(128))

	def __unicode__(self):
		return self.name

class News(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	title = db.Column(db.Unicode(70))
	detail = db.Column(db.Text, nullable=False)
	image = db.Column(db.Unicode(128))

	def __unicode__(self):
		return self.title

class Project(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	pro_name = db.Column(db.Unicode(70))
	detail = db.Column(db.Text, nullable=False)
	image = db.Column(db.Unicode(128))

	def __unicode__(self):
		return self.pro_name

class ProjectView(sqla.ModelView):
	def _list_thumbnail(view, context, model, name):
		if not model.image:
			return ''
		return Markup('<img src="%s">' % url_for('static', filename='uploads/' + form.thumbgen_filename(model.image)))

	column_formatters = { 'image': _list_thumbnail }

	form_extra_fields = { 'image': form.ImageUploadField('Project', base_path=file_path, thumbnail_size=(100, 100, True)) }


class NewsView(sqla.ModelView):
	def _list_thumbnail(view, context, model, name):
		if not model.image:
			return ''
		return Markup('<img src="%s">' % url_for('static', filename='uploads/' + form.thumbgen_filename(model.image)))

	column_formatters = { 'image': _list_thumbnail }

	form_extra_fields = { 'image': form.ImageUploadField('News', base_path=file_path, thumbnail_size=(100, 100, True)) }


class CarouselView(sqla.ModelView):
	def _list_thumbnail(view, context, model, name):
		if not model.image:
			return ''
		return Markup('<img src="%s">' % url_for('static', filename='uploads/' + form.thumbgen_filename(model.image)))

	column_formatters = { 'image': _list_thumbnail }

	form_extra_fields = { 'image': form.ImageUploadField('Carousel', base_path=file_path, thumbnail_size=(100, 100, True)) }