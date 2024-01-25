import 'package:diabetes/models/AppointementsModel.dart';
import 'package:diabetes/views/DoctorsScreen.dart';
import 'package:diabetes/widgets/Appointments.dart';
import 'package:diabetes/widgets/BarApp.dart';
import 'package:diabetes/widgets/Comments.dart';
import 'package:diabetes/widgets/Time.dart';
import 'package:flutter/material.dart';

class DoctorReservation extends StatelessWidget {
  const DoctorReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Appointment> Appointments = [
      Appointment("سبت", "24/8"),
      Appointment("الاحد", "25/8"),
      Appointment("الاثنين", "26/8"),
      Appointment("الثلاثاء", "27/8"),
      Appointment("الاربعاء", "28/8"),
      Appointment("الخميس", "29/8"),
      Appointment("الجمعه", "30/8")
    ];

    final List<String> times = [
      "8:00م",
      "9:00م",
      "10:00م",
      "11:00م",
      "12:00ص",
      "1:00ص",
      "11:00م",
      "12:00ص",
      "1:00ص",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          BarApp(),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 210,
                          height: 130,
                          color: const Color(0xFFFFFFFF),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("4.1"),
                                  CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Color(0xFF000000),
                                    child: Icon(
                                      Icons.star,
                                      size: 12,
                                    ),
                                  ),
                                  Text("دكتور سعيد الحسينى"),
                                ],
                              ),
                              Text("استشارى باطنه"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("16-شارع جمال عبد الناصر"),
                                  CircleAvatar(
                                    radius: 8,
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      size: 12,
                                    ),
                                    backgroundColor: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("خمس سنين من الخبره العلميه"),
                                  CircleAvatar(
                                    radius: 8,
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      size: 12,
                                    ),
                                    backgroundColor: Color(0xFF000000),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("130 جنيه"),
                                  Text("سعر الكشف"),
                                  CircleAvatar(
                                    radius: 8,
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      size: 12,
                                    ),
                                    backgroundColor: Color(0xFF000000),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, bottom: 22),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Rectangle 12425.png',
                                height: 134,
                                width: 131,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Text("150 "),
                        Text("الزيارات  (150)| "),
                        Text("عن الطبيب"),
                      ],
                    ),
                    const Text(
                      "سعيد الحسيني: طبيب استشاري أمراض الجهاز الهضمي والكبد في مستشفى القصر العيني بالقاهرة. تخرج من كلية الطب بجامعة القاهرة عام 2017 ، وحصل على درجة الماجستير في أمراض الجهاز الهضمي والكبد عام 2020.",
                      textAlign: TextAlign.right,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 27, bottom: 15),
                      child: Text("الايام"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 11),
                      child: SizedBox(
                        height: 80,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Appointments.length,
                          itemBuilder: (context, index) =>
                              AppointmentsWidget(Appointments[index]),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text("الوقت"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 12.0,
                        children: times.map((time) => Time(time)).toList(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: const Color(0xFF000000),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.messenger_outline)),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DoctorsScreen()));
                            },
                            child: Text("حجز"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF000000)),
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(261, 51)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("اضافه تعليق"),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add)),
                        const SizedBox(
                          width: 160,
                        ),
                        const Text("(250)"),
                        const Text("  التعليقات"),
                      ],
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => const Comments(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
