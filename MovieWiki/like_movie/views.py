from django.shortcuts import render
from like_movie.models import LikeMovie
from movie.models import Movie
from user.models import User

# Create your views here.
def likemovie(request):
    obj=Movie.objects.all()
    context={
        'x':obj,
    }
    if request.method == 'POST':
        obj = LikeMovie()
        obj.status = request.POST.get('like')
        obj.u_id = 1
        obj.m_id = request.POST.get('mname')
        obj.save()
    return render(request,'like_movie/like_movie.html',context)


def viewlikemovie(request):
    ob=LikeMovie.objects.filter(status='yes')
    context={
        'km':ob,
    }

    return render(request,'like_movie/viewlikemovie.html',context)
