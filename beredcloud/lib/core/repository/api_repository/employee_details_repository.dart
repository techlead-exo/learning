import 'package:beredcloud/core/services/index.dart';

import '../../index.dart';

class EmployeeDetailsRepository {
  EmployeeDetailsApiProvider _apiProvider = new EmployeeDetailsApiProvider();
  Future<List<Employee>> getEmployeeDetails() async {
    return await _apiProvider.getEmployeeDetails();
  }
}
