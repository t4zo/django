from django.urls import path

from . import views

urlpatterns = [
     path("", views.ReviewView.as_view()),
     path("<int:pk>", views.FormUpdateReviewView.as_view(), name='update-review'),
     path("thank-you", views.thank_you)
]
