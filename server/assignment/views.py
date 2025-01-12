from rest_framework import viewsets

from .serializers import AssignmentCreateUpdateSerializer, AssignmentSerializer, PersonnelSerializer, ProjectSerializer
from .models import Assignment, Personnel, Project

class PersonnelViewSet(viewsets.ModelViewSet):
    queryset = Personnel.objects.all()
    serializer_class = PersonnelSerializer

class ProjectViewSet(viewsets.ModelViewSet):
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer

class AssignmentViewSet(viewsets.ModelViewSet):
    queryset = Assignment.objects.all()
    
    def get_serializer_class(self):
        if self.action in ['create', 'update', 'partial_update']:
            return AssignmentCreateUpdateSerializer
        return AssignmentSerializer
