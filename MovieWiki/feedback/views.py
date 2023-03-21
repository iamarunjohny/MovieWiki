from django.shortcuts import render
from feedback.models import Feedback
import datetime
from movie.models import Movie


# Create your views here.
def feedback(request):
    obk=Movie.objects.all()
    context={
        'x':obk,
    }
    ss= request.session['uid']
    if request.method=='POST':
        obj=Feedback()
        obj.m_id=request.POST.get('mname')
        # obj.year= request.POST.get('year')
        obj.discription= request.POST.get('dis')
        obj.date= datetime.datetime.today()
        obj.rating= request.POST.get('rating')
        obj.u_id=ss
        obj.save()
    return render(request,'feedback/feedback.html',context)


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



def viewrply(request):
    ss=ss= request.session['uid']
    ob=Feedback.objects.filter(u_id=ss)
    context={
        'rp':ob,
    }
    return render(request,'feedback/viesreply.html',context)

