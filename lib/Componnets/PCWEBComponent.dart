import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/BottomRow.dart';
import 'package:pacha_website/Componnets/OurTeam.dart';
import 'package:pacha_website/Componnets/WelcomingTile.dart';

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
                flex: 2,
                child: Container(color: Colors.white,)),
              Expanded(
                flex: 30,
                child: WelcomeTile(constraints: constraints)
                          ),
        Expanded(
          flex: 35,
          child: OurTeam(constraints: constraints,),
        ),
        Expanded(
          flex: 2,
                    child: BottomRow())
      ],
    );
  }
}





