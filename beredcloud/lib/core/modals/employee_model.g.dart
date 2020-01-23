// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return Employee(
    id: json['id'] as int,
    firstname: json['first_name'] as String,
    imageurl: json['image_url'] as String,
    companydetails: json['company_details'] as String,
    universitydetails: json['university_details'] as String,
  );
}

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstname,
      'image_url': instance.imageurl,
      'company_details': instance.companydetails,
      'university_details': instance.universitydetails,
    };
