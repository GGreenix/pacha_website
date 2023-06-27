import 'package:flutter/material.dart';

import '../../constants.dart';
import '../Profile.dart';

class MobileOurTeam extends StatelessWidget {
  BoxConstraints constraints;

  MobileOurTeam({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Our team",
                    style: TextStyle(
                      color: Constats.title_color,
                      fontSize: 71
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Pacha 3D Prints was founded by a team of\nexperienced additive manufacturing specialists who shared a passion for providing top-of-the-line FDM printers and personalized customer service.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Constats.description_color),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          constraints.maxWidth >= 1378? const Spacer(flex: 1,):Container(),
                          Expanded(
                flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Profile(constraints: constraints,
                    name: Constats.tal_name,
                    position: Constats.tal_position,
                    description: Constats.tal_description,
                    imagePath: "lib/assests/tal.jpg",),
                    
                    Profile(constraints: constraints,
                    name: Constats.pacha_name,
                    position: Constats.pacha_position,
                    description: Constats.pacha_description,
                    imagePath: "lib/assests/tal.jpg",),
                  ],
                ),
                          ),
                          constraints.maxWidth >= 1378? Spacer(flex: 1,):Container(),
                        ],
                      ),
              ),
        Expanded(
           flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("HAPPY CUSTOMERS",
                            style: TextStyle(
                              color: Constats.title_color,
                              fontSize: 70
                              ),
                            ),
                            Text(Constats.description_ourteam,style: TextStyle(
                                            color: Constats.description_color,
                                            fontSize: 20
                                            ),),
                ],
              ),
                ClipRRect(
                  
                        borderRadius: BorderRadius.circular(5),
                        child: Image(         
                          image: AssetImage("lib/assests/happy_customers.png"),
                          height: constraints.maxHeight/6,)
                          
                      ),
            ],
          ),
        ),
        Spacer(flex: 1,)
            ],
          );
  }
}