from django.conf.urls import url
from watched import views

urlpatterns=[
    url('watched/',views.watched),
    url('viewwtd/',views.viewwatched)
]