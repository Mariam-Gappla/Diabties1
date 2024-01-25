import 'package:diabetes/models/AppointementsModel.dart';
import 'package:flutter/material.dart';
class AppointmentsWidget extends StatelessWidget {
    AppointmentsWidget(this.appointment);
 Appointment appointment;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width:56 ,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: Color(0xFFE7EEF2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(appointment.day!),
          Text(appointment.Date!),
        ],
      ),
    );
  }
}
