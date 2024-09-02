import 'package:flutter/material.dart';
import 'package:resume/Componnets/Constraintor.dart';
import 'package:resume/Componnets/Profile.dart';
import 'package:resume/constants.dart';


class PCOurTeam extends StatelessWidget {
  final BoxConstraints constraints;

  const PCOurTeam({super.key,required this.constraints});

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
    
        
      const Directionality(
          
          textDirection: TextDirection.rtl,
          child: Text("הצוות",
          style: TextStyle(
            color: Constants.title_color,
            fontSize: 70
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Profile(constraints: constraints,
            name: Constants.tal_name,
            position: Constants.tal_position,
            description: Constants.tal_description,
            imagePath: "lib/assests/tal.jpg",),
            
            Profile(constraints: constraints,
            name: Constants.pacha_name,
            position: Constants.pacha_position,
            description: Constants.pacha_description,
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