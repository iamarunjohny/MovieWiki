from django.conf.urls import url
from watchlist import views

urlpatterns=[
    url('watchlist/',views.watchlist),
    url('viewwatli/',views.viewwatchlist)
]