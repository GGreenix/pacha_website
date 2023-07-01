
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Column(
                    
                    children: [
                      
                      Spacer(flex: 2),
                      Expanded(
                        flex: 12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: Image(
                            
                            width: constraints.maxWidth < 1038? constraints.maxWidth/3:512,
                            image: const AssetImage("lib/assests/printer.jpg"),)),
                      
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.orange),
                                splashFactory: NoSplash.splashFactory),
                              onPressed: (){},
                              child: Text("לחץ כאן להצעת מחיר", style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                width: 470,
                child: Column(children: [
                  const Spacer(flex: 2),
                Expanded(flex: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        fontSize: 70,
                        color: Constats.title_color),),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(Constats.description,
                      style: TextStyle(
                        fontSize: 25,
                        color: Constats.description_color),),
                    )
                    ],
                  ),
                ),
                      ],
                      ),
              ),
                ],
              ),
            ),
          ),
          
    
                );
  }
}