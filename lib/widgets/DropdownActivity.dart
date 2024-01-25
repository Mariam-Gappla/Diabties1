import 'package:flutter/material.dart';

class DropdownActivity extends StatefulWidget {
  DropdownActivity();

  @override
  State<DropdownActivity> createState() => _CustomTextFieldDropdownState();
}

class _CustomTextFieldDropdownState extends State<DropdownActivity> {
  @override
  String? selectedItem;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12,right: 12,top: 9),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              disabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),

            hint: Text("النشاط"),
            value: selectedItem,
            items: ["مشى","جرى"].map((e){
              return DropdownMenuItem<String>(
                child: Text("$e"),
                value: e,
              );
            }).toList(),
            onChanged: (value){}),
      ),
    );
  }
}

