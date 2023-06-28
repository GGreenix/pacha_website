import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileBottomRow extends StatelessWidget {
  const MobileBottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(color: const Color.fromARGB(255, 37, 45, 46),
    child:  Row(
      
      children: [
        Spacer(),
        Expanded(
          flex: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.tiktok,color: Colors.white,size: 25,),
                GestureDetector(
                  onTap: () => {},
                  child: const Image(
                    height: 25,
                    image: AssetImage("lib/assests/instagram_logo.png")))
                
                
              ],),
              Text("pacha3dprints@gmail.com",style: GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 17))),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tal: +972-504460672",style:  GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 17))),
                  Text("Guy: +972-509025901",style:  GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 17))),
                ],
              )

          ],),
        ),
        Spacer(),
      ],
    ),
    );
  }
}