import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/pages/Attendance/reportDataTableWithoutModel.dart';
import 'package:payroll/widgets/constants.dart';
import 'package:payroll/widgets/linearProgressBar.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';
import 'package:payroll/widgets/size.dart';

class AttenSatus extends StatefulWidget {
  @override
  _AttenSatusState createState() => _AttenSatusState();
}

class _AttenSatusState extends State<AttenSatus> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;

  List<ReportGridStyleModel2> gridHeaderList=[
    ReportGridStyleModel2(columnName: "Days"),
    ReportGridStyleModel2(columnName: "Login",width: attWidth),
    ReportGridStyleModel2(columnName: "Logout",width: attWidth),
    ReportGridStyleModel2(columnName: "Status",width: attWidth),

  ];
  List<dynamic> data=[
    {"Days":"August 1","Login":"09:30 AM","Logout":"08:30 PM","Status":"1.3 Hours",},
    {"Days":"August 2","Login":"10:02 AM","Logout":"06:23 PM","Status":"23 Mint",},
    {"Days":"August 3","Login":"-","Logout":"-","Status":"Absent",},
  ];
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
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
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, right: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context,);
                        },
                        child: SvgPicture.asset("assets/login/backward-01.svg",width: 30,color:Colors.white ,),
                      ),
                    ),
                    Container(
                      child: Text('Mr.Bala - August2021',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 140,
                width: SizeConfig.screenWidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                 children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      margin: EdgeInsets.all(8.0),
                      width: SizeConfig.screenWidth!*0.55,
                      height: SizeConfig.screenHeight!*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff3D73DD),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset('assets/attendance/profile.png',width: 50,),
                                  ),
                                  Container(
                                    width: SizeConfig.screenWidth!*0.30,
                                    child: Text('26 / 23',style: TextStyle(color: Color(0xffffffff),fontSize: 24,fontFamily: 'RB'),textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(height: 5,),
                          Container(
                            // padding: EdgeInsets.only(left: 10),
                            child: Text(' Presents',
                              style: TextStyle(color: Color(0xffffffff),fontSize: 16,fontFamily: 'RR'),textAlign: TextAlign.left,),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            width: SizeConfig.screenWidth!*0.55,
                            child: LinearPercentIndicator(
                                    progressColor: Colors.yellow,
                                    backgroundColor: Colors.white,
                                    lineHeight: 4,
                                    percent: 0.8,

                                    trailing: Container(),
                                    leading: Container(),
                                    animation: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                   Container(
                     margin: EdgeInsets.all(8.0),
                     width: SizeConfig.screenWidth!*0.45,
                     height: SizeConfig.screenHeight!*0.3,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: Color(0xffECEDFF),
                     ),
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
                gridBodyReduceHeight: 350,
                gridData: data,
                gridDataRowList: gridHeaderList,
                func: (i){

                },
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
