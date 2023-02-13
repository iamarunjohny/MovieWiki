from django.conf.urls import url
from user import views

urlpatterns=[
    url('usr/',views.user),
    url('viewu/',views.viewfrnds),
    url('update/(?P<idd>\w+)',views.update,name='update'),
    url('adminmanage/',views.view_admin),
    url('userapprove/(?P<idd>\w+)',views.approve,name='aprove'),
    url('userreject/(?P<idd>\w+)',views.reject,name='reject'),


]