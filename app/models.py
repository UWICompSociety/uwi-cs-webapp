from . import db

class person(db.Model):
	id = db.Column(db.Integer,primary_key=True)
	name = db.Column(db.String(30))

admin.add_view(ModelView(person, db.session))