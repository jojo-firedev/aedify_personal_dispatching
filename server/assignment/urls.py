from django.urls import path
from .views import AssignmentListCreateAPIView, AssignmentRetrieveUpdateDestroyAPIView

urlpatterns = [
    path('',AssignmentListCreateAPIView.as_view(), name="assignment-list"),
    path(
        "<int:pk>/",
        AssignmentRetrieveUpdateDestroyAPIView.as_view(),
        name="assignment-detail",
    ),
]
