from django.shortcuts import render
from watched.models import Watched
from movie.models import Movie
from user.models import User

# Create your views here.
def watched(request):
    ss=request.session['uid']
    obk=Movie.objects.all()
    context={
        'x':obk,
    }
    if request.method == 'POST':
        obj = Watched()
        obj.m_id = request.POST.get('mname')
        obj.u_id=ss
        obj.save()
    return render(request,'watched/watched.html',context)


def viewwatched(request):
    ss=request.session['uid']
    ob=Watched.objects.filter(u_id=ss)
    context={
        'kk':ob,
    }
    return render(request,'watched/viewwatched.html',context)
