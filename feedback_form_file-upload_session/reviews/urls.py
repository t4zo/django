from django.urls import path

from . import views

urlpatterns = [
     path("", views.ListReviewView.as_view(), name='list-review'),
     path("create", views.CreateViewReviewView.as_view(), name='create-review'),
     path("detail/<int:pk>", views.DetailReviewView.as_view(), name='detail-review'),
     path("update/<int:pk>", views.UpdateViewReviewView.as_view(), name='update-review'),
     path("delete/<int:pk>", views.DeleteViewReviewView.as_view(), name='delete-review'),
     path("favorite", views.FavoriteView.as_view(), name='favorite-review'),
     path("thank-you", views.ThankYouView.as_view(), name='thank-you'),
]
