import 'package:flutter/material.dart';

class EmployeeTextField extends StatelessWidget {
  String hintText;
  EmployeeTextField({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: _text1,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      maxLines: 1,
      style:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xff7F7F7F),),

      decoration: InputDecoration(
        fillColor: Color(0xffffffff),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Color(0xffD2D2D2))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff929BC4)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),

      ),

    );
  }
}
