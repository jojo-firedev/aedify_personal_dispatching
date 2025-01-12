part of 'assignment_list_bloc.dart';

@immutable
sealed class AssignmentListState {}

final class AssignmentListInitial extends AssignmentListState {}

final class AssignmentListLoading extends AssignmentListState {}

final class AssignmentListLoaded extends AssignmentListState {
  final List<Assignment> assignments;

  AssignmentListLoaded(this.assignments);
}
