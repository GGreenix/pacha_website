import 'package:flutter/material.dart';


class PCBottomRow extends StatelessWidget {
  BoxConstraints constraints;

  PCBottomRow({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    int flex = (-0.0237*constraints.maxWidth + 47.5).toInt();
    print(flex);
    return Container(color: const Color.fromARGB(255, 37, 45, 46),
    child:  Row(
      
      children: [
        const Spacer(flex: 1,),
        Expanded(
          flex: flex < 2? 2:flex,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                const Icon(Icons.tiktok,color: Colors.white,size: 25,),
                GestureDetector(
                  onTap: () => {print("sad")},
                  child: const Image(
                    height: 25,
                    image: AssetImage("lib/assests/instagram_logo.png")))
                
                
              ],),
              const Text("pacha3dprints@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20)),
              const Text("Tal: +972-504460672",style: TextStyle(color: Colors.white,fontSize: 20)),
              const Text("Guy: +972-509025901",style: TextStyle(color: Colors.white,fontSize: 20))

          ],),
        ),
        const Spacer(flex: 1,),
      ],
    ),
    );
  }
}