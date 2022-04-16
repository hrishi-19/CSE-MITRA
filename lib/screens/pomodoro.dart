import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Pomodoro extends StatefulWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro>with TickerProviderStateMixin {
  late AnimationController controller;
  bool playing=false;

  @override
  void initState() {
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(minutes: 25));
  }
  String get CountText{
    Duration count=controller.duration! * controller.value;
    return "${(count.inMinutes %60).toString().padLeft(2,'0')}:${(count.inSeconds %60).toString().padLeft(2,'0')}";
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade200,
        title: Text("Assignments",
          style: GoogleFonts.josefinSans(
            color:HexColor("#665DD0"),
            fontWeight: FontWeight.bold,
            fontSize: 25,

          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          child: Column(
            children: [
               Center(child: Image(image: AssetImage('assets/images/pomodoro.png'))),
              Expanded(
                  child: Center(
                    child: AnimatedBuilder(
                      animation: controller,
                      builder: (context,child)=> Text(CountText,
                      style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF303030)
                      ),),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                        backgroundColor: HexColor("#4F42BB"),
                        onPressed: (){
                      if(controller.isAnimating){
                        controller.stop();
                        setState(() {
                          playing=false;
                        });
                      }else{
                        controller.reverse(from:controller.value==0?1.0:controller.value);
                        setState(() {
                          playing=true;
                        });
                      }

                    },
                        elevation: 1.0,
                    child:Icon(
                      Icons.play_arrow_rounded,

                    )),
                    SizedBox(width: 30,),
                    FloatingActionButton(
                      backgroundColor: HexColor("#4F42BB"),
                      onPressed: (){
                      controller.reset();


                      }
                      ,
                        child:Icon(
                            Icons.reset_tv
                        ),
                      elevation: 1.0,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
