
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:payroll/widgets/constants.dart';
import 'package:scutiwidgets/size.dart';



class ReportGridStyleModel2{
  String? columnName;
  double width;
  Alignment alignment;
  EdgeInsets edgeInsets;
  bool isActive;
  bool isDate;

  ReportGridStyleModel2({this.columnName,this.width=150,this.alignment=Alignment.centerLeft,
    this.edgeInsets=const EdgeInsets.only(left: 10),this.isActive=true,this.isDate=false});


  Map<String, dynamic> toJson() => {
    "ColumnName": columnName,

  };

  dynamic get(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }
}

class LeaveDataTable2 extends StatefulWidget {

  List<ReportGridStyleModel2>? gridDataRowList=[];
  List<dynamic>? gridData=[];

  int? selectedIndex;
  VoidCallback? voidCallback;
  Function(int)? func;
  double topMargin;//70 || 50
  double gridBodyReduceHeight;// 260  // 140

  LeaveDataTable2({this.gridDataRowList,this.gridData,this.selectedIndex,this.voidCallback,this.func,required this.topMargin,required this.gridBodyReduceHeight});
  @override
  _LeaveDataTable2State createState() => _LeaveDataTable2State();
}

class _LeaveDataTable2State extends State<LeaveDataTable2> {


  ScrollController header=new ScrollController();
  ScrollController body=new ScrollController();
  ScrollController verticalLeft=new ScrollController();
  ScrollController verticalRight=new ScrollController();

  bool showShadow=false;





  @override
  void initState() {
    header.addListener(() {
      if(body.offset!=header.offset){
        body.jumpTo(header.offset);
      }
      if(header.offset==0){
        setState(() {
          showShadow=false;
        });
      }
      else{
        if(!showShadow){
          setState(() {
            showShadow=true;
          });
        }
      }
    });

    body.addListener(() {
      if(header.offset!=body.offset){
        header.jumpTo(body.offset);
      }
    });

    verticalLeft.addListener(() {
      if(verticalRight.offset!=verticalLeft.offset){
        verticalRight.jumpTo(verticalLeft.offset);
      }
    });

    verticalRight.addListener(() {
      if(verticalLeft.offset!=verticalRight.offset){
        verticalLeft.jumpTo(verticalRight.offset);
      }
    });
    super.initState();
  }

