import 'package:beredcloud/core/bloc/index.dart';
import 'package:beredcloud/core/index.dart';
import 'package:beredcloud/views/widgets/appwidgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Employee> employeeList;
  EmployeeBloc employeeBloc;
  var _isLoading = true;
  @override
  void initState() {
    employeeBloc = EmployeeBloc();
    employeeBloc.loadEmployeeList();
    super.initState();
  }

  @override
  void dispose() {
    employeeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        listener: (context, state) {
          if (state is EmployeeListFetchingStartedState) {
            print('EmployeeListFetchingStartedState notified in the listener');
            _isLoading = true;
          }
          if (state is EmployeeListFetchingCompletedState) {
            _isLoading = false;
            print(
                'EmployeeListFetchingCompletedState notified in the listener');
            employeeList = employeeBloc.employeeDetailsList;
          }
        },
        bloc: employeeBloc,
        child: BlocBuilder(
            bloc: employeeBloc,
            builder: (context, _) {
              return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bgimage.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: _isLoading
                      ? Center(
                          child: SpinKitFoldingCube(
                          size: 30,
                          color: Colors.blue,
                        ))
                      : Container(
                          child: ListView.builder(
                          itemCount: employeeList.length,
                          itemBuilder: (context, index) {
                            return buildCircleAvatarImage(index);
                          },
                        )));
            }));
  }

  Widget buildCircleAvatarImage(int index) {
    return Column(
      children: <Widget>[
        CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.green.shade200,
            child: ImageWidget(
              imageSource: employeeList[index].imageurl,
            )),
        Text(
          employeeList[index].firstname,
          style: TextStyle(
              color: Colors.blue.shade800,
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.w700),
        ),
        Text(
          employeeList[index].companydetails,
          style: TextStyle(
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
