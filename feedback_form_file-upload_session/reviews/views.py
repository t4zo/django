from django.http import HttpResponseRedirect, request
from django.urls import reverse_lazy
from django.shortcuts import get_object_or_404, render
from django.views.generic.base import TemplateView
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView, DeleteView, FormView, UpdateView
from django.views import View

from .forms import ReviewForm
from .models import Review
# Create your views here.

class ListReviewView(ListView):
    template_name = 'reviews/index.html'
    model = Review
    context_object_name = 'reviews'

    def get_queryset(self) :
        base_query = super().get_queryset()
        updated_query = base_query.filter(rating__gt=2).order_by('-rating')
        return updated_query

# class ListReviewView(TemplateView):
#     template_name = 'reviews/index.html'

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['reviews'] = Review.objects.all()
#         return context

class DetailReviewView(DetailView):
    template_name = 'reviews/detail-review.html'
    model = Review
    # context_object_name = 'review'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        loaded_review = self.object
        favorite_id = self.request.session.get('favorite_review')
        context['is_favorite'] = favorite_id == str(loaded_review.id)
        return context


# class DetailReviewView(TemplateView):
#     template_name = 'reviews/detail-review.html'

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         review_id = kwargs['pk']
#         context['review'] = Review.objects.get(id=review_id)
#         return context


class CreateViewReviewView(CreateView):
    model = Review
    template_name = 'reviews/create-review.html'
    success_url = reverse_lazy('thank-you')
    form_class = ReviewForm # Optional
    # fields = '__all__' # Optional


# class FormReviewView(FormView):
#     form_class = ReviewForm
#     template_name = 'reviews/create-review.html'
#     success_url = reverse_lazy('thank-you')

#     def form_valid(self, form):
#         form.save()
#         return super().form_valid(form)


# class CreateReviewView(TemplateView):
#     template_name = 'reviews/create-review.html'

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['form'] = ReviewForm()
#         return context


# class CreateReviewView(View):
#     def get(self, request):
#         form = ReviewForm()       
        
#         return render(request, "reviews/create-review.html", {
#             "form": form
#         })

#     def post(self, request):
#         form = ReviewForm(request.POST)

#         if form.is_valid():
#             form.save()
#             return HttpResponseRedirect("reviews/thank-you")

#         return render(request, "reviews/create-review.html", {
#             "form": form
#         })


class UpdateReviewView(View):
    def get(self, request, pk):
        review = get_object_or_404(Review, id=pk)
        form = ReviewForm(instance=review)
        
        return render(request, "reviews/update-review.html", {
            "form": form
        })

    def post(self, request, pk):
        review = get_object_or_404(Review, pk=pk)
        form = ReviewForm(request.POST, instance=review)

        if form.is_valid():
            form.save()
            return HttpResponseRedirect("/reviews/thank-you")

        return render(request, "reviews/update-review.html", {
            "form": form
        })


class UpdateViewReviewView(UpdateView):
    model = Review
    fields = '__all__'
    template_name = 'reviews/update-review.html'


class UpdateFormReviewView(FormView):
    form_class = Review
    template_name = 'reviews/review.html'
    success_url = reverse_lazy('thank-you')

    def form_valid(self, form):
        # form.save()
        return super().form_valid(form)


class DeleteViewReviewView(DeleteView):
    model = Review
    template_name = 'reviews/delete-review.html'
    success_url = reverse_lazy('list-review')


class FavoriteView(View):
    def post(self, request):
        review_id = request.POST["review_id"]
        request.session["favorite_review"] = review_id
        return HttpResponseRedirect(reverse_lazy('detail-review', args=[review_id]))


# class DeleteReviewView(TemplateView):
#     template_name = 'reviews/delete-review.html'
    
#     def post(self, request, pk):
#         review = get_object_or_404(Review, id=pk)
#         review.delete()
        
#         return HttpResponseRedirect('/reviews')

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         review_id = kwargs['pk']
#         context['review'] = Review.objects.get(id=review_id)
#         return context


class ThankYouView(TemplateView):
    template_name = 'reviews/thank-you.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['message'] = 'My message'
        return context


# Functions Views

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


# def thank_you(request):
#     return render(request, "reviews/thank_you.html")