  late double width;

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    // print("CustomTable");
    // print(widget.gridData);
    // print(gridDataRowList);
    // print(gridCol);
    // print(widget.selectedIndex);
    return Container(
        height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight,
        width: SizeConfig.screenWidth,
        margin: EdgeInsets.only(top: widget.topMargin,left:5 ,right: 5),
        padding: EdgeInsets.only(bottom: 5),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10),
            color:gridBodyBgColor,
            //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
        child: Stack(
          children: [

            //Scrollable
            Positioned(
              left:149,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width-160,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: EdgeInsets.only(right: 1),
                    decoration:BoxDecoration(
                      color: addNewTextFieldBorder,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(0)
                      ),
                    ),
                    child: Container(
                      height: 50,
                      width: width-160,
                      margin: EdgeInsets.only(right: 0,bottom: 1,top: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(0))
                      ),
                      //color: showShadow? bgColor.withOpacity(0.8):bgColor,
                      child: SingleChildScrollView(
                        controller: header,
                        scrollDirection: Axis.horizontal,
                        physics: ClampingScrollPhysics(),
                        child: Row(
                            children: widget.gridDataRowList!.asMap().
                            map((i, value) => MapEntry(i, i==0?Container():
                            value.isActive?Container(
                                alignment: value.alignment,
                                padding: value.edgeInsets,
                                width: value.width,

                                constraints: BoxConstraints(
                                    minWidth: 50,
                                    maxWidth: 200
                                ),

                                child: FittedBox(child: Text(value.columnName!,
                                  style: TextStyle(fontFamily: 'RR',color: bgColor,fontSize: 16),)
                                )
                            ):Container()
                            ))
                                .values.toList()
                        ),
                      ),

                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight,
                    width: width-160,
                    alignment: Alignment.topLeft,
                    color: gridBodyBgColor,
                    child: SingleChildScrollView(
                      controller: body,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight,
                        alignment: Alignment.topCenter,
                        color:gridBodyBgColor,
                        child: SingleChildScrollView(
                          controller: verticalRight,
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:widget.gridData!.asMap().
                              map((i, value) => MapEntry(
                                  i,InkWell(
                                //   onTap: widget.voidCallback,
                                onTap: (){
                                  widget.func!(i);
                                  //setState(() {});
                                },
                                child: Container(

                                  decoration: BoxDecoration(
                                    // border: gridBottomborder,
                                    color: i%2!=0?Color(0xFFE9EFFF):Colors.transparent,
                                //    color: widget.selectedIndex==i?yellowColor:gridBodyBgColor,
                                  ),
                                  height: 50,
                                  margin: EdgeInsets.only(bottom:i==widget.gridData!.length-1?70: 0),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: widget.gridDataRowList!.asMap().map((j, v) {


                                        if(!v.isDate){
                                          if((10.0*value[v.columnName].toString().length)>v.width){
                                            setState(() {
                                              v.width=10.0*value[v.columnName].toString().length;
                                            });
                                          }
                                        }

                                        // print("${value.get(v.columnName)} ${v.width} ${10.0*value.get(v.columnName).toString().length}");

                                        return MapEntry(j,
                                          j==0?Container():v.isActive?!v.isDate?Container(
                                            width: v.width,
                                            height: 50,
                                            alignment: v.alignment,
                                            padding: v.edgeInsets,
                                            constraints: BoxConstraints(
                                                minWidth: 50,
                                                maxWidth: 200
                                            ),
                                            decoration: BoxDecoration(

                                            ),

                                            child: Text("${value[v.columnName].toString().isNotEmpty?value[v.columnName]??" ":" "}",
                                              style:widget.selectedIndex==i?TSWhite166:gridTextColor14,
                                            ),
                                          ):Container(
                                            width: v.width,
                                            height: 50,
                                            alignment: v.alignment,
                                            padding: v.edgeInsets,
                                            constraints: BoxConstraints(
                                                minWidth: 50,
                                                maxWidth: 200
                                            ),
                                            decoration: BoxDecoration(

                                            ),

                                            child: Text("${value[v.columnName]!=null?DateFormat('dd-MM-yyyy').format(DateTime.parse(value[v.columnName])):" "}",
                                              style:widget.selectedIndex==i?TSWhite166:gridTextColor14,
                                            ),
                                          )
                                              :Container(),
                                        );
                                      }
                                      ).values.toList()
                                  ),
                                ),
                              )
                              )
                              ).values.toList()
                          ),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),


            //not Scrollable
            Positioned(
              left: 0,
              child:widget.gridDataRowList!.isEmpty?Container(): Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                   clipBehavior: Clip.antiAlias,
                    decoration:BoxDecoration(
                      color: addNewTextFieldBorder,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                        //    bottomLeft: Radius.circular(10)
                        ),
                    ),
                    child: Container(
                      height: 50,
                      width: 145,
                      margin: EdgeInsets.only(left: 0,bottom: 1,top: 0),
                      padding: widget.gridDataRowList![0].edgeInsets,
                      alignment: widget.gridDataRowList![0].alignment,
                   //   clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(0))
                      ),
                      child: FittedBox(child: Text("${widget.gridDataRowList![0].columnName}",
                        style: TextStyle(fontFamily: 'RR',color: bgColor,fontSize: 16),)),

                    ),
                  ),
                  Container(
                    height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color:showShadow? gridBodyBgColor:Colors.transparent,
                        boxShadow: [
                          showShadow?  BoxShadow(
                            color: grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, -8), // changes position of shadow
                          ):BoxShadow(color: Colors.transparent)
                        ]
                    ),
                    child: Container(
                      height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight,
                      alignment: Alignment.topCenter,

                      child: SingleChildScrollView(
                        controller: verticalLeft,
                        scrollDirection: Axis.vertical,
                        child: Column(
                            children: widget.gridData!.asMap().
                            map((i, value) => MapEntry(
                                i,InkWell(
                              onTap: (){
                                widget.func!(i);
                                //setState(() {});
                              },
                              child:  Container(
                                alignment:widget.gridDataRowList![0].alignment,
                                padding: widget.gridDataRowList![0].edgeInsets,
                                margin: EdgeInsets.only(bottom:i==widget.gridData!.length-1?70: 0),
                                decoration: BoxDecoration(
                                  // border: gridBottomborder,
                                //  color: widget.selectedIndex==i?yellowColor:gridBodyBgColor,
                                  color: i%2!=0?Color(0xFFE9EFFF):Colors.transparent,
                                ),
                                height: 50,
                                width: 150,
                                constraints: BoxConstraints(
                                    maxWidth: 150
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    //color:value.invoiceType=='Receivable'? Colors.green:AppTheme.red,
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: !widget.gridDataRowList![0].isDate? Text("${value[widget.gridDataRowList![0].columnName]}",
                                      style:widget.selectedIndex==i?TSWhite166:gridTextColor14,
                                    ):
                                    widget.gridDataRowList![0].columnName!=null?Text("${widget.gridDataRowList![0].columnName.toString().isNotEmpty?widget.gridDataRowList![0].columnName!=null?
                                    DateFormat('dd-MM-yyyy').format(DateTime.parse(value[widget.gridDataRowList![0].columnName])):" ":" "}",
                                      style:widget.selectedIndex==i?TSWhite166:gridTextColor14,
                                    ):Container(),
                                  ),
                                ),
                              ),
                            )
                            )
                            ).values.toList()



                        ),
                      ),


                    ),
                  ),
                ],
              ),
            ),


            widget.gridData!.isEmpty?Container(
              width: SizeConfig.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70,),
                  Text("No Data Found",style: TextStyle(fontSize: 18,fontFamily:'RMI',color: grey),),
                  SvgPicture.asset("assets/nodata.svg",height: 350,),

                ],
              ),
            ):Container()



          ],
        )

    );
  }
}



