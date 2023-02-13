from django.conf.urls import url
from temp import views
urlpatterns=[
    url('hm/',views.home),
    url('ad/',views.admin),
    url('usr/',views.user)
]
