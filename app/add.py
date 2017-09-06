from app import admin, db
from models import About, Person, ProjectView, Project, CarouselView, Carousel, NewsView, News
from flask_admin.contrib.sqla import ModelView

admin.add_view(ModelView(About, db.session))
admin.add_view(NewsView(News, db.session))
admin.add_view(CarouselView(Carousel, db.session))
admin.add_view(ProjectView(Project, db.session))
admin.add_view(ModelView(Person, db.session))