from datetime import date

from django.views.generic.base import TemplateView
from .models import Post
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView

from django.shortcuts import get_object_or_404, render

class BlogView(ListView):
  template_name = 'blog/index.html'
  model = Post
  context_object_name = 'posts'

  def get_queryset(self):
      overrided_queryset = super().get_queryset().order_by('-date')[:3]
      return overrided_queryset

class PostsView(ListView):
  template_name = 'blog/posts.html'
  model = Post
  context_object_name = 'posts'
  ordering = ['-date', 'title']


class PostView(DetailView):
  template_name = 'blog/post.html'
  model = Post

  def get_context_data(self, **kwargs):
      context = super().get_context_data(**kwargs)
      context['post_tags'] = self.object.tags.all()
      return context


# def blog(request):
#     posts = Post.objects.all().order_by('-date')[:3]
#     posts_tags = []

#     # for post in posts:
#     #   posts.tags = post.tags.all()

#     return render(request, "blog/index.html", {
#       "posts": posts,
#       # "post_tags": posts_tags
#     })

# def posts(request):
#     all_posts = Post.objects.all().order_by('-date')
#     return render(request, "blog/posts.html", {
#       "posts": all_posts
#     })

# def post(request, slug):
#     identified_post = get_object_or_404(Post, slug=slug)
#     return render(request, "blog/post.html", {
#       "post": identified_post,
#       "post_tags": identified_post.tags.all()
#     })
