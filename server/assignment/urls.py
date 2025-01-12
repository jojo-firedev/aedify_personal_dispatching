from django.urls import path
from . import views

urlpatterns = [
    path('personnel/', views.PersonnelListCreateAPIView.as_view(), name="personnel-list"),
    path(
        "personnel/<int:id>/",
        views.PersonnelRetrieveUpdateDestroyAPIView.as_view(),
        name="personnel-detail",
    ),
    path('project/', views.ProjectListCreateAPIView.as_view(), name="project-list"),
    path(
        "project/<int:id>/",
        views.ProjectRetrieveUpdateDestroyAPIView.as_view(),
        name="project-detail",
    ),
    path('assignment/', views.AssignmentListCreateAPIView.as_view(), name="assignment-list"),
    path(
        "assignment/<int:id>/",
        views.AssignmentRetrieveUpdateDestroyAPIView.as_view(),
        name="assignment-detail",
    ),
]
