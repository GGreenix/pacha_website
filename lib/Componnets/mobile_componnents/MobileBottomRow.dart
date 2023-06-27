import 'package:flutter/material.dart';

class MobileBottomRow extends StatelessWidget {
  const MobileBottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white,fontSize: 12.5);
    return Container(color: const Color.fromARGB(255, 37, 45, 46),
    child:  Row(
      
      children: [
        Spacer(),
        Expanded(
          flex: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.tiktok,color: Colors.white,size: 25,),
                GestureDetector(
                  onTap: () => {print("sad")},
                  child: const Image(
                    height: 25,
                    image: AssetImage("lib/assests/instagram_logo.png")))
                
                
              ],),
              const Text("pacha3dprints@gmail.com",style: style),
              const Text("Tal: +972-504460672",style: style),
              const Text("Guy: +972-509025901",style: style)

          ],),
        ),
        Spacer(),
      ],
    ),
    );
  }
}