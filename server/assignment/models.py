from django.db import models
from django.conf import settings

class Personnel(models.Model):
    name = models.CharField(max_length=255)

class Project (models.Model):
    name = models.CharField(max_length=255)

class Assignment(models.Model):
    STATUS_CHOICES = [
        ('active', 'Active'),
        ('completed', 'Completed'),
        ('cancelled', 'Cancelled'),
    ]
    
    personnel = models.ForeignKey(Personnel, on_delete=models.CASCADE) # identifier for the personnel
    project = models.ForeignKey(Project, on_delete=models.CASCADE) # identifier for the project
    role = models.CharField(max_length=80) # required, e.g., 'Foreman', 'Laborer', etc.
    start_time = models.DateField() # when the assignment starts
    end_time = models.DateField(blank=True, null=True) # when the assignment ends, optional
    status = models.CharField(
        max_length=10,
        choices=STATUS_CHOICES,
        default='active',
    )  # e.g., 'Active', 'Completed', 'Cancelled'
