import 'package:aedify_personal_dispatching/service/api/assignment_api.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'assignment_list_event.dart';
part 'assignment_list_state.dart';

class AssignmentListBloc
    extends Bloc<AssignmentListEvent, AssignmentListState> {
  final AssignmentApiService _apiService = AssignmentApiService();
  List<Assignment>? assignments;

  AssignmentListBloc() : super(AssignmentListInitial()) {
    on<AssignmentLoadEvent>((event, emit) async {
      emit(AssignmentListLoading());
      assignments = await _apiService.fetchAssignmentList();

      emit(AssignmentListLoaded(assignments!));
    });
  }
}
