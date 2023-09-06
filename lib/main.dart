import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'faqs_screen.dart';
import 'home_screen.dart';
import 'launch_screen.dart';

void main(){
  runApp(MyApp());
  List names = [];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:  [

      ],
      supportedLocales:const[
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('en'),



      // home: LaunchScreen(),
      initialRoute: '/launch_screen' ,
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/home_screen' : (context) => HomeScreen(),
        '/about_screen' : (context) => About_Screen(),
        '/faqs_screen' : (context) => FAQsScreen(message: 'بيانات واجهة الاسئلة الشائعة',),

      },

    );
  }
}
