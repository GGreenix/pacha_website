import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:visibility_detector/visibility_detector.dart';


class PCBottomRow extends StatelessWidget {
  BoxConstraints constraints;

  PCBottomRow({super.key, required this.constraints});
  static const _fonst_size = 17.0;
  @override
  Widget build(BuildContext context) {
    
    
    return Stack(children: [
      Container(
      width: constraints.maxWidth,
      color: const Color.fromARGB(255, 37, 45, 46),      
    ),
    Center(
      child: Constraintor(
        constraints: constraints,
        child: Row(
          mainAxisAlignment: constraints.maxWidth > 1200? MainAxisAlignment.spaceBetween:MainAxisAlignment.spaceAround,
          children: [
            Row(children: [
              IconButton(onPressed: (){},
              icon: Icon(Icons.tiktok,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: Icon(SocialMediaIcons.facebook,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: Icon(SocialMediaIcons.instagram,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: Icon(SocialMediaIcons.whatsapp,color: Colors.white,))
              
            ],),
            const Text("pacha3dprints@gmail.com",style: TextStyle(color: Colors.white,fontSize: _fonst_size)),
            const Text("Tal: +972-504460672",style: TextStyle(color: Colors.white,fontSize: _fonst_size)),
            const Text("Guy: +972-509025901",style: TextStyle(color: Colors.white,fontSize: _fonst_size))
        
        ],),
      ),
    ),
    ],);
  }
}