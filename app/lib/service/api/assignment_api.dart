import 'package:aedify_personal_dispatching/service/api_service.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_create_model.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_model.dart';
import 'package:dio/dio.dart';

class AssignmentApiService {
  ApiService apiService = ApiService();

  /// get a list of assignments
  Future<List<Assignment>> fetchAssignmentList() async {
    Response response = await apiService.get('assignment/');

    return (response.data as List<dynamic>)
        .map((e) => Assignment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// get a single assignment
  Future<Assignment> fetchAssignment(String id) async {
    Response response = await apiService.get('assignment/$id/');

    return Assignment.fromJson(response.data);
  }

  /// create a new assignment
  Future<AssignmentCreate> postAssignment(AssignmentCreate data) async {
    Response response = await apiService.post('assignment/', data.toJson());

    return AssignmentCreate.fromJson(response.data);
  }

  /// update an assignment with a put
  Future<AssignmentCreate> updateAssignment(AssignmentCreate data) async {
    Response response =
        await apiService.put('assignment/${data.id}', data.toJson());

    return AssignmentCreate.fromJson(response.data);
  }

  /// delete an assignment
  Future<void> deleteAssignment(int id) async {
    await apiService.delete('assignment/$id/');
  }
}
