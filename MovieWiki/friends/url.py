from django.conf.urls import url
from friends import views

urlpatterns=[
    url('friends/(?P<idd>\w+)',views.post),
    url('viewf/',views.viewfrnds),
    url('ap/(?P<idd>\w+)',views.acceptusr,name='accp'),
    url('rj/(?P<idd>\w+)',views.rejectusr,name='rejj'),
    url('searchf/',views.us_view),

]