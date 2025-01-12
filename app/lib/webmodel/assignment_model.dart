import 'package:aedify_personal_dispatching/webmodel/personnel_model.dart';
import 'package:aedify_personal_dispatching/webmodel/project_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assignment_model.g.dart';

@JsonSerializable()
class Assignment {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "personnel")
  final Personnel personnel;
  @JsonKey(name: "project")
  final Project project;
  @JsonKey(name: "role")
  final String role;
  @JsonKey(name: "start_time")
  final DateTime startTime;
  @JsonKey(name: "end_time")
  final DateTime endTime;
  @JsonKey(name: "status")
  final String status;

  Assignment({
    required this.id,
    required this.personnel,
    required this.project,
    required this.role,
    required this.startTime,
    required this.endTime,
    required this.status,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) =>
      _$AssignmentFromJson(json);

  Map<String, dynamic> toJson() => _$AssignmentToJson(this);
}
