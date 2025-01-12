part of 'assignment_list_bloc.dart';

@immutable
sealed class AssignmentListState {}

/// shows loading animation
final class AssignmentListInitial extends AssignmentListState {}

/// shows loading animation
final class AssignmentListLoading extends AssignmentListState {}

/// Loaded state with a data table of all assignments
final class AssignmentListLoaded extends AssignmentListState {
  final List<Assignment> assignments;

  AssignmentListLoaded(this.assignments);
}
