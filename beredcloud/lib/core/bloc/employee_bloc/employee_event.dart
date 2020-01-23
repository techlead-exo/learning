import 'package:equatable/equatable.dart';

abstract class EmployeeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class FetchEmployeeDetailsEvent extends EmployeeEvent {
  FetchEmployeeDetailsEvent();
}
