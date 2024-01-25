import 'package:diabetes/views/follow_activities.dart';
import 'package:diabetes/views/glucose_measurement.dart';
import 'package:diabetes/views/profile_screen.dart';
import 'package:diabetes/views/Doctor.dart';
import 'package:diabetes/views/social_screen.dart';
import 'package:diabetes/widgets/barcode.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  static String id = 'Home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    GlucoseMeasurement(),
    ProfileScreen(),
    // PictureProduct(),
    Doctor(),
    // PictureProduct(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  // ignore: non_constant_identifier_names
  Widget CurrentScreen = const FollowActivities();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: CurrentScreen,
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(FontAwesomeIcons.camera),
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => Barcode(),
      //     ));
      //   },
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = const Doctor();
                          _currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'الرئيسيه',
                            style: TextStyle(
                              color:
                                  _currentIndex == 0 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = const FollowActivities();
                          _currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.trending_up,
                            color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'الأنشطه',
                            style: TextStyle(
                              color:
                                  _currentIndex == 1 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = SocialScreen();
                          _currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: _currentIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'مجتمع',
                            style: TextStyle(
                              color:
                                  _currentIndex == 2 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = ProfileScreen();
                          _currentIndex = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: _currentIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'بروفايل',
                            style: TextStyle(
                              color:
                                  _currentIndex == 3 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          CurrentScreen = Container();
                          _currentIndex = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: _currentIndex == 4 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'شات بوت',
                            style: TextStyle(
                              color:
                                  _currentIndex == 4 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          CurrentScreen =  Barcode();
                          _currentIndex = 5;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.camera,
                            color: _currentIndex == 5 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'باركود',
                            style: TextStyle(
                              color:
                                  _currentIndex == 5 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [

              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
