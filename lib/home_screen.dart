import 'package:azkar_app/faqs_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
     const  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0 ;
   String  _content = 'الحمد الله ';

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF939680),
          centerTitle: true,
          title:
          Text('مسبحة الأذكار',
            style: GoogleFonts.arefRuqaa(
            fontSize: 26,
            fontWeight: FontWeight.bold,


          ),),
          
          actions: [

            IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/about_screen',
                      arguments:<String,dynamic>{
                    // 'massage':'واجهة عن التطبيق '
                  });
                },
                icon: Icon(Icons.info)
            ),

            IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FAQsScreen(message: 'واجهة الاسئلة الشائعة ',),),);
            }, icon: Icon(Icons.question_answer),
            ),


            PopupMenuButton<String>(
                onSelected: (String selectedItem){
                  if(selectedItem != _content){
                    setState(() {
                      print('setState');
                      // selectedItem = _content ;
                      _content = selectedItem ;
                      _counter = 0 ;
                    });
                  }
                  debugPrint('content : $_content');
                },
                itemBuilder: (context){
              return[
                PopupMenuItem(
                  value: 'الحمدلله',
                  height: 0,
                    child: Text(
                  'الحمدلله ',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),

                ),)),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'سبحان الله',
                  height: 0,
                    child: Text(
                  'سبحان الله ',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),

                ),)),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الا اله الا الله',
                  height: 0,
                    child: Text(
                  'الا اله الا الله ',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),

                ),)),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الله أكبر',
                  height: 0,
                    child: Text(
                  'الله أكبر ',
                  style: GoogleFonts.arefRuqaa(
                  fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF40513B),

                ),)),
                PopupMenuDivider(),
              ];
      }),
          ],




        ),
        body: Container(
          // alignment: AlignmentDirectional.center,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDL1VogayccekDftGS9IW71WEYnrZ2wCXTpg&usqp=CAU'

                    )
                  ),
                  shape: BoxShape.circle,
                  color: Color(0xFF939680),
                ),
              ),
              // SizedBox(height: 50,),
              Container(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF6A865C),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _content,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.arefRuqaa(
                        fontSize:25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                    ),

                    Container(
                      alignment: AlignmentDirectional.center,
                      color: Color(0xff1d5027),
                      height: 60,
                      width: 40,
                      child: Text(
                        //'$ _counter'
                        _counter.toString(),
                        textAlign: TextAlign.end,
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1d5027),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadiusDirectional.only(
                             topStart: Radius.circular(15),
                              bottomEnd: Radius.circular(15)
                             )
                           ),

                        ),
                          onPressed:(){
                            // _counter = _counter + 1;
                            // _counter += 1;
                            setState((){
                              _counter++;
                            });
                            debugPrint('_counter : $_counter');

                          },
                          child: Text(
                            'تسبيح',
                            style: GoogleFonts.arefRuqaa(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,

                          ),),

                      ),
                    ),
                    Expanded(
                      flex: 2 ,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff447ba6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(15),
                              topStart: Radius.circular(15),

                            )
                          ),


                        ),
                        onPressed:(){
                          // _counter = _counter + 1;

                          // _counter--;
                          setState((){
                            _counter = 0;
                          });
                          debugPrint('_counter : $_counter');

                        },
                          child: Text(
                            'اعادة',
                            style: GoogleFonts.arefRuqaa(
                              color: Colors.white,
                              fontSize: 16


                          ),),

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF34462D),
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                _counter++;
              });

        }),
      ),

    );
  }
}
