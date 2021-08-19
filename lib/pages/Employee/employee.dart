import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payroll/widgets/companySettingsTextField.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';

import 'addEmployee.dart';



class Employee extends StatefulWidget {
  VoidCallback voidCallback;
  Employee({required this.voidCallback});


  @override
  _EmployeeState createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child:Scaffold(
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
             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddEmployee()),);
           }
          },
        ),
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
                      child: Text('Empolyee',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: width*0.9,
                child: Column(
                  children: [
                    Container(child: CompanySettingsTextField(hintText: "Search Employee Id & Name", img: "assets/search.png")),
                    SizedBox(height: 15,),
                    Container(
                      height: height-242,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Balasubramaniyan',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('UI Designer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // boxShadow: [
                                //   BoxShadow(color: Colors.green, spreadRadius: 3),
                                // ],
                                color:Color(0XFFECEDFF) ,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Vivek Murugan',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('Developer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Ramesh',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('UX Designer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Muthu Gokul',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('Mobile Dev',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Kalaivanan',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('UI Designer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Rajasekar',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('SQL Dev',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Ms. Aishwarya',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('Content Writer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Ms.Lavanya',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('SQL Dev',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Mr.Rajasekar',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('SQL Dev',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Ms. Aishwarya',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('Content Writer',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.40,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.asset("assets/attendance/profile.png",width: 50,),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: Text('Ms.Lavanya',style: TextStyle(fontSize: 14,fontFamily: 'RB',color: Colors.black),),
                                  ),
                                  SizedBox(height: 2,),
                                  Container(
                                    child: Text('SQL Dev',style: TextStyle(fontSize: 12,fontFamily: 'RR',color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                          ],

                        ),
                      ),
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
