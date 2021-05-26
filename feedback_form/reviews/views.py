from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.views.generic.edit import FormView, UpdateView
from django.views import View

from .forms import ReviewForm
from .models import Review
# Create your views here.

class FormReviewView(FormView):
    form_class = Review
    template_name = 'reviews/review.html'
    success_url = '/thank-you'


class FormUpdateReviewView(UpdateView):
    model = Review
    fields = '__all__'
    template_name = 'reviews/review.html'


class ReviewView(View):
    def get(self, request):
        form = ReviewForm()       
        
        return render(request, "reviews/review.html", {
            "form": form
        })

    def post(self, request):
        form = ReviewForm(request.POST)

        if form.is_valid():
            form.save()
            return HttpResponseRedirect("/thank-you")

        return render(request, "reviews/review.html", {
            "form": form
        })


class UpdateReviewView(View):
    def get(self, request, id):
        review = get_object_or_404(Review, id=id)
        form = ReviewForm(instance=review)
        
        return render(request, "reviews/update-review.html", {
            "form": form
        })

    def post(self, request, id):
        review = get_object_or_404(Review, id=id)
        form = ReviewForm(request.POST, instance=review)

        if form.is_valid():
            form.save()
            return HttpResponseRedirect("/thank-you")

        return render(request, "reviews/update-review.html", {
            "form": form
        })

# def review(request):
#     if request.method == 'POST':
#         form = ReviewForm(request.POST)

#         if form.is_valid():
#             form.save()
#             return HttpResponseRedirect("/thank-you")

#     else:
#         form = ReviewForm()

#     return render(request, "reviews/review.html", {
#         "form": form
#     })

# def update_review(request, id):
#     review = get_object_or_404(Review, id=id)
#     if request.method == 'POST':
#         form = ReviewForm(request.POST, instance=review)

#         if form.is_valid():
#             form.save()
#             return HttpResponseRedirect("/thank-you")

#     else:
#         form = ReviewForm(instance=review)

#     return render(request, "reviews/update-review.html", {
#         "form": form
#     })


def thank_you(request):
    return render(request, "reviews/thank_you.html")
