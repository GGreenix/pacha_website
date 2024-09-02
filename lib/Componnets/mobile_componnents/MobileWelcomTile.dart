import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class MobileWelcomeTile extends StatelessWidget {
  final BoxConstraints constraints;

  const MobileWelcomeTile({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color.fromARGB(255, 240, 255, 248),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(),
        const Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(Constants.title_mobile,
                  style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:25,
                    color: Constants.title_color),
                  
                    ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 5,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DefaultTextStyle(
    style: const TextStyle(
                          fontSize: 15,
                          color: Constants.description_color),
    child: AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [
        TyperAnimatedText(Constants.description_mobile),
      ],
      
    ),
  ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image(
          width: constraints.maxWidth/3,
          image: const AssetImage("lib/assests/printer.jpg"),)),
      ],),
    );
  }
}