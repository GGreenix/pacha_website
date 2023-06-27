import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/mobile_componnents/MobileOurTeam.dart';
import 'package:pacha_website/Componnets/mobile_componnents/MobileWelcomTile.dart';

import 'MobileBottomRow.dart';

class MobileWEBComponnents extends StatelessWidget {
    BoxConstraints constraints;

  MobileWEBComponnents({super.key,required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(color: Colors.white,)),
              Expanded(
                flex: 10,
                child: MobileWelcomeTile(constraints: constraints)
                          ),
        Expanded(
          flex: 35,
          child: MobileOurTeam(constraints: constraints,),
        ),
        Expanded(
          flex: 2,
                    child: MobileBottomRow())
      ],
    );
  }
}