import 'package:diabetes/views/DoctorReservation.dart';
import 'package:diabetes/views/chat_page.dart';
import 'package:diabetes/views/glucose_measurement.dart';
import 'package:diabetes/views/measurments.dart';
import 'package:diabetes/views/profile_screen.dart';
import 'package:diabetes/widgets/calender.dart';
import 'package:diabetes/widgets/custom_text_field_center_text.dart';
import 'package:diabetes/widgets/doctorcard_for_followActivity.dart';
import 'package:diabetes/widgets/pedometer.dart';
import 'package:diabetes/widgets/service_of_follow_activities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FollowActivities extends StatefulWidget {
  const FollowActivities({super.key});
  static String id = 'FollowActivities';

  @override
  State<FollowActivities> createState() => _FollowActivitiesState();
}

class _FollowActivitiesState extends State<FollowActivities> {
  @override
  Widget build(BuildContext context) {
    var userEmail = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatPage.id, arguments: userEmail);
              },
              icon: const Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
          actions: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'أهلا',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'طه حماده ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 20,
                    child: Image.asset('assets/images/Ellipse 4.jpg'),
                  ),
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomTextFieldCenterlable(
                hint: 'بحث',
                fillColor: Colors.white,
                prefixIcon: FontAwesomeIcons.bars,
                suffixIcon: Icons.search,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'تتبع الانشطه',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const Calender(),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffD9D9D9),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // CircleSlider(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffD9D9D9),
                      ),
                      child: const MyWidget(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 99,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffD9D9D9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                            child: Text(
                          'النبص في الدقيقه 68 ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/pulse.png',
                            ),
                            Image.asset(
                              'assets/images/pulse.png',
                            ),
                            Image.asset(
                              'assets/images/pulse.png',
                            ),
                            Image.asset(
                              'assets/images/pulse.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 48,
                    ),
                    Image.asset('assets/images/heart.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              const Text(
                'الخدمات',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Services(
                      text: 'قياس السكر',
                      icon: FontAwesomeIcons.hospital,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Measurments()),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                      child: Services(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorReservation()),
                      );
                    },
                    text: 'دكتور',
                    icon: FontAwesomeIcons.userDoctor,
                  )),
                  const SizedBox(
                    width: 23,
                  ),
                  Expanded(
                      child: Services(
                    text: 'رياضه',
                    icon: FontAwesomeIcons.running,
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('أحسن الأطباء'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DoctorCardForFollow(
                      NameOfDoc: "د مريم نعيم",
                      TypeOfDoc: "16-شارع جمال عبدالناصر",
                    ),
                    DoctorCardForFollow(
                      NameOfDoc: "د مريم نعيم",
                      TypeOfDoc: "16-شارع جمال عبدالناصر",
                    ),
                    DoctorCardForFollow(
                      NameOfDoc: "د مريم نعيم",
                      TypeOfDoc: "16-شارع جمال عبدالناصر",
                    ),
                    DoctorCardForFollow(
                      NameOfDoc: "د مريم نعيم",
                      TypeOfDoc: "16-شارع جمال عبدالناصر",
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 12,),
              // const Text('نسبة السكر كل يوم',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              // RadioButton(),
            ],
          ),
        ),
      ),
    );
  }
}
