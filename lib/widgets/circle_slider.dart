import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircleSlider extends StatefulWidget {
  const CircleSlider({Key? key}) : super(key: key);

  @override
  _CircleSliderState createState() => _CircleSliderState();
}

class _CircleSliderState extends State<CircleSlider>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double counter = 0.0;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        counter += 0.05;
        if (counter > 1.0) {
          counter = 0.0;
        }
      });
    });
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // قم بتشغيل الرسوم المتحركة
    _controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 60.0,
      lineWidth: 8.0,
      animation: true,
      center: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.only(left: 20.0),
            child: const Icon(
              FontAwesomeIcons.walking,
              size: 25.0,
              color: Colors.white,
            ),
          ),
          //  Text(
          //   '${(counter * 100).toInt()}',
          //   style:const TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 12.0,
          //     color: Colors.blue,
          //   ),
          // ),
          // MyWidget(),
        ],
      ),
      percent: counter,
      progressColor: Colors.blue,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
