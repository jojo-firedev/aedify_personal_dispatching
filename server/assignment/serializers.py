from rest_framework import serializers
from django.conf import settings

from .models import Assignment, Personnel, Project

class PersonnelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Personnel
        fields = ["id", "name"]

class ProjectSerializer(serializers.ModelSerializer):
    class Meta:
        model= Project
        fields= ["id", "name"]

class AssignmentSerializer(serializers.ModelSerializer):
    status = serializers.ChoiceField(choices=Assignment.STATUS_CHOICES)
    personnel = PersonnelSerializer(read_only=True)
    project = ProjectSerializer(read_only=True)
    class Meta:
        model = Assignment
        fields = [
            'id',
            'personnel',
            'project',
            'role',
            'start_time',
            'end_time',
            'status', 
        ]
