import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  //InitState
  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  // Build
  @override 
  Widget build(BuildContext context) {
    debugPrint('build');

    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomCenter ,
            colors: [
            Color(0xFF9DC08B),
            // Color(0xFF3F5639),
            Color(0xFF4A8FA9),

          ],),
        ),
        child: Text('المسبحة الالكترونية ', style: GoogleFonts.tajawal(
          fontSize: 22,
          fontWeight: FontWeight.w900,
          color: Color(0xFF05355B),

        ),

      ),
    ),
      );
  }
}
