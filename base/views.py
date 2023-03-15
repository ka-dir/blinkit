from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from .models import Room, Topic, Message
from .forms import RoomForm
from django.db.models import Q
from django.contrib.auth.models import User
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
    topics = Topic.objects.all()
    # rooms_count = Room.objects.count()
    rooms_count = rooms.count()
    context = {'rooms': rooms, 'topics': topics, 'rooms_count': rooms_count}
    return render(request, 'base/home.html', context)


@login_required(login_url='login')
def create_room(request):
    form = RoomForm()
    if request.method == "POST":
        # print(request.POST)
        form = RoomForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
    context = {'form': form}
    return render(request, 'base/room-form.html', context)


@login_required(login_url='login')
def update_room(request, pk):
    room = Room.objects.get(id=pk)
    form = RoomForm(instance=room)
    if request.user != room.host:
        return HttpResponse('unauthorized')
    if request.method == "POST":
        # print(request.POST)
        form = RoomForm(request.POST, instance=room)
        if form.is_valid():
            form.save()
            return redirect('home')
    context = {'form': form}
    return render(request, 'base/room-form.html', context)


def room(request, pk):
    room = Room.objects.get(id=pk)
    room_messages = room.message_set.all().order_by('-created_at')
    if request.method == 'POST':
        msgs = Message.objects.create(
            user=request.user,
            room=room,
            body=request.POST.get('body')
        )
        return redirect('room', pk=room.id)
    context = {'room': room, 'room_messages': room_messages}
    return render(request, 'base/room.html', context)


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
        username = request.POST.get('username').lower()
        password = request.POST.get('password')
        try:
            user = User.objects.get(username=username)
        except:
            messages.error(request, 'username does not exist')
        user = authenticate(request, username=username, password=password)
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
    form = UserCreationForm()
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
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
