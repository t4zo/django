from django.shortcuts import render
from django.views import View
from django.http import HttpResponseRedirect, request
from django.views.generic.base import TemplateView
from django.views.generic.edit import CreateView, FormView
from django.views.generic import ListView

from .forms import ProfileForm
from .models import UserProfile

# Create your views here

class CreateProfileView(CreateView):
    template_name = "profiles/create_profile.html"
    model = UserProfile
    fields = "__all__"
    success_url = "/profiles"

# Using View
# class CreateProfileView(View):
#     def get(self, request):
#         return render(request, 'profiles/create_profile.html', {
#             'form': ProfileForm
#         })

#     def post(self, request):
#         submitted_form = ProfileForm(request.POST, request.FILES)
#         if(submitted_form.is_valid()):
#             profile = UserProfile(image = request.FILES['user_image'])
#             profile.save()
#             return render(request, 'profiles/create_profile.html', {
#                 'form': submitted_form
#             })

#     def form_valid(self, form):
#         profile = UserProfile(image = self.request.FILES['user_image'])
#         profile.save()
#         return super().form_valid(form)


# Test using TemplateView and FormView
# class CreateProfileView(TemplateView):
#     template_name = "profiles/create_profile.html"
#     success_url = "profiles/create_profile.html"
    
#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['form'] = ProfileForm()
#         return context

#     def form_valid(self, form):
#         profile = UserProfile(image = self.request.FILES['user_image'])
#         profile.save()
#         return super().form_valid(form)


class ProfilesView(ListView):
    model = UserProfile
    template_name = "profiles/user_profiles.html"
    context_object_name = "profiles"

