from django.conf.urls import url
from like_movie import views

urlpatterns=[
    url('likemovie/',views.likemovie),
    url('viewlm/',views.viewlikemovie)
]