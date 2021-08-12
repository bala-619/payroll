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
