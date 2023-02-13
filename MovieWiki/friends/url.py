from django.conf.urls import url
from friends import views

urlpatterns=[
    url('friends/',views.post),
    url('viewf/',views.viewfrnds),
    url('accept/(?P<idd>\w+)',views.accept,name='accept'),
    url('reject/(?P<idd>\w+)',views.reject,name='reject'),
]