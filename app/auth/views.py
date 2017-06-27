from flask import Blueprint, render_template

mod = Blueprint('auth', __name__, template_folder='templates')

@mod.route('/adminConfig')
def admin_config():
	return '<h1>Ok this thing woks<h1>'