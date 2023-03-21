from django.shortcuts import render
from movie.models import Movie
from django.core.files.storage import FileSystemStorage
# Create your views here.
def movie(request):
    if request.method == 'POST':
        obj = Movie()
        obj.name = request.POST.get('mname')
        obj.year = request.POST.get('year')
        obj.director = request.POST.get('dir')
        obj.discription = request.POST.get('dis')
        obj.rating = request.POST.get('rating')
        obj.runtime = request.POST.get('rtime')
        obj.likes = request.POST.get('like')
        obj.platform = request.POST.get('src')
        obj.trailer = request.POST.get('trailer')
        # obj.poster = request.POST.get('cover')
        myfile=request.FILES['cover']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        obj.poster=myfile.name
        obj.language = request.POST.get('lang')
        obj.category = request.POST.get('cat')
        obj.save()
    return render(request,'movie/movie.html')


def viewmovie(request):
    ob=Movie.objects.all()
    context={
        'kt':ob,
    }

    return render(request,'movie/viewmovie.html',context)

def viewmovieadmin(request):
    ob=Movie.objects.all()
    context={
        'kt':ob,
    }

    return render(request,'movie/viewadmin.html',context)