from django.conf.urls import url
from movie import views

urlpatterns=[
    url('movie/',views.movie),
    url('viewmv/',views.viewmovie),
    url('adview/',views.viewmovieadmin),
]