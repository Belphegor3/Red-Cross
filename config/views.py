from django.shortcuts import render
from django.http import JsonResponse

def reception(request):
    return render(request, 'reception.html')

def chatbot(request):
    return render(request, 'chatbot.html')
