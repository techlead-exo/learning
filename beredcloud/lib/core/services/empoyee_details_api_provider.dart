import 'dart:convert';

import '../index.dart';

class EmployeeDetailsApiProvider {
  Future<List<Employee>> getEmployeeDetails() async {
    List<Employee> employeeDetailsList = [];
    try {
      final response = await HttpService.get(url: Config.employeeDetailsUrl);
      final responseBody = jsonDecode(response.body) as List;
      responseBody.forEach((empData) {
        employeeDetailsList.add(Employee.fromJson(empData));
      });
      return employeeDetailsList;
    } catch (error) {
      return employeeDetailsList;
    }
  }
}
