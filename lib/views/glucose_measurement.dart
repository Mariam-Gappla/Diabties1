import 'package:flutter/material.dart';
import 'package:diabetes/widgets/CustomTextField.dart';
import 'package:diabetes/widgets/CustomTextFieldDropdown.dart';
import 'package:diabetes/widgets/PartScreenPressure.dart';
import 'package:diabetes/widgets/PartScreenSugar.dart';
import 'package:diabetes/widgets/PartScreenWeight.dart';
class GlucoseMeasurement extends StatefulWidget {
  GlucoseMeasurement({super.key});

  @override
  State<GlucoseMeasurement> createState() => _MyAppState();
}

class _MyAppState extends State<GlucoseMeasurement> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;
  int? index=2;
  List<bool> selecteditem=[false,false,false];
  List Design=[
    PartScreenSuger("mg/dl","قياس السكر"),
    PartScreenWeight("Kg","قياس الوزن"),
    PartScreenPressure("mmHg","mmHg","bpm","الانقباض","الانبساط","معدل ضربات القلب")

  ];
  Widget UiDesign()
  {
    if(index==0)
    {
      return Design[2];
    }
    else if(index==1)
    {
      return Design[1];
    }
    else
    {
      return Design[0];
    }
  }
  Widget AppBarTitle()
  {
    if(index==0)
    {
      return Text("قياس الضغط");
    }
    else if(index==1)
    {
      return Text("الوزن");
    }
    else
    {
      return Text("قياس السكر");
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            actions: [
              Center(child: AppBarTitle()),
              Padding(
                padding: const EdgeInsets.only(right:16,left: 120),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 38,
                  margin: EdgeInsets.only(left: 16,right: 16,bottom: 21),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("16-11-2023"),
                      Icon(Icons.calendar_today_outlined,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child:Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: _color1,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: IconButton(
                                  onPressed: (){
                                    index=0;
                                    _toggleColor(1);
                                    setState(() {
                                    });
                                  },
                                  icon: Icon(Icons.add_box_outlined,color: Colors.white,)),
                            ),
                            Text("قياس الضغط")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 79,left: 76),
                        child: Column(
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                color: _color2,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: IconButton(
                                  onPressed:(){
                                    index=1;
                                    _toggleColor(2);
                                    setState(() {
                                    });
                                  },
                                  icon: Icon(Icons.add_box_sharp,color: Colors.white,)),
                            ),
                            Text("وزن")
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              color: _color3,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: IconButton(
                                onPressed: (){
                                  index=2;
                                  _toggleColor(3);
                                  setState(() {
                                  });
                                },
                                icon: Icon(Icons.add_call,color: Colors.white,)),
                          ),
                          Text("قياس السكر")
                        ],
                      ),
                    ],
                  )
              ),
              SliverToBoxAdapter(
                child: UiDesign(),
              )
            ],
          ),
        )
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

/*
import 'package:diabetes/widgets/custom_button.dart';
import 'package:diabetes/widgets/custom_text_field.dart';
import 'package:diabetes/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/show_date_picker.dart';

class GlucoseMeasurement extends StatefulWidget {
  const GlucoseMeasurement({super.key});

  @override
  State<GlucoseMeasurement> createState() => _GlucoseMeasurementState();
}

class _GlucoseMeasurementState extends State<GlucoseMeasurement> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'قياس السكر',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              MyDatePickerScreen(),
              const SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _toggleColor(2);
                        },
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: _color2,
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
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
                      const Text('قياس السكر'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
               CustomTextField(
                hint: 'قياس السكر',
                fillColor: Colors.white,
                obscure: true,
                prefixIcon: FontAwesomeIcons.listNumeric,
                // showBorder: false,
              ),
              const SizedBox(
                height: 12,
              ),
               CustomTextField(
                hint: 'اسم الوجبه',
                fillColor: Colors.white,
                prefixIcon: FontAwesomeIcons.chevronCircleDown,

                // showBorder: false,
              ),
              const SizedBox(
                height: 36,
              ),
              CustomButton(
                text: 'حفظ',
                textcolor: Colors.white,
                color: Colors.black,
              ),
              const SizedBox(
                height: 21,
              ),
              const Text('او'),
              const SizedBox(
                height: 11,
              ),
              CustomButton(
                  text: 'بلوتوث',
                  width: double.infinity,
                  height: 65,
                  circular: 15,
                  textcolor: Colors.white,
                  color: Colors.black,
                  icon: Icons.bluetooth),
            ],
          ),
        ),
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
*/