
import 'package:flutter/material.dart';
import 'package:pacha_website/constants.dart';

import '../Constraintor.dart';

class PCWelcomeTile extends StatelessWidget {
  const PCWelcomeTile({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth,
      color:  const Color.fromARGB(255, 240, 255, 248),
    child:  
          Center(
            child: Constraintor(
              
              constraints: constraints,
              child: Padding(
                          padding: constraints.maxWidth < 1200 ? EdgeInsets.symmetric(horizontal: 60):EdgeInsets.all(0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        
                        ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          child: Image(
                        
                        width: constraints.maxWidth < 1200? constraints.maxWidth/3:512,
                        image: const AssetImage("lib/assests/printer.jpg"),)),
                        
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                            splashFactory: NoSplash.splashFactory),
                          onPressed: (){},
                          child: Text("לחץ כאן להצעת מחיר", style: TextStyle(color: Colors.white),))
                      ],
                    ),
                    Spacer(),
                    Flexible(
                      flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(Constats.title,
                        style:  TextStyle(
                          
                          shadows: const [Shadow(
                            color: Color.fromARGB(255, 153, 153, 153),
                            offset: Offset(-10, 10),
                            blurRadius: 6
                          )],
                          fontWeight: FontWeight.bold,
                          fontSize: constraints.maxWidth < 1200? 50:70,
                          color: Constats.title_color),),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(Constats.description,
                        style: TextStyle(
                          fontSize: constraints.maxWidth < 1200? 20:25,
                          color: Constats.description_color),),
                      )
                      ],
                    ),
                ),
                  ],
                ),
              ),
            ),
          ),
          
    
                );
  }
}