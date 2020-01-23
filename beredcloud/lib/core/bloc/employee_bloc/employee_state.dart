import 'package:equatable/equatable.dart';

abstract class EmployeeState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialEmployeeState extends EmployeeState {}

class EmployeeListFetchingStartedState extends EmployeeState {}

class EmployeeListFetchingCompletedState extends EmployeeState {}
