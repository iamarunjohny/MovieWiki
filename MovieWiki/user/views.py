from django.shortcuts import render
from user.models import User


# Create your views here.
def user(request):
    if request.method == 'POST':
        obj = User()
        obj.username = request.POST.get('uname')
        obj.password = request.POST.get('passw')
        obj.dob = request.POST.get('dob')
        obj.country = request.POST.get('country')
        obj.language = request.POST.get('lang')
        obj.mail_id = request.POST.get('email')
        obj.phone = request.POST.get('phone')
        obj.save()
    return render(request,'user/user.html')


def viewfrnds(request):
    ob=User.objects.all()
    context={
        'kk':ob,
    }
    return render(request,'user/viewuser.html',context)

def update(request,idd):
    ob = User.objects.get(u_id=idd)
    context = {
        'kk': ob,
    }
    if request.method == 'POST':
        obj = User()
        obj.username = request.POST.get('uname')
        obj.password = request.POST.get('passw')
        obj.dob = request.POST.get('dob')
        obj.country = request.POST.get('country')
        obj.language = request.POST.get('lang')
        obj.mail_id = request.POST.get('email')
        obj.phone = request.POST.get('phone')
        obj.save()
    return render(request,'user/updateprofile.html',context)

def view_admin(request):
    obj=User.objects.all()
    context={
        'x':obj,
    }
    return render(request,'user/adminmanage.html',context)

def approve(request,idd):
    obj=User.objects.get(u_id=idd)
    obj.status="approve"
    obj.save()
    return view_admin(request)


def reject(request,idd):
    obj=User.objects.get(u_id=idd)
    obj.status="reject"
    obj.save()
    return view_admin(request)