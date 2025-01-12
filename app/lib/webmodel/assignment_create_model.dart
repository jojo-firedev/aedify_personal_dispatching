import 'package:json_annotation/json_annotation.dart';

part 'assignment_create_model.g.dart';

@JsonSerializable()
class AssignmentCreate {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "personnel")
  final int personnel;
  @JsonKey(name: "project")
  final int project;
  @JsonKey(name: "role")
  final String role;
  @JsonKey(name: "start_time")
  final DateTime startTime;
  @JsonKey(name: "end_time")
  final DateTime endTime;
  @JsonKey(name: "status")
  final String status;

  AssignmentCreate({
    required this.personnel,
    required this.project,
    required this.role,
    required this.startTime,
    required this.endTime,
    required this.status,
    this.id,
  });

  factory AssignmentCreate.fromJson(Map<String, dynamic> json) =>
      _$AssignmentCreateFromJson(json);

  Map<String, dynamic> toJson() => _$AssignmentCreateToJson(this);
}
