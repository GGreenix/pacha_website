import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pacha_website/constants.dart';

class MobileWelcomeTile extends StatelessWidget {
  BoxConstraints constraints;

  MobileWelcomeTile({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color.fromARGB(255, 240, 255, 248),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(),
        Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(Constats.title_mobile,
                  style:  GoogleFonts.openSans(
                    textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:25,
                    color: Constats.title_color),
                  )
                    ),
                ),
                Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(Constats.description,
                        style: GoogleFonts.openSans(textStyle:TextStyle(
                          fontFamily: Constats.title_fontFamily,
                          fontSize: 15,
                          color: Constats.description_color))
                          ,),
                      ),
                    ),
                    Spacer(),
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