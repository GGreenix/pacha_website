import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

import '../Constraintor.dart';


class PCBottomRow extends StatelessWidget {
  final BoxConstraints constraints;

  const PCBottomRow({super.key, required this.constraints});
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
              icon: const Icon(Icons.tiktok,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: const Icon(SocialMediaIcons.facebook,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: const Icon(SocialMediaIcons.instagram,color: Colors.white,)),
              IconButton(onPressed: (){},
              icon: const Icon(SocialMediaIcons.whatsapp,color: Colors.white,))
              
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