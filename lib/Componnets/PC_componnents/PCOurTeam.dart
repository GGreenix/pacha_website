import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:pacha_website/Componnets/PC_componnents/Animated%20logos.dart';
import 'package:pacha_website/Componnets/PC_componnents/AnimatedPicture.dart';
import 'package:pacha_website/Componnets/Profile.dart';
import 'package:pacha_website/constants.dart';

class PCOurTeam extends StatelessWidget {
  BoxConstraints constraints;

  PCOurTeam({super.key,required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      color: const Color.fromARGB(255, 240, 255, 248),
      child: Constraintor(constraints: constraints, child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsSmall) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
    
        
      Directionality(
          
          textDirection: TextDirection.rtl,
          child: Text("הצוות",
          style: TextStyle(
            color: Constats.title_color,
            fontSize: 70
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Profile(constraints: constraints,
            name: Constats.tal_name,
            position: Constats.tal_position,
            description: Constats.tal_description,
            imagePath: "lib/assests/tal.jpg",),
            
            Profile(constraints: constraints,
            name: Constats.pacha_name,
            position: Constats.pacha_position,
            description: Constats.pacha_description,
            imagePath: "lib/assests/pacha.jpg",),
          ],
        ),
        
        
       
      ],);
        },
      )),
    )
    ;
  }
}