import 'package:flutter/material.dart';

import '../../constants.dart';
import '../Profile.dart';

class MobileOurTeam extends StatelessWidget {
  final BoxConstraints constraints;

  const MobileOurTeam({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Our team",
                    style: TextStyle(
                      // fontFamily: 'Test',
                      color: Constants.title_color,
                      fontSize: 71
                      
                    )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Pacha 3D Prints was founded by a team of\nexperienced additive manufacturing specialists who shared a passion for providing top-of-the-line FDM printers and personalized customer service.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Constants.description_color),
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
                    name: Constants.tal_name,
                    position: Constants.tal_position,
                    description: Constants.tal_description,
                    imagePath: "lib/assests/tal.jpg",),
                    
                    Profile(constraints: constraints,
                    name: Constants.pacha_name,
                    position: Constants.pacha_position,
                    description: Constants.pacha_description,
                    imagePath: "lib/assests/pacha.jpg",),
                  ],
                ),
                          ),
                          constraints.maxWidth >= 1378? const Spacer(flex: 1,):Container(),
                        ],
                      ),
              ),
        Expanded(
           flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text("HAPPY CUSTOMERS",
                              style: TextStyle(
                                color: Constants.title_color,
                                fontSize: 60
                                
                              )),
                              Text(Constants.description_ourteam_1,style: TextStyle(
                                              color: Constants.description_color,
                                              fontSize: 20
                                              ,)),
                  ],
                ),
              ),
                ClipRRect(
                  
                        borderRadius: BorderRadius.circular(5),
                        child: Image(         
                          image: const AssetImage("lib/assests/happy_customers.png"),
                          height: constraints.maxWidth/1.6,)
                          
                      ),
            ],
          ),
        ),
        const Spacer(flex: 1,)
            ],
          );
  }
}