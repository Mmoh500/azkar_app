import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({Key? key , required this.message}) : super(key: key);
  final String message ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF939680),
        title: Text('الاسئلة الشائعة',style: GoogleFonts.arefRuqaa(
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
          message,

          style: GoogleFonts.arefRuqaa(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color:  Color(0xFF000000),

          ),),


      ),
    );
  }
}
