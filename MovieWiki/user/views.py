from django.shortcuts import render
from user.models import User
from login.models import Login
from django.http import HttpResponseRedirect


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

        obb=Login()
        obb.username = obj.username
        obb.password = obj.password
        obb.type = "user"
        obb.uid=obj.u_id
        obb.save()
        return HttpResponseRedirect('/login/ login/')


    return render(request,'user/user.html')


def viewfrnds(request):
    ss=request.session["uid"]
    ob=User.objects.filter(u_id=ss)
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

    
    ob=Login.objects.get(uid=idd,type='user')
    ob.status='approve'
    ob.save()
    return view_admin(request)


def reject(request,idd):
    obj=User.objects.get(u_id=idd)
    obj.status="reject"
    obj.save()
    return view_admin(request)