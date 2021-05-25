from datetime import date
from .models import Post

from django.shortcuts import get_object_or_404, render

def blog(request):
    posts = Post.objects.all().order_by('-date')[:3]
    posts_tags = []

    # for post in posts:
    #   posts.tags = post.tags.all()

    return render(request, "blog/index.html", {
      "posts": posts,
      # "post_tags": posts_tags
    })

def posts(request):
    all_posts = Post.objects.all().order_by('-date')
    return render(request, "blog/posts.html", {
      "posts": all_posts
    })

def post(request, slug):
    identified_post = get_object_or_404(Post, slug=slug)
    return render(request, "blog/post.html", {
      "post": identified_post,
      "post_tags": identified_post.tags.all()
    })
