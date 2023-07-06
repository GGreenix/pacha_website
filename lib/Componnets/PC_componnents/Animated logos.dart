
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedLogos extends StatefulWidget {
  BoxConstraints constraints;
  AnimatedLogos({  
    super.key,
    required this.constraints
  });

  @override
  State<AnimatedLogos> createState() => _AnimatedLogosState();
}

class _AnimatedLogosState extends State<AnimatedLogos> with TickerProviderStateMixin{
    bool _visible = false;
      late AnimationController controller_1;
      late AnimationController controller_2;
      late AnimationController controller_3;
      late AnimationController controller_4;
      
      late Animation<double> animation_1 ;
      late Animation<double> animation_2 ;
      late Animation<double> animation_3 ;
      late Animation<double> animation_4 ;

      
      static const int duration = 350;
      
      static const double valueToStart = 0.2;

  
  @override
  void initState() {
     
    controller_1 = AnimationController(vsync: this,
    duration: Duration(milliseconds: duration));
    controller_2 = AnimationController(vsync: this,
    duration: Duration(milliseconds: duration));
    controller_3 = AnimationController(vsync: this,
    duration: Duration(milliseconds: duration));
    controller_4 = AnimationController(vsync: this,
    duration: Duration(milliseconds: duration));

    animation_1 = Tween(begin: 0.0, end: 1.0).animate(controller_1);
    animation_2 = Tween(begin: 0.0, end: 1.0).animate(controller_2);
    animation_3 = Tween(begin: 0.0, end: 1.0).animate(controller_3);
    animation_4 = Tween(begin: 0.0, end: 1.0).animate(controller_4);    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return VisibilityDetector(
      onVisibilityChanged: (VisibilityInfo info) { _visible?print("true"): setState(() {
    _visible = true;
    controller_1.value;
      controller_1.forward().whenComplete(() => controller_2.forward().whenComplete(() => controller_3.forward().whenComplete(() => controller_4.forward())));
      
    
      }
      );
      },
      key: Key("rows"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        FadeTransition(
      opacity: animation_1,
      child: ClipRRect(
              
                    borderRadius: BorderRadius.circular(5),
                    child: Image(         
                      image: AssetImage("lib/assests/happy_customers.png"),
                      width: widget.constraints.maxWidth/5
                      ),
                      
                  ),
    ),FadeTransition(
      opacity: animation_2,
      child: ClipRRect(
              
                    borderRadius: BorderRadius.circular(5),
                    child: Image(         
                      image: AssetImage("lib/assests/happy_customers.png"),
                      width: widget.constraints.maxWidth/5
                      ),
                      
                  ),
    ),FadeTransition(
      opacity: animation_3,
      child: ClipRRect(
              
                    borderRadius: BorderRadius.circular(5),
                    child: Image(         
                      image: AssetImage("lib/assests/happy_customers.png"),
                      width: widget.constraints.maxWidth/5
                      ),
                      
                  ),
    ),FadeTransition(
      opacity: animation_4,
      child: ClipRRect(
              
                    borderRadius: BorderRadius.circular(5),
                    child: Image(         
                      image: AssetImage("lib/assests/happy_customers.png"),
                      width: widget.constraints.maxWidth/5
                      ),
                      
                  ),
    )
        
        
      ],),
    );
  }
}