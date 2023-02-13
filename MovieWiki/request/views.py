from django.shortcuts import render
from request.models import Request
# Create your views here.
def rqst(request):
    if request.method == 'POST':
        obj = Request()
        obj.movie_name = request.POST.get('mname')
        obj.release_year = request.POST.get('year')
        obj.language = request.POST.get('lang')
        obj.save()
    return render(request,'request/request.html')


def viewrqst(request):
    ob = Request.objects.all()
    context = {
        'kk': ob,
    }
    return render(request,'request/viewrequest.html',context)
