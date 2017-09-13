from app import admin, db
from models import About, Person, ImageView, ProjectView, Project, CarouselView, Carousel, NewsView, News, ExecutivesView, Executives, MyModelView, Images
from flask_admin.contrib.sqla import ModelView

admin.add_view(MyModelView(About, db.session))
admin.add_view(NewsView(News, db.session))
admin.add_view(CarouselView(Carousel, db.session))
admin.add_view(MyModelView(Project, db.session))
admin.add_view(ImageView(Images, db.session))
admin.add_view(MyModelView(Person, db.session))
admin.add_view(ExecutivesView(Executives, db.session))