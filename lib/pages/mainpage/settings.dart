import 'package:flutter/material.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';


class Settings extends StatefulWidget {
  VoidCallback voidCallback;
  Settings({required this.voidCallback});


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  @override
  late  double width,height,width2;
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
                  child: Text('Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                ),
                Wrap(
                  children: [
                    Container(
                      
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
