import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../index.dart';
import '../index.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  List<Employee> employeeDetailsList;

  EmployeeDetailsRepository _employeeDetailsRepository =
      EmployeeDetailsRepository();
  @override
  EmployeeState get initialState => InitialEmployeeState();

  @override
  Stream<EmployeeState> mapEventToState(
    EmployeeEvent event,
  ) async* {
    if (event is FetchEmployeeDetailsEvent) {
      print('FetchEmployeeDetailsEvent event notified in the bloc');
      yield EmployeeListFetchingStartedState();
      employeeDetailsList =
          await _employeeDetailsRepository.getEmployeeDetails();
      yield EmployeeListFetchingCompletedState();
    }
  }

  loadEmployeeList() {
    print('Triggering event from the bloc');
    add(FetchEmployeeDetailsEvent());
  }
}
