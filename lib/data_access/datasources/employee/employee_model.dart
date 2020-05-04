import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@JsonSerializable(nullable: false)
class EmployeeModel {
  final String id;
  final String firstName;
  final String lastName;

  EmployeeModel(this.firstName, this.lastName, [this.id]);

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}
