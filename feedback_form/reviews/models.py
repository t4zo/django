from django.db import models
from django.urls import reverse_lazy

# Create your models here.

class Review(models.Model):
  user_name = models.CharField(max_length=100)
  review_text = models.TextField()
  rating = models.IntegerField()

  def get_absolute_url(self):
        return reverse_lazy('update-review', kwargs={'pk': self.pk})

  def __str__(self):
      return self.user_name