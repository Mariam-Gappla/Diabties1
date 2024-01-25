import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? text2;
  String text3;
   CustomTextField(this.text2,this.text3);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12,left: 12,top: 34),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            hintText: text3,
            suffix: Text("$text2",style:TextStyle(color: Colors.black87)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xff000),
              ),
            ),
            disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
             color: Color(0xff000),
             ),
            ),
          ),
        ),
      ),
    );
  }
}
