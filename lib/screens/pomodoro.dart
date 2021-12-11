import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/pomodoro-timer.jpg')),
            Expanded(
                child: Center(
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context,child)=> Text(CountText,
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
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
                  child:Icon(
                    Icons.play_arrow_rounded

                  )),
                  SizedBox(width: 30,),
                  FloatingActionButton(onPressed: (){
                    controller.reset();
                    },
                      child:Icon(
                          Icons.reset_tv
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
