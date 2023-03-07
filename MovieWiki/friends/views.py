from django.shortcuts import render
from friends.models import Friends
from user.models import User
# Create your views here.
def post(request):

    if request.method == 'POST':
        obj = Friends()
        obj.liked = request.POST.get('like')
        obj.name = request.POST.get('name')
        obj.watched = request.POST.get('watch')
        obj.u_id=1
        obj.status="pending"
        obj.save()
    return render(request, 'friends/friends.html')



def viewfrnds(request):
    ob=Friends.objects.all()
    context={
        'kc':ob,
    }
    return render(request,'friends/viewfriends.html',context)

def accept(request,idd):
    ob=Friends.objects.get(fr_id=idd)
    ob.status="accepted"
    ob.save()
    return viewfrnds(request)


def reject(request,idd):
    ob = Friends.objects.get(fr_id=idd)
    ob.status = "rejected"
    ob.save()

    return viewfrnds(request)

def us_view(request):
    if request.method == "POST":
        vv = request.POST.get('lop')
        obj = Friends.objects.filter(u__username__istartswith=vv)
        context = {
            'x': obj
        }
        return render(request, 'friends/searchfriends.html',context)
    else:
        obj = Friends.objects.all()
        context = {
            'x': obj
        }
        return render(request, 'friends/searchfriends.html',context)