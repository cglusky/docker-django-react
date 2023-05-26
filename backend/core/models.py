from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    pass


class ToDo(models.Model):
    todo = models.CharField(max_length=100)

    def __str__ (self) :
        return self.todo
