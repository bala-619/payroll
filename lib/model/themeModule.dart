import 'package:flutter/material.dart';

class ThemeModel{
  String title;
  Color textColor;
  Color selectColor;
  Color unSelectColor;
 ThemeModel({required this.title,required this.selectColor,required this.unSelectColor, this.textColor=Colors.white});
}