import 'package:json_annotation/json_annotation.dart';

part 'employee_model.g.dart';

@JsonSerializable()
class Employee {
  int id;
  @JsonKey(name: 'first_name')
  String firstname;

  @JsonKey(name: 'image_url')
  String imageurl;

  @JsonKey(name: 'company_details')
  String companydetails;

  @JsonKey(name: 'university_details')
  String universitydetails;

  Employee(
      {this.id,
      this.firstname,
      this.imageurl,
      this.companydetails,
      this.universitydetails});

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}
