import 'package:flutter/material.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';



class Dashboard extends StatefulWidget {
  VoidCallback voidCallback;
  Dashboard({required this.voidCallback});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: 80,
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
                  child: Text('Dashboard',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
