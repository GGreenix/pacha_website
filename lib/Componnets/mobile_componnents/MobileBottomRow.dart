import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    IconButton(onPressed: (){},
                  icon: Icon(Icons.tiktok,color: Colors.white,)),
                  IconButton(onPressed: (){},
                  icon: Icon(SocialMediaIcons.facebook,color: Colors.white,))
                    
                    
                    
                  ],),
                  Row(children: [
                    IconButton(onPressed: (){},
                  icon: Icon(SocialMediaIcons.instagram,color: Colors.white,)),
                  IconButton(onPressed: (){},
                  icon: Icon(SocialMediaIcons.whatsapp,color: Colors.white,))
                    
                    
                    
                  ],),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text("pacha3dprints@gmail.com",style: GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 14))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tal: +972-504460672",style:  GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 14))),
                  Text("Guy: +972-509025901",style:  GoogleFonts.openSans(textStyle:TextStyle(color: Colors.white,fontSize: 14))),
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