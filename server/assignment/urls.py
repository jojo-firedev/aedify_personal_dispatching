from django.urls import path, include

from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'personnel', views.PersonnelViewSet)
router.register(r'project', views.ProjectViewSet)
router.register(r'assignment', views.AssignmentViewSet)

# URL patterns
urlpatterns = [
    path('', include(router.urls)),  # Include DRF router-generated URLs
]