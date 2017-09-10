from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, validators
from wtforms.validators import InputRequired

class Sign_in(FlaskForm):
	"""docstring for sign_in"""
	email = StringField('Email Address', validators=[InputRequired()])
	password = PasswordField('Password', [validators.DataRequired()])

	# def __init__(self, arg):
	# 	super(sign_in, self).__init__()
	# 	self.arg = arg
		
class Sign_up(FlaskForm):
	"""docstring for sign_up"""

	firstname = StringField('Firstname', validators=[InputRequired()])
	lastname = StringField('Lastname', validators=[InputRequired()])
	email = StringField('Email Address', validators=[InputRequired()])
	status = StringField('Status', validators=[InputRequired()])
	password = PasswordField('Password', [validators.DataRequired(), validators.EqualTo('confirm', message='Passwords must match')])
	confirm = PasswordField('Confirm Password')

	# def __init__(self, arg):
	# 	super(sign_up, self).__init__()
	# 	self.arg = arg
		