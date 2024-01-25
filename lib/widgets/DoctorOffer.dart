import 'package:flutter/material.dart';
class DoctorOffer extends StatelessWidget {
  const DoctorOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF203640),
      ),
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 85),
            child: Image.asset("assets/images/DoctorAhmed.png",width: 93,height: 114,),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("دكتور احمد ضاحى (امراض القلب)",style:TextStyle(
                    color: Colors.white
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("السبت /7:00 مساء   ",style: TextStyle(
                        color: Colors.white
                    ),),
                    Icon(Icons.calendar_today,color:Color(0xffFFCC70),size: 15,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("الثمن 90 ج ",style: TextStyle(
                      color: Color(0xffFFCC70),
                    ),),
                    Text("الكشف بنصف",style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