class EmployeeReportDataTable extends StatefulWidget {

  List<ReportGridStyleModel2>? gridDataRowList=[];
  List<dynamic>? gridData=[];

  int? selectedIndex;
  VoidCallback? voidCallback;
  Function(int)? func;
  double? topMargin;//70 || 50
  double? gridBodyReduceHeight;// 260  // 140

  EmployeeReportDataTable({this.gridDataRowList,this.gridData,this.selectedIndex,this.voidCallback,this.func,this.topMargin,this.gridBodyReduceHeight});
  @override
  _EmployeeReportDataTableState createState() => _EmployeeReportDataTableState();
}

class _EmployeeReportDataTableState extends State<EmployeeReportDataTable> {


  ScrollController header=new ScrollController();
  ScrollController body=new ScrollController();
  ScrollController verticalLeft=new ScrollController();
  ScrollController verticalRight=new ScrollController();

  bool showShadow=false;





  @override
  void initState() {
    header.addListener(() {
      if(body.offset!=header.offset){
        body.jumpTo(header.offset);
      }
      if(header.offset==0){
        setState(() {
          showShadow=false;
        });
      }
      else{
        if(!showShadow){
          setState(() {
            showShadow=true;
          });
        }
      }
    });

    body.addListener(() {
      if(header.offset!=body.offset){
        header.jumpTo(body.offset);
      }
    });

    verticalLeft.addListener(() {
      if(verticalRight.offset!=verticalLeft.offset){
        verticalRight.jumpTo(verticalLeft.offset);
      }
    });

    verticalRight.addListener(() {
      if(verticalLeft.offset!=verticalRight.offset){
        verticalLeft.jumpTo(verticalRight.offset);
      }
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
     print("CustomTable");
    // print(widget.gridData);
    // print(gridDataRowList);
    // print(gridCol);
    // print(widget.selectedIndex);
    return Container(
        height: SizeConfig.screenHeight!-widget.topMargin!,
        width: SizeConfig.screenWidth,
        margin: EdgeInsets.only(top: widget.topMargin!),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color:gridBodyBgColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
        child: Stack(
          children: [

            //Scrollable
            Positioned(
              left:149,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: SizeConfig.screenWidth!-149,
                    color: showShadow? bgColor.withOpacity(0.8):bgColor,
                    child: SingleChildScrollView(
                      controller: header,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      child: Row(
                          children: widget.gridDataRowList!.asMap().
                          map((i, value) => MapEntry(i, i==0?Container():
                          value.isActive?Container(
                              alignment: value.alignment,
                              padding: value.edgeInsets,
                              width: value.width,

                              constraints: BoxConstraints(
                                  minWidth: 50,
                                  maxWidth: 200
                              ),
                              child: FittedBox(child: Text(value.columnName!,style: TSWhite166,))
                          ):Container()
                          ))
                              .values.toList()
                      ),
                    ),

                  ),
                  Container(
                    height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight!,
                    width: SizeConfig.screenWidth!-149,
                    alignment: Alignment.topLeft,
                    color: gridBodyBgColor,
                    child: SingleChildScrollView(
                      controller: body,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight!,
                        alignment: Alignment.topCenter,
                        color:gridBodyBgColor,
                        child: SingleChildScrollView(
                          controller: verticalRight,
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:widget.gridData!.asMap().
                              map((i, value) => MapEntry(
                                  i,InkWell(
                                //   onTap: widget.voidCallback,
                                onTap: (){
                                  widget.func!(i);
                                  //setState(() {});
                                },
                                child: Container(

                                  decoration: BoxDecoration(
                                    border: gridBottomborder,
                                    color: widget.selectedIndex==i?yellowColor:gridBodyBgColor,
                                  ),
                                  height: 50,
                                  margin: EdgeInsets.only(bottom:i==widget.gridData!.length-1?70: 0),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: widget.gridDataRowList!.asMap().map((j, v) {


                                        if(!v.isDate){
                                          if((10.0*value[v.columnName].toString().length)>v.width){
                                            setState(() {
                                              v.width=10.0*value[v.columnName].toString().length;
                                            });
                                          }
                                          if(value[v.columnName].toString().length<=4){
                                            setState(() {
                                              v.width=50;
                                            });
                                          }
                                        }

                                        // print("${value.get(v.columnName)} ${v.width} ${10.0*value.get(v.columnName).toString().length}");

                                        return MapEntry(j,
                                          j==0?Container():v.isActive?!v.isDate?Container(
                                            width: v.width,
                                            height: 50,
                                            alignment: v.alignment,
                                            padding: v.edgeInsets,
                                            constraints: BoxConstraints(
                                                minWidth: 50,
                                                maxWidth: 200
                                            ),
                                            decoration: BoxDecoration(

                                            ),

                                            child: Text("${value[v.columnName].toString().isNotEmpty?value[v.columnName]??" ":" "}",
                                              style:widget.selectedIndex==i?bgColorTS14:gridTextColor14,
                                            ),
                                          ):Container(
                                            width: v.width,
                                            height: 50,
                                            alignment: v.alignment,
                                            padding: v.edgeInsets,
                                            constraints: BoxConstraints(
                                                minWidth: 100,
                                                maxWidth: 200
                                            ),
                                            decoration: BoxDecoration(

                                            ),

                                            child: Text("${value[v.columnName]!=null?DateFormat('dd-MM-yyyy').format(DateTime.parse(value[v.columnName])):" "}",
                                              style:widget.selectedIndex==i?bgColorTS14:gridTextColor14,
                                            ),
                                          )
                                              :Container(),
                                        );
                                      }
                                      ).values.toList()
                                  ),
                                ),
                              )
                              )
                              ).values.toList()
                          ),
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),


            //not Scrollable
            Positioned(
              left: 0,
              child:widget.gridDataRowList!.isEmpty?Container(): Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    color: bgColor,
                    padding: widget.gridDataRowList![0].edgeInsets,
                    alignment: widget.gridDataRowList![0].alignment,
                    child: FittedBox(child: Text("${widget.gridDataRowList![0].columnName}",style: TSWhite166,)),

                  ),
                  Container(
                    height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight!,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color:showShadow? gridBodyBgColor:Colors.transparent,
                        boxShadow: [
                          showShadow?  BoxShadow(
                            color: grey.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, -8), // changes position of shadow
                          ):BoxShadow(color: Colors.transparent)
                        ]
                    ),
                    child: Container(
                      height: SizeConfig.screenHeight!-widget.gridBodyReduceHeight!,
                      alignment: Alignment.topCenter,

                      child: SingleChildScrollView(
                        controller: verticalLeft,
                        scrollDirection: Axis.vertical,
                        child: Column(
                            children: widget.gridData!.asMap().
                            map((i, value) => MapEntry(
                                i,InkWell(
                              onTap: (){
                                widget.func!(i);
                                //setState(() {});
                              },
                              child:  Container(
                                alignment:widget.gridDataRowList![0].alignment,
                                padding: widget.gridDataRowList![0].edgeInsets,
                                margin: EdgeInsets.only(bottom:i==widget.gridData!.length-1?70: 0),
                                decoration: BoxDecoration(
                                  border: gridBottomborder,
                                  color: widget.selectedIndex==i?yellowColor:gridBodyBgColor,

                                ),
                                height: 50,
                                width: 150,
                                constraints: BoxConstraints(
                                    maxWidth: 150
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    //color:value.invoiceType=='Receivable'? Colors.green:AppTheme.red,
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: !widget.gridDataRowList![0].isDate? Text("${value[widget.gridDataRowList![0].columnName]}",
                                      style:widget.selectedIndex==i?bgColorTS14:gridTextColor14,
                                    ):
                                    widget.gridDataRowList![0].columnName!=null?Text("${widget.gridDataRowList![0].columnName.toString().isNotEmpty?widget.gridDataRowList![0].columnName!=null?
                                    DateFormat('dd-MM-yyyy').format(DateTime.parse(value[widget.gridDataRowList![0].columnName])):" ":" "}",
                                      style:widget.selectedIndex==i?bgColorTS14:gridTextColor14,
                                    ):Container(),
                                  ),
                                ),
                              ),
                            )
                            )
                            ).values.toList()



                        ),
                      ),


                    ),
                  ),
                ],
              ),
            ),


            widget.gridData!.isEmpty?Container(
              width: SizeConfig.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70,),
                  Text("No Data Found",style: TextStyle(fontSize: 18,fontFamily:'RMI',color: grey),),
                  SvgPicture.asset("assets/nodata.svg",height: 350,),

                ],
              ),
            ):Container()



          ],
        )

    );
  }
}
