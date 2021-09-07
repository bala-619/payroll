import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payroll/notifiers/themeNotifier.dart';
import 'package:payroll/pages/Attendance/EmpAttenReview.dart';
import 'package:payroll/pages/Attendance/profile.dart';
import 'package:payroll/pages/Employee/employee.dart';
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

class _MasterpageState extends State<Masterpage> {
  @override
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  int menuSel=5;
  late  double width,height,width2;
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
                   height: 40,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    // color: Colors.red
                    //  border: Border(bottom: BorderSide())
                  ),
                  child: ListTile(
                    leading:SvgPicture.asset("assets/side-icon/dashboard.svg",width: 25,color:tn.navprimaryColor,),
                    title: Text('Dasboard', style: TextStyle(fontSize: 20,color:tn.navprimaryColor, fontFamily:'RR'), ),
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
                    title: Text('Settings', style: TextStyle(fontSize: 20,color:tn.navprimaryColor, fontFamily:'RR'), ),
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
                    title: Text('Attendance', style: TextStyle(fontSize: 20,color:tn.navprimaryColor, fontFamily:'RR'), ),
                    onTap: (){
                      setState(() {
                        menuSel=3;
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
                    title: Text('Employee', style: TextStyle(fontSize: 20,color:tn.navprimaryColor, fontFamily:'RR'), ),
                    onTap: (){
                      setState(() {
                        menuSel=4;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },

                  ),
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
                    title: Text('Leave Type', style: TextStyle(fontSize: 20,color:tn.navprimaryColor, fontFamily:'RR'), ),
                    onTap: (){
                      setState(() {
                        menuSel=5;
                      });
                      scaffoldkey.currentState!.openEndDrawer();
                    },

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
            )
                :menuSel==4?Employee (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ) :menuSel==5?LeaveReport (
              voidCallback:(){

                scaffoldkey.currentState!.openDrawer();
              },
            ) :Container(),
          ),
        ),



    );
  }
}
