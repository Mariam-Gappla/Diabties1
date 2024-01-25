import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key, required this.text});
  final String text;

  @override
  // ignore: library_private_types_in_public_api
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.text),
      ],
    );
  }
}