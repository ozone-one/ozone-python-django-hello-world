# pages/urls.py
from django.urls import path
from .views import homePageView, branchView

urlpatterns = [
    path('', homePageView, name='home'),
    path('branch', branchView, name='home')

]