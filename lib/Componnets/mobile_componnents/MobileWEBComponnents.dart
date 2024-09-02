import 'package:flutter/material.dart';
import 'package:resume/Componnets/mobile_componnents/MobileWelcomTile.dart';

import 'MobileBottomRow.dart';
import 'MobileOurTeam.dart';

class MobileWEBComponnents extends StatelessWidget {
  final BoxConstraints constraints;

  const MobileWEBComponnents({super.key,required this.constraints});

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
        const Expanded(
          flex: 2,
                    child: MobileBottomRow())
      ],
    );
  }
}