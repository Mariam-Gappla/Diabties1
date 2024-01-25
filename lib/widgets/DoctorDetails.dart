import 'package:diabetes/views/DoctorReservation.dart';
import 'package:diabetes/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DoctorDetials extends StatefulWidget {
  const DoctorDetials({Key? key}) : super(key: key);

  @override
  State<DoctorDetials> createState() => _DoctorDetialsState();
}

class _DoctorDetialsState extends State<DoctorDetials> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFE7EEF2),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 155),
                            child: CircleAvatar(
                              backgroundColor: Color(0xFF000000),
                              radius: 17,
                              child: IconButton(
                                icon: isFavorite
                                    ? Icon(Icons.favorite)
                                    : Icon(Icons.favorite_border),
                                color: Colors.red,
                                iconSize: 19,
                                onPressed: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                              ),
                            ),
                          ),
                          Text(
                            "د سعيد محمد ",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Color(0xFF000000)),
                          ),
                        ],
                      ),
                      Text(
                        "استشاري جراحه و المسالك البوليه",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color(0xFF000000)),
                      ),
                      Row(
                        children: [
                          Text(
                            "4.9",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                color: Color(0xFF000000)),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xFFFFCC70),
                          ),
                          Text("(700)",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  color: Color(0xFF000000))),
                          Text(
                            "تقييم الزوار",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                color: Color(0xFF000000)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/images/DoctorSaied.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "16-شارع جمال عبدالناصر",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Icon(
                    Icons.location_on_sharp,
                    size: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "7:00 م",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Text(
                    "من",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Text(
                    "سبت و ثلاثاء",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Icon(
                    Icons.calendar_today,
                    size: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "130",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Text(
                    "سعر الكشف",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Icon(
                    Icons.shopping_cart_checkout_sharp,
                    size: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "20 دقيقه",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Text(
                    "مده الانتظار",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xFF000000)),
                  ),
                  Icon(
                    Icons.timer_outlined,
                    size: 15,
                  ),
                ],
              ),
            ),
            CustomButton(
              text: 'حجز',
              color: Colors.black,
              textcolor: Colors.white,
              width: double.infinity,
              height: 40,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DoctorReservation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
