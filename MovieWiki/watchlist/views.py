from django.shortcuts import render
from watchlist.models import Watchlist
from movie.models import Movie
from user.models import User

# Create your views here.
def watchlist(request):
    obj=Movie.objects.all()
    obj1=User.objects.all()
    context={
        'x':obj,
        'y':obj1,
    }
    if request.method == 'POST':
        obj = Watchlist()
        obj.m_id = request.POST.get('mname')
        obj.u_id = request.POST.get('uname')
        obj.save()
    return render(request,'watchlist/watchlist.html',context)


def viewwatchlist(request):
    ob=Watchlist.objects.all()
    context={
        'kk':ob,
    }
    return render(request,'watchlist/viewmarkwatchlist.html',context)
