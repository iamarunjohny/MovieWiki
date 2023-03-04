from django.shortcuts import render
from login.models import Login
from django.http import HttpResponseRedirect
# Create your views here.
def login(request):
    if request.method=='POST':
        uname=request.POST.get('uname')
        passw=request.POST.get('passw')
        obj=Login.objects.filter(username=uname,password=passw,status='approve')
        tp = ""
        for ob in obj:
            tp=ob.type
            uid=ob.uid
            if tp== "admin":
                request.session['uid']=uid
                return HttpResponseRedirect('/temp/admin/')
            elif tp == "user":
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/user/')
            # elif tp == "service":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/service.html')
            # elif tp == "police":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/user.html')
            # elif tp == "pwd":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/user.html')
        else:
            objlist="Username or Password incorrect...Please try again...!"
            context={
                'msg':objlist,
            }
            return render(request,'login/login.html',context)
    return render(request,'login/login.html')


