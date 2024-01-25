import 'package:flutter/material.dart';
class BarApp extends StatelessWidget {
  const BarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 140),
            child: Icon(Icons.add_alert_outlined,color:Color(0xFF0A6FA0) ,size: 24,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 140),
            child: Text("دكتور",style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 18,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.arrow_forward_ios_outlined,size: 24,color: Color(0xFF0F1828),),
          )
        ],
      ),
    );
  }
}
