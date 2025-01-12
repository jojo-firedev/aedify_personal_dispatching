import 'package:json_annotation/json_annotation.dart';

part 'personnel_model.g.dart';

@JsonSerializable()
class Personnel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;

  Personnel({
    required this.id,
    required this.name,
  });

  factory Personnel.fromJson(Map<String, dynamic> json) =>
      _$PersonnelFromJson(json);

  Map<String, dynamic> toJson() => _$PersonnelToJson(this);
}
