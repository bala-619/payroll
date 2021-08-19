import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';

import '../settings/add-settings.dart';


class Attendance extends StatefulWidget {
  VoidCallback voidCallback;
  Attendance({required this.voidCallback});
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color(0XFFEBEFF8),
        key: scaffoldkey,
        body: Container(
          child: Column(
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
              SizedBox(height: 10.0,),
              Container(
                width: width,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                     Container(
                       child: Image.asset("assets/attendance/logo.jpg", width: 80,fit: BoxFit.cover,),
                     ) ,
                    SizedBox(height: 5.0,),
                    //Login Successful-UI-Start

                    // Container(
                    //     child: Text('Login Successful!',style: TextStyle(color: Color(0XFF2D972A),fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    // ),
                    // SizedBox(height: 5.0,),
                    // Container(
                    //    child: Text('18 Aug 2021 / 09:21 AM',style: TextStyle(color: Color(0XFF000000),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    //  ),
                    // SizedBox(height:5.0,),
                    // Container(
                    //   width: width*0.27,
                    //   height: 30,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(5),
                    //     // boxShadow: [
                    //     //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    //     // ],
                    //     color: Colors.indigoAccent,
                    //   ),
                    //   child:Center(child: Text('19:31AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR',letterSpacing: 2.0), )) ,
                    // ),

                    //Login Successful-UI-End
                    Container(
                      child: Text('Welcome Mr.Ramesh',style: TextStyle(color: Color(0XFF000000),fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Text('18 Aug 2021',style: TextStyle(color: Color(0XFF000000),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                    SizedBox(height:5.0,),
                    Container(
                      width: width*0.27,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // boxShadow: [
                        //   BoxShadow(color: Colors.green, spreadRadius: 3),
                        // ],
                        color: Colors.indigoAccent,
                      ),
                      child:Center(child: Text('09:21AM',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR',letterSpacing: 2.0), )) ,
                    ),
                    SizedBox(height: 25.0,),
                    Container(
                             child: Image.asset("assets/attendance/profile.png" ,width: 200,fit: BoxFit.cover,),
                    ) ,
                    SizedBox(height: 25.0,),
                    Container(
                      width: width*0.75,
                      child: Row(
                        crossAxisAlignment:CrossAxisAlignment.center ,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width*0.22,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(color: Colors.green, spreadRadius: 3),
                              // ],
                              color: Colors.white,
                            ),
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: SvgPicture.asset("assets/attendance/face-id-01.svg" ,width: 40,color: Color(0XFF000000),),
                              ),
                              Container(
                                  child: Text('Face Id',style: TextStyle(fontSize: 14,color: Color(0XFF000000),fontFamily:'RR',),
                                  )
                              ),
                            ],
                              ) ,
                          ),
                          Container(
                            width: width*0.22,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(color: Colors.green, spreadRadius: 3),
                              // ],
                              color: Colors.white,
                            ),
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: SvgPicture.asset("assets/attendance/finger print-01.svg" ,width: 40,),
                                ),
                                Container(
                                    child: Text('Finger Print',style: TextStyle(fontSize: 14,color: Color(0XFF000000),fontFamily:'RR',),
                                    )
                                ),
                              ],
                            ) ,
                          ),
                          Container(
                            width: width*0.22,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(color: Colors.green, spreadRadius: 3),
                              // ],
                              color: Color(0XFFD4DBEC),
                            ),
                            child:Column(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: SvgPicture.asset("assets/attendance/touch-01.svg" ,width: 40,),
                                ),
                                Container(
                                    child: Text('Touch',style: TextStyle(fontSize: 14,color: Color(0XFF000000),fontFamily:'RR',),
                                    )
                                ),
                              ],
                            ) ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      width: width*0.75,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(color: Colors.green, spreadRadius: 3),
                        // ],
                        color: Colors.indigoAccent,
                      ),
                      child:Center(child: Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily:'RR'), )) ,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
