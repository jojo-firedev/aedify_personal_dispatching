import 'package:aedify_personal_dispatching/service/api_service.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_create_model.dart';
import 'package:aedify_personal_dispatching/webmodel/assignment_model.dart';
import 'package:dio/dio.dart';

class AssignmentApiService {
  ApiService apiService = ApiService();

  Future<List<Assignment>> fetchAssignmentList() async {
    Response response = await apiService.get('assignment/');

    return (response.data as List<dynamic>)
        .map((e) => Assignment.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Assignment> fetchAssignment(String id) async {
    Response response = await apiService.get('assignment/$id');

    return Assignment.fromJson(response.data);
  }

  Future<AssignmentCreate> postAssignment(AssignmentCreate data) async {
    Response response = await apiService.post('assignment/', data.toJson());

    return AssignmentCreate.fromJson(response.data);
  }

  Future<AssignmentCreate> updateAssignment(AssignmentCreate data) async {
    Response response = await apiService.put('assignment/', data.toJson());

    return AssignmentCreate.fromJson(response.data);
  }

  Future<void> deleteAssignment(int id) async {
    await apiService.delete('assignment/$id');
  }
}
