import 'package:diabetes/page/Home.dart';
import 'package:diabetes/views/add_person.dart';
import 'package:diabetes/views/chat_page.dart';
import 'package:diabetes/views/follow_activities.dart';
import 'package:diabetes/views/login.dart';
import 'package:diabetes/views/pageview.dart';
import 'package:diabetes/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        Home.id : (context) =>  Home(),
        BottomNavBar.id : (context) => BottomNavBar(),
        ScreenOfPageView.id :(context) => PageView(),
        ChatPage.id :(context) => ChatPage(),
        AddPerson.id :(context) => AddPerson(),
        FollowActivities.id :(context) =>  FollowActivities(),
      },
      debugShowCheckedModeBanner: false,
      home: ScreenOfPageView(),
      // initialRoute: ScreenOfPageView.id,
    );
  }
}
