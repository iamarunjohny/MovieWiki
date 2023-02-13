from django.shortcuts import render
from source.models import Source
from movie.models import Movie

# Create your views here.
def source(request):
    obj=Movie.objects.all()
    context={
        'x':obj,
    }
    if request.method == 'POST':
        obj = Source()
        obj.source = request.POST.get('src')
        obj.m_id = request.POST.get('mname')
        obj.save()
    return render(request,'source/source.html',context)
