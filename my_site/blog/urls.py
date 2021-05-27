from django.urls import path

from . import views

urlpatterns = [
  path('', views.BlogView.as_view(), name='blog'),
  path('posts', views.PostsView.as_view(), name='posts'),
  path('posts/<slug:slug>/', views.PostView.as_view(), name='post')
]