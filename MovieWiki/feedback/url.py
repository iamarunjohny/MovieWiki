from django.conf.urls import url
from feedback import views

urlpatterns=[
    url('feedback/',views.feedback),
    url('viewfeed/',views.viewfeedback),
    url('postreply/(?P<idd>\w+)',views.replay,name='rpy')
]