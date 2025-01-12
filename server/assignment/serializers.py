from rest_framework import serializers
from django.conf import settings

from .models import Assignment, Personnel, Project

class PersonnelSerializer(serializers.ModelSerializer):
    """
        Simple Serializer for primary use in foreignkeys
    """
    
    class Meta:
        model = Personnel
        fields = ["id", "name"]

class ProjectSerializer(serializers.ModelSerializer):
    """
        Simple Serializer for primary use in foreignkeys
    """
    
    class Meta:
        model= Project
        fields= ["id", "name"]

class AssignmentSerializer(serializers.ModelSerializer):
    """
        Serializer for read operation on assignments 
        with embedded serializer to the foreignkeys
    """
    
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


class AssignmentCreateUpdateSerializer(serializers.ModelSerializer):
    """
        Separate Serializer for create or update Assignments 
        without the embedded serializer
    """
    
    status = serializers.ChoiceField(choices=Assignment.STATUS_CHOICES)
    
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
