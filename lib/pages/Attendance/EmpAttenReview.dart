import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:payroll/pages/Attendance/empAttenStatus.dart';
import 'package:payroll/pages/Attendance/reportDataTableWithoutModel.dart';
import 'package:payroll/widgets/constants.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';
import 'package:scutiwidgets/pageRoutes.dart' as pr;
import 'package:scutiwidgets/size.dart';

class AttendanceOverView extends StatefulWidget {
  VoidCallback voidCallback;
  AttendanceOverView({required this.voidCallback});
 @override
  _AttendanceOverViewState createState() => _AttendanceOverViewState();
}

class _AttendanceOverViewState extends State<AttendanceOverView> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;

  List<ReportGridStyleModel2> gridHeaderList=[
    ReportGridStyleModel2(columnName: "Employee Name"),
    ReportGridStyleModel2(columnName: "1",width: attWidth),
    ReportGridStyleModel2(columnName: "2",width: attWidth),
    ReportGridStyleModel2(columnName: "3",width: attWidth),
    ReportGridStyleModel2(columnName: "4",width: attWidth),
    ReportGridStyleModel2(columnName: "5",width: attWidth),
    ReportGridStyleModel2(columnName: "6",width: attWidth),
    ReportGridStyleModel2(columnName: "7",width: attWidth),
    ReportGridStyleModel2(columnName: "8",width: attWidth),
    ReportGridStyleModel2(columnName: "9",width: attWidth),
    ReportGridStyleModel2(columnName: "10",width: attWidth),

  ];
  List<dynamic> data=[
    {"Employee Name":"Bala","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Muthu","1":"PN","2":"PN","3":"AB","4":"PN","5":"AB","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Vivek","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Ramesh","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Rajasekar","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Lavanya","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Aishwarya","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
    {"Employee Name":"Kalaivanan","1":"PN","2":"PN","3":"AB","4":"PN","5":"PN","6":"PN","7":"PN","8":"PN","9":"PN","10":"PN",},
  ];
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
     child: Scaffold(
       backgroundColor: Color(0xffffffff),
       key: scaffoldkey,
       resizeToAvoidBottomInset: false,
       bottomNavigationBar: CurvedNavigationBar(
         height: 55,
         color: Color(0Xff4B5AFF),
         backgroundColor: Color(0xffffffff),
         items: <Widget>[
           Icon(Icons.add, size: 30,color: Colors.white,),
           Icon(Icons.list, size: 30,color: Colors.white,),
           Icon(Icons.compare_arrows, size: 30,color: Colors.white,),
         ],
         onTap: (index) {
           if(index==0){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>),);
           }
         },
       ),
       body:Container(
         child:Column(
           children: [
             Container(
               width: width,
               height: 70,
               color: Color(0xff4852FF),
               child: Row(
                 children: [
                   GestureDetector(
                       onTap: (){
                         widget.voidCallback();
                         //scaffoldkey.currentState.openDrawer();
                       },
                       child: NavBarIcon()
                   ),
                   Container(
                     child: Text('Attendance',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                   ),
                 ],
               ),
             ),
             Container(
               height: 70,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all( Radius.circular(10)),
                         boxShadow: [
                           BoxShadow(
                             color: Color(0XFF000000).withOpacity(0.55),
                             blurRadius: 10.0, // soften the shadow
                             spreadRadius: 0.0, //extend the shadow
                             offset: Offset(
                               1.0, // Move to right 10  horizontally
                               1.0, // Move to bottom 10 Vertically
                             ),
                           )
                         ],
                       color: Colors.white
                     ),
                     child: Icon(Icons.chevron_left,color: Colors.black,size: 30,),
                   ),
                   Container(
                     width: SizeConfig.screenWidth!*0.65,
                     child: Text('August 2021',style: TextStyle(fontFamily: 'RB',fontSize: 16,color: Colors.black,),textAlign:TextAlign.center,),
                   ),
                   Container(
                     width: 40,
                     height: 40,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.all( Radius.circular(10)),
                         boxShadow: [
                           BoxShadow(
                             color: Color(0XFF000000).withOpacity(0.55),
                             blurRadius: 10.0, // soften the shadow
                             spreadRadius: 0.0, //extend the shadow
                             offset: Offset(
                               1.0, // Move to right 10  horizontally
                               1.0, // Move to bottom 10 Vertically
                             ),
                           )
                         ],
                         color: Colors.white
                     ),
                     child: Icon(Icons.chevron_right,color: Colors.black,size: 30,),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 10,),
             ReportDataTable2 (
               voidCallback:(){

                 scaffoldkey.currentState!.openDrawer();
               },
               topMargin: 5,
               gridBodyReduceHeight: 275 ,
               gridData: data,
               gridDataRowList: gridHeaderList,
               func: (i){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>AttenSatus()),);
                 Navigator.push(context,pr.PageRoute().slideFromLeftToRight(AttenSatus()),);
               },
             )
           ],
         ),
       ) ,
     ),
    );
  }
}
