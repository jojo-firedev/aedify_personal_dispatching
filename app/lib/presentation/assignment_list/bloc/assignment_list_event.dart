part of 'assignment_list_bloc.dart';

@immutable
sealed class AssignmentListEvent {}

/// Trigger Fetch of the list
class AssignmentLoadEvent extends AssignmentListEvent {}

/// Delete Assignment based of the ID, updates the table on device
class AssignmentDeleteEvent extends AssignmentListEvent {
  final int id;

  AssignmentDeleteEvent(this.id);
}
