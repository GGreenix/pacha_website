import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:visibility_detector/visibility_detector.dart';


class PCBottomRow extends StatelessWidget {
  BoxConstraints constraints;

  PCBottomRow({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    // int flex = (-0.0237*constraints.maxWidth + 47.5).toInt();
    
    return Stack(children: [
      Container(
      width: constraints.maxWidth,
      color: const Color.fromARGB(255, 37, 45, 46),      
    ),
    Center(
      child: Constraintor(
        constraints: constraints,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [
              const Icon(Icons.tiktok,color: Colors.white,size: 25,),
              GestureDetector(
                onTap: () => {},
                child: const Image(
                  height: 25,
                  image: AssetImage("lib/assests/instagram_logo.png")))
              
              
            ],),
            const Text("pacha3dprints@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20)),
            const Text("Tal: +972-504460672",style: TextStyle(color: Colors.white,fontSize: 20)),
            const Text("Guy: +972-509025901",style: TextStyle(color: Colors.white,fontSize: 20))
        
        ],),
      ),
    ),
    ],);
  }
}