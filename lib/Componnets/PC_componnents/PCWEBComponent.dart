import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:pacha_website/Componnets/PC_componnents/AnimatedPicture.dart';
import 'package:pacha_website/Componnets/PC_componnents/BottomRow.dart';
import 'package:pacha_website/Componnets/PC_componnents/OurTeam.dart';
import 'package:pacha_website/Componnets/PC_componnents/PCOurTeam.dart';
import 'package:pacha_website/Componnets/PC_componnents/WelcomingTile.dart';

// ignore: must_be_immutable
class PCWEBComponent extends StatelessWidget {
  BoxConstraints constraints;
  
   PCWEBComponent({
    super.key,   required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.white,)),
              Expanded(
                flex: 15,
                child: PCWelcomeTile(constraints: constraints)
                          ),
        Expanded(
          flex: 10,
          child: PCWhyus(constraints: constraints,),
        ),
        Expanded(
          flex: 15,
          child: PCOurTeam(constraints: constraints,),
        ),
        Expanded(
          flex: 10,
          child: Constraintor(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return AnimatedPictures(constraints: constraints);
            },
          ), constraints: constraints),
        ),
        Expanded(
          flex: 2,
                    child: PCBottomRow(constraints: constraints,))
      ],
    );
  }
}





