import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class About_Screen extends StatefulWidget {
  const About_Screen({super.key});
  @override
  State<About_Screen> createState() => _MyAppState();
}

class _MyAppState extends State<About_Screen> {
  String _massage = 'لا يوجد رسالة';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null && modalRoute.settings.arguments != null){
      debugPrint('${modalRoute.settings.arguments}');
      if(modalRoute.settings.arguments is Map<String,dynamic>){
        Map<String,dynamic>map =modalRoute.settings.arguments as Map<String,dynamic> ;
        if(map.containsKey('massage')){
          _massage = map['massage'];
        }
      }

    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF939680),
        title: Text('عن التطبيق',style: GoogleFonts.arefRuqaa(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomCenter ,
            colors: [
              Color(0xFF394B30),
              // Color(0xFF3F5639),
              Color(0xFF939680),

            ],
          ),
        ),
        child:
        Text(
          _massage,

        style: GoogleFonts.arefRuqaa(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color:  Color(0xFF000000),

        ),),


        ),
      );
  }
}
