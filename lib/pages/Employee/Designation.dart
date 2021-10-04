import 'package:flutter/material.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';

class Designations extends StatefulWidget {
  VoidCallback voidCallback;
  Designations({required this.voidCallback});

  @override
  _DesignationsState createState() => _DesignationsState();
}

class _DesignationsState extends State<Designations> {
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:Container(
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
                        child: Text('Designations',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ) ,
        )
    );
  }
}
