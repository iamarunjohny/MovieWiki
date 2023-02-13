from django.shortcuts import render
from watched.models import Watched
from movie.models import Movie

# Create your views here.
def watched(request):
    if request.method == 'POST':
        obj = Watched()
        obj.m_id = 1


        obj.save()
    return render(request,'watched/watched.html')


def viewwatched(request):
    ob=Watched.objects.all()
    context={
        'kk':ob,
    }
    return render(request,'watched/viewwatched.html',context)
