from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from .models import Room, Topic, Message, User
from .forms import RoomForm, UserForm, MyUserCreationForm
from django.db.models import Q
# from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm


# Create your views here.

def home(request):
    q = request.GET.get('q') if request.GET.get('q') != None else ''
    rooms = Room.objects.filter(
        Q(topic__name__icontains=q) |
        Q(name__icontains=q) |
        Q(description__icontains=q)
    )
    topics = Topic.objects.all()[0:5]
    # rooms_count = Room.objects.count()
    rooms_count = rooms.count()
    room_messages = Message.objects.all().filter(Q(room__topic__name__icontains=q))
    context = {'rooms': rooms, 'topics': topics, 'rooms_count': rooms_count, 'room_messages': room_messages}
    return render(request, 'base/home.html', context)


@login_required(login_url='login')
def create_room(request):
    page = 'create'
    topics = Topic.objects.all()
    form = RoomForm()
    if request.method == "POST":
        topic_name = request.POST.get('topic')
        topic, created = Topic.objects.get_or_create(name=topic_name)
        Room.objects.create(
            host=request.user,
            topic=topic,
            name=request.POST.get('name'),
            description=request.POST.get('description'),
        )

        return redirect('home')
    context = {'form': form, 'topics': topics, 'page': page}
    return render(request, 'base/room-form.html', context)


@login_required(login_url='login')
def update_room(request, pk):
    page = 'update'
    room = Room.objects.get(id=pk)
    form = RoomForm(instance=room)
    topics = Topic.objects.all()
    if request.user != room.host:
        return HttpResponse('unauthorized')
    if request.method == "POST":
        topic_name = request.POST.get('topic')
        topic, created = Topic.objects.get_or_create(name=topic_name)
        room.name = request.POST.get('name')
        room.topic = topic
        room.description = request.POST.get('description')
        room.save()
        return redirect('home')
    context = {'form': form, 'topics': topics, 'room': room, 'page': page}
    return render(request, 'base/room-form.html', context)


def room(request, pk):
    room = Room.objects.get(id=pk)
    room_messages = room.message_set.all().order_by('-created_at')  # one-to-many relationship
    particpants = room.participants.all()  # many-to-many relationship
    if request.method == 'POST':
        msgs = Message.objects.create(
            user=request.user,
            room=room,
            body=request.POST.get('body')
        )
        room.participants.add(request.user)
        return redirect('room', pk=room.id)
    context = {'room': room, 'room_messages': room_messages, 'particpants': particpants}
    return render(request, 'base/room.html', context)


def user_profile(request, pk):
    user = User.objects.get(id=pk)
    rooms = user.room_set.all()
    room_messages = user.message_set.all()
    topics = Topic.objects.all()
    context = {'user': user, 'rooms': rooms, 'room_messages': room_messages, 'topics': topics}
    return render(request, 'base/profile.html', context)


@login_required(login_url='login')
def delete_room(request, pk):
    room = Room.objects.get(id=pk)
    if request.method == 'POST':
        room.delete()
        return redirect('home')
    return render(request, 'base/delete-temps.html', {'obj': room})


def login_user(request):
    page = 'login'
    if request.user.is_authenticated:
        return redirect('home')
    if request.method == "POST":
        email = request.POST.get('email').lower()
        password = request.POST.get('password')
        try:
            user = User.objects.get(email=email)
        except:
            messages.error(request, 'username does not exist')
        user = authenticate(request, email=email, password=password)
        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.error(request, 'username or password does not exist')

    context = {'page': page}
    return render(request, 'base/login-register.html', context)


def logout_user(request):
    logout(request)
    return redirect('home')


def register_user(request):
    form = MyUserCreationForm()
    if request.method == 'POST':
        form = MyUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.username = user.username.lower()
            user.save()
            login(request, user)  # to sign in the user
            return redirect('home')
        else:
            messages.error(request, 'Oops! Error Occurred')
    page = 'register'
    context = {'page': page, 'form': form}
    return render(request, 'base/login-register.html', context)


@login_required(login_url='login')
def delete_message(request, pk):
    room_msgs = Message.objects.get(id=pk)
    if request.method == 'POST':
        room_msgs.delete()
        return redirect('home')
    return render(request, 'base/delete-temps.html', {'obj': room_msgs})


@login_required(login_url='login')
def update_user(request):
    user = request.user
    form = UserForm(instance=user)
    if request.method == 'POST':
        form = UserForm(request.POST, request.FILES, instance=user)
        if form.is_valid():
            form.save()
            return redirect('profile', pk=user.id)
    context = {'form': form}
    return render(request, 'base/update-user.html', context)


def topics_page(request):
    q = request.GET.get('q') if request.GET.get('q') != None else ''
    topics = Topic.objects.filter(name__icontains=q)
    context = {'topics': topics}
    return render(request, 'base/topics.html', context)


def activities_page(request):
    room_messages = Message.objects.all()
    context = {'room_messages': room_messages}
    return render(request, 'base/activities.html', context)
