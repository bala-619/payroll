import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payroll/widgets/navigationBarIcon.dart';


class Addsettings extends StatefulWidget {


  @override
  _AddsettingsState createState() => _AddsettingsState();
}

class _AddsettingsState extends State<Addsettings> {
  GlobalKey <ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();
  final _text = TextEditingController();
  final _text1 = TextEditingController();
  @override
  late  double width,height,width2;
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    width2=width-16;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
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
                        child: Text('Company Settings',style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'RR'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: width*0.9,
                  child: Column(
                    children: [
                       TextField(
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
                          hintText: "Enter Company Name",
                          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                          prefixIcon: Container(
                            margin:  EdgeInsets.only(left: 0,),
                            alignment: Alignment.center,
                            child: Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 50,
                            maxWidth: 50,
                            minWidth: 40,
                            minHeight: 40
                          ),
                        ),

                      ),
                       SizedBox(height: 15,),
                       TextField(
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
                          hintText: "Enter Contact Person",
                          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                          prefixIcon: Container(
                            margin:  EdgeInsets.only(left: 0,),
                            alignment: Alignment.center,
                            child: Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 50,
                            maxWidth: 50,
                            minWidth: 40,
                            minHeight: 40
                          ),
                        ),

                      ),
                        SizedBox(height: 15,),
                        GestureDetector(
                          onTap : () {
                            _showMyDialog();
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffD2D2D2)),
                              borderRadius: BorderRadius.circular(10),
                              ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width*0.6,
                                padding: EdgeInsets.only(left: 5),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                                    Text('Fill Your Office Location',style: TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),)
                                  ],
                                )
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child:Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                                )
                              ],
                            ) ,

                      ),
                        ),
                      SizedBox(height: 15,),
                      TextField(
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
                          hintText: "Enter Email-Id",
                          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                          prefixIcon: Container(
                            margin:  EdgeInsets.only(left: 0,),
                            alignment: Alignment.center,
                            child: Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                          ),
                          prefixIconConstraints: BoxConstraints(
                              maxHeight: 50,
                              maxWidth: 50,
                              minWidth: 40,
                              minHeight: 40
                          ),
                        ),

                      ),
                      SizedBox(height: 15,),
                      TextField(
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
                          hintText: "Enter Phone Number",
                          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                          prefixIcon: Container(
                            margin:  EdgeInsets.only(left: 0,),
                            alignment: Alignment.center,
                            child: Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                          ),
                          prefixIconConstraints: BoxConstraints(
                              maxHeight: 50,
                              maxWidth: 50,
                              minWidth: 40,
                              minHeight: 40
                          ),
                        ),

                      ),
                      SizedBox(height: 15,),
                      TextField(
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
                          hintText: "Enter Website",
                          hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                          prefixIcon: Container(
                            margin:  EdgeInsets.only(left: 0,),
                            alignment: Alignment.center,
                            child: Image.asset("assets/settings/condo.png",width: 23,color:Color(0xffB6B6B6) ,fit:BoxFit.cover,),
                          ),
                          prefixIconConstraints: BoxConstraints(
                              maxHeight: 50,
                              maxWidth: 50,
                              minWidth: 40,
                              minHeight: 40
                          ),
                        ),

                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Column(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all( Radius.circular(50)),
                                color: Color(0xff2932D8),
                              ),
                              child: Center(child: Image.asset("assets/settings/folder.png",width: 40,)),
                            ),
                            Container(
                              child: Text('Upload Company Logo',style: TextStyle(color: Color(0xff62626C),fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'RR'),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
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
                      SizedBox(height: 15,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text(''),
          content: SingleChildScrollView(
            child: Container(
              width: width*0.9,
              child: ListBody(
                children: <Widget>[
                  TextField(
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
                      hintText: "Address Line-1",
                      hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                    ),

                  ),
                  SizedBox(height: 15,),
                  TextField(
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
                      hintText: "Address Line-2",
                      hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                    ),

                  ),
                  SizedBox(height: 15,),
                  TextField(
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
                      hintText: "Enter State",
                      hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                    ),

                  ),
                  SizedBox(height: 15,),
                  TextField(
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
                      hintText: "Enter City",
                      hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                    ),

                  ),
                  SizedBox(height: 15,),
                  TextField(
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
                      hintText: "Enter Zipcode",
                      hintStyle:TextStyle(fontSize: 15,fontFamily:'RR',color:Color(0xffB6B6B6)),
                    ),

                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Center(
              child: GestureDetector(
                onTap : () {
                  Navigator.pop(context,);
                },
                child: Container(
                    width: width*0.5,
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
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: GestureDetector(
                onTap : () {
                  Navigator.pop(context,);
                },
                child: Container(
                  width: width*0.5,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // boxShadow: [
                    //   BoxShadow(color: Colors.green, spreadRadius: 3),
                    // ],
                    color: Colors.white,
                  ),
                  child:Center(child: Text('Cancel',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xffB6B6B6),fontFamily:'RR'), )) ,

                ),
              ),
            ),
          ],
        );
      },
    );
  }

}
