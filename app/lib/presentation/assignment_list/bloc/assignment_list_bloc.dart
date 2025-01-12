import 'package:aedify_personal_dispatching/service/api/assignment_api.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'assignment_list_event.dart';
part 'assignment_list_state.dart';

class AssignmentListBloc
    extends Bloc<AssignmentListEvent, AssignmentListState> {
  final AssignmentApiService _apiService = AssignmentApiService();
  List<Assignment> assignments = [];

  AssignmentListBloc() : super(AssignmentListInitial()) {
    on<AssignmentLoadEvent>((event, emit) async {
      // Fetch list of assignments from server and show

      emit(AssignmentListLoading());
      assignments = await _apiService.fetchAssignmentList();

      emit(AssignmentListLoaded(assignments));
    });
    on<AssignmentDeleteEvent>((event, emit) async {
      // delete selected assignment and remove locally from assignments list
      emit(AssignmentListLoading());
      _apiService.deleteAssignment(event.id);

      assignments.removeWhere((item) => item.id == event.id);

      emit(AssignmentListLoaded(assignments));
    });
  }
}
