part of 'assignment_list_bloc.dart';

@immutable
sealed class AssignmentListEvent {}

class AssignmentLoadEvent extends AssignmentListEvent {}

class AssignmentUpdateEvent extends AssignmentListEvent {
  final int id;

  AssignmentUpdateEvent(this.id);
}

class AssignmentDeleteEvent extends AssignmentListEvent {
  final int id;

  AssignmentDeleteEvent(this.id);
}
