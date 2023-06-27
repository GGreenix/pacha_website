
import 'package:flutter/material.dart';
import 'package:pacha_website/constants.dart';

class PCWelcomeTile extends StatelessWidget {
  const PCWelcomeTile({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color.fromARGB(255, 240, 255, 248),
    child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image(
          width: constraints.maxWidth/3,
          image: const AssetImage("lib/assests/printer.jpg"),)),
          Flexible(
            child: Column(children: [
              Spacer(flex: 2),
            Expanded(flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(Constats.title,
                  style:  TextStyle(
                    
                    shadows: const [Shadow(
                      color: Color.fromARGB(255, 153, 153, 153),
                      offset: Offset(-10, 10),
                      blurRadius: 4
                    )],
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: Constats.title_color),),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(Constats.description,
                  style: TextStyle(
                    fontSize: 25,
                    color: Constats.description_color),),
                )
                ],
              ),
            ),
              Spacer(flex: 1,)
                  ],
                  ),
          ),
        
          ],
        ),
                );
  }
}