from django.shortcuts import render
from feedback.models import Feedback


# Create your views here.
def feedback(request):
    if request.method=='POST':
        obj=Feedback()
        obj.movie_name = request.POST.get('mname')
        obj.year= request.POST.get('year')
        obj.discription= request.POST.get('dis')
        obj.date= request.POST.get('date')
        obj.rating= request.POST.get('rating')
        obj.save()
    return render(request,'feedback/feedback.html')


def viewfeedback(request):
    ob=Feedback.objects.all()
    context={
        'kk':ob,
    }
    return render(request,'feedback/viewfeedback.html',context)

def replay(request,idd):
    if request.method=='POST':
        obb=Feedback.objects.get(f_id=idd)
        obb.reply=request.POST.get('rply')
        obb.save()
        return viewfeedback(request)
    return render(request,'feedback/reply.html')

