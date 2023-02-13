from django.conf.urls import url
from request import views

urlpatterns=[
    url('reqst/',views.rqst),
    url('viewrq/',views.viewrqst)
]