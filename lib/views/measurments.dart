import 'package:diabetes/widgets/part_screen_toggle_measurment.dart';
import 'package:diabetes/widgets/show_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Measurments extends StatefulWidget {
  const Measurments({super.key});

  @override
  State<Measurments> createState() => _MeasurmentsState();
}

class _MeasurmentsState extends State<Measurments> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;
  int? index = 2;
// ignore: non_constant_identifier_names
  List Design = [
    PartScreen(),
    PartScreen(),
    PartScreen(),
  ];
// ignore: non_constant_identifier_names
  Widget UiDesign() {
    if (index == 0) {
      return Design[2];
    } else if (index == 1) {
      return Design[1];
    } else {
      return Design[0];
    }
  }

// ignore: non_constant_identifier_names
  Widget AppBarTitle() {
    if (index == 0) {
      return const Text("قياس الضغط");
    } else if (index == 1) {
      return const Text("الوزن");
    } else {
      return const Text("قياس السكر");
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Center(child: AppBarTitle()),
          const Padding(
            padding: EdgeInsets.only(right: 16, left: 120),
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: MyDatePickerScreen(),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          index = 0;
                          setState(() {});
                          _toggleColor(1);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: _color1,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.droplet,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('قياس السكر'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 79, left: 76),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          index = 1;
                          setState(() {});
                          _toggleColor(2);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: _color1,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.weightScale,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('وزن'),
                    ],
                  ),
                ),
                Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          index = 2;
                          setState(() {});
                          _toggleColor(3);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: _color3,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.handHoldingDroplet,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      const Text('قياس الضغط'),
                    ],
                  ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: UiDesign(),
          )
        ],
      ),
    );
  }

  void _toggleColor(int buttonNumber) {
    setState(() {
      _color1 = (buttonNumber == 1) ? Colors.black : Colors.grey;
      _color2 = (buttonNumber == 2) ? Colors.black : Colors.grey;
      _color3 = (buttonNumber == 3) ? Colors.black : Colors.grey;
    });
  }
}
