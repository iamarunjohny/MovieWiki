from django.http import HttpResponseRedirect
from django.shortcuts import render
from friends.models import Friends
from user.models import User
# Create your views here.
def post(request,idd):
    ss = request.session['uid']
    # obk=User.objects.all()
    # context={
    #     'x':obk,
    # }
    #
    # if request.method == 'POST':
    obj = Friends()
        # obj.liked = request.POST.get('like')
        # obj.name = request.POST.get('name')
        # obj.watched = request.POST.get('watch')
    obj.u_id=idd
    obj.status="pending"
    obj.uu_id=ss
    obj.save()
    return HttpResponseRedirect('/user/usrsrr/')
    # return render(request, 'friends/friends.html')



def viewfrnds(request):
    ss=request.session['uid']
    ob=Friends.objects.filter(uu_id=ss)
    context={
        'kc':ob,
    }
    return render(request,'friends/viewfriends.html',context)

def acceptusr(request,idd):
    ob=Friends.objects.get(fr_id=idd)
    ob.status="accepted"
    ob.save()
    return viewfrnds(request)


def rejectusr(request,idd):
    ob = Friends.objects.get(fr_id=idd)
    ob.status = "rejected"
    ob.save()

    return viewfrnds(request)

def us_view(request):
    ss=request.session['uid']
    if request.method == "POST":
        vv = request.POST.get('lop')
        obj = Friends.objects.filter(u__username__istartswith=vv,uu_id=ss)
        context = {
            'x': obj
        }
        return render(request, 'friends/searchfriends.html',context)
    else:
        obj = Friends.objects.filter(status='accepted',uu_id=ss)
        context = {
            'x': obj
        }
        return render(request, 'friends/searchfriends.html',context)