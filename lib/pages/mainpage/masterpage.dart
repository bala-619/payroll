import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payroll/notifiers/themeNotifier.dart';
import 'package:payroll/pages/Attendance/EmpAttenReview.dart';
import 'package:payroll/pages/Attendance/profile.dart';
import 'package:payroll/pages/Employee/Designation.dart';
import 'package:payroll/pages/Employee/Timesheet.dart';
import 'package:payroll/pages/Employee/attendanceAdmin.dart';
import 'package:payroll/pages/Employee/attendanceEmployee.dart';
import 'package:payroll/pages/Employee/departments.dart';
import 'package:payroll/pages/Employee/employee.dart';
import 'package:payroll/pages/Employee/leaveAdmin.dart';
import 'package:payroll/pages/Employee/leaveEmployee.dart';
import 'package:payroll/pages/Employee/overtime.dart';
import 'package:payroll/pages/Employee/shiftschedule.dart';
import 'package:payroll/pages/leaveDetails/LeaveType.dart';
import 'package:payroll/pages/mainpage/settings.dart';
import 'package:payroll/widgets/size.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';
class Masterpage extends StatefulWidget {
  const Masterpage({Key? key}) : super(key: key);

  @override
  _MasterpageState createState() => _MasterpageState();
}

class _MasterpageState extends State<Masterpage> with TickerProviderStateMixin{
  @override
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  int menuSel=5;
  bool isEmployeeOpen=false;
  late  double width,height,width2;


  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 1.5,
  );

  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    SizeConfig().init(context);
    return SafeArea(
        child: Consumer<ThemeNotifier>(
          builder:(ctx,tn,child)=> Scaffold(
            key: scaffoldkey,
          drawer: Container(
          height: height,
          width: width*0.7,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
          ),

          child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  color:tn.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(child: Image.asset("assets/images/logo-white.png", width:40)),
                      Container(
                        child: Text('Payroll',style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: SizeConfig.screenHeight!-100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                           height: 40,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.red
                            //  border: Border(bottom: BorderSide())
                          ),
                          child: ListTile(
                            leading:SvgPicture.asset("assets/side-icon/dashboard.svg",width: 25,color:tn.navprimaryColor,),
                            title: Text('Dasboard', style: TextStyle(fontSize: 18,color:tn.navprimaryColor, fontFamily:'RR'), ),
                            onTap: (){
                              setState(() {
                                menuSel=1;
                              });
                              scaffoldkey.currentState!.openEndDrawer();
                            },

                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.red
                            //  border: Border(bottom: BorderSide())
                          ),
                          child: ListTile(
                            leading:SvgPicture.asset("assets/side-icon/settings.svg",width: 25,color:tn.navprimaryColor,),
                            title: Text('Settings', style: TextStyle(fontSize: 18,color:tn.navprimaryColor, fontFamily:'RR'), ),
                            onTap: (){
                              setState(() {
                                menuSel=2;
                              });
                              scaffoldkey.currentState!.openEndDrawer();
                            },

                          ),
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.red
                            //  border: Border(bottom: BorderSide())
                          ),
                          child: ListTile(
                            leading:SvgPicture.asset("assets/side-icon/settings.svg",width: 25,color:tn.navprimaryColor,),
                            title: Text('Attendance', style: TextStyle(fontSize: 18,color:tn.navprimaryColor, fontFamily:'RR'), ),
                            onTap: (){
                              setState(() {
                                menuSel=3;
                              });
                              scaffoldkey.currentState!.openEndDrawer();
                            },

                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                // color: Colors.red
                                //  border: Border(bottom: BorderSide())
                              ),
                              child: ListTile(
                                leading:SvgPicture.asset("assets/side-icon/settings.svg",width: 25,color:tn.navprimaryColor,),
                                title: Text('Employee', style: TextStyle(fontSize: 18,color:tn.navprimaryColor, fontFamily:'RR'), ),
                                trailing:RotationTransition(
                                    turns: turnsTween.animate(_controller),
                                    child: Icon(Icons.keyboard_arrow_down)) ,
                                onTap: (){
                                 onSubHeadClick(-1);
                                  //    scaffoldkey.currentState!.openEndDrawer();
                                },

                              ),
                            ),
                            SizedBox(height: 5,),
                            AnimatedContainer(
                              curve: Curves.easeIn,
                              color: Colors.white,
                              width: 200.0, // change width or height to see animation
                              height: isEmployeeOpen?180.0:0,
                              duration: const Duration(milliseconds: 300),
                              child: Column(
                                children: [

                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(4);
                                      },
                                      title: 'All Employee'
                                  ),
                                  // SubHeading(
                                  //     ontap: (){
                                  //       onSubHeadClick(5);
                                  //     },
                                  //     title: 'Leave(Admin)'
                                  // ),
                                  // SubHeading(
                                  //     ontap: (){
                                  //       onSubHeadClick(6);
                                  //     },
                                  //     title: 'Leave(Employee)'
                                  // ),
                                  // SubHeading(
                                  //     ontap: (){
                                  //       onSubHeadClick(7);
                                  //     },
                                  //     title: 'Attendance(Admin)'
                                  // ),
                                  // SubHeading(
                                  //     ontap: (){
                                  //       onSubHeadClick(8);
                                  //     },
                                  //     title: 'Attendance(Employee)'
                                  // ),
                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(9);
                                      },
                                      title: 'Departments'
                                  ),
                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(10);
                                      },
                                      title: 'Designations'
                                  ),
                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(11);
                                      },
                                      title: 'Timesheet'
                                  ),
                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(12);
                                      },
                                      title: 'Shift & Schedule'
                                  ),
                                  SubHeading(
                                      ontap: (){
                                        onSubHeadClick(13);
                                      },
                                      title: 'Overtime'
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        //   Divider(color: Color(0xff099FAF),thickness: 0.1,),
                        Container(
                          height: 40,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // color: Colors.red
                            //  border: Border(bottom: BorderSide())
                          ),
                          child: ListTile(
                            leading:SvgPicture.asset("assets/side-icon/settings.svg",width: 25,color:tn.navprimaryColor,),
                            title: Text('Leave Type', style: TextStyle(fontSize: 18,color:tn.navprimaryColor, fontFamily:'RR'), ),
                            onTap: (){
                              setState(() {
                                menuSel=14;
                              });
                              scaffoldkey.currentState!.openEndDrawer();
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
                // Divider(color: Color(0xff099FAF),thickness: 0.1,),
              ],
            ),
          ),
            body:menuSel==1?Dashboard(
              voidCallback:(){
                scaffoldkey.currentState!.openDrawer();
              },
            ) :menuSel==2?Settings (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ) :menuSel==3?AttendanceOverView (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==14?LeaveReport (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ) :menuSel==4?Employee (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ) :menuSel==5?LeaveAdmin (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==6?LeaveEmployee (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==7?AttendanceAdmin (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
              ):menuSel==8?AttendanceEmployee (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==9?Departments (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==10?Designations (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==11?TimeSheet (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==12?ShiftSchedule (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):menuSel==13?OverTime (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ):Container(),
        ),

        )
    );
  }

  onSubHeadClick(int index){
    setState(() {
      isEmployeeOpen=!isEmployeeOpen;
      if(index!=-1){
        menuSel=index;
      }
    });
    if(isEmployeeOpen){
      _controller.forward();
    }
    else{
      _controller.reverse();
    }
    if(index!=-1){
      scaffoldkey.currentState!.openEndDrawer();
    }
  }
}


class SubHeading extends StatelessWidget {
  String title;
  VoidCallback ontap;
  SubHeading({required this.ontap,required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          padding: EdgeInsets.only(left: 40),
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('$title',style: TextStyle(fontSize: 14,color:Colors.black26, fontFamily:'RR'), )
      ),
    );
  }
}

