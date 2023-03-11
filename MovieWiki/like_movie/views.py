from django.shortcuts import render
from like_movie.models import LikeMovie
from movie.models import Movie
from user.models import User

# Create your views here.
def likemovie(request):
    ss=request.session["uid"]
    obj=Movie.objects.all()
    context={
        'x':obj,
    }
    if request.method == 'POST':
        obj = LikeMovie()
        obj.status = request.POST.get('like')
        obj.u_id = ss
        obj.m_id = request.POST.get('mname')
        obj.save()
    return render(request,'like_movie/like_movie.html',context)


def viewlikemovie(request):
    ss=request.session["uid"]
    ob=LikeMovie.objects.filter(status='yes',u_id=ss)
    context={
        'km':ob,
    }

    return render(request,'like_movie/viewlikemovie.html',context)
