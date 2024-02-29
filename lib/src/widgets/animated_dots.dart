import 'package:flutter/material.dart';

class AnimatedDots extends StatefulWidget {
  const AnimatedDots({Key? key}) : super(key: key);

  @override
  State<AnimatedDots> createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  double opacity = 0;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )
      //..animateTo(1)
      ..repeat();
    controller.addListener(() {
      
      setState(() {
        opacity = controller.value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(color: Color.fromARGB(255, 252, 31, 2)),
      height: MediaQuery.of(context).size.height*0.01,
      width: MediaQuery.of(context).size.width*0.06,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(252, 31, 2, opacity+0.66)
              
            ),
            
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(252, 31, 2, opacity+0.33)
              
            ),
            
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(252, 31, 2, opacity+0)
              
            ),
            
          )
        ],
      ),
    );
  }
}
