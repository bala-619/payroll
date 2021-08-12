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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                onTap: (){
                  widget.voidCallback();
                  //scaffoldkey.currentState.openDrawer();
                },
                child: NavBarIcon()
            ),
          ),



        ],
      ),
    );
  }
}
