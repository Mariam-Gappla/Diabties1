import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: DateTime(2020, 4, 20),
      firstDate: DateTime(2019, 1, 15),
      lastDate: DateTime(2030, 11, 20),
      onDateSelected: (date) => print(date),
      leftMargin: 20,
      monthColor: Colors.blueGrey,
      dayColor: Colors.teal[200],
      activeDayColor: Colors.white,
      activeBackgroundDayColor: Colors.blue,
      dotsColor: const Color(0xFF333A47),
      selectableDayPredicate: (date) => date.day != 23,
      locale: 'en_ISO',
    );
  }
}
