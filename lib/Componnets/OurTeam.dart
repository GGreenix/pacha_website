import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Profile.dart';
import 'package:pacha_website/constants.dart';

class OurTeam extends StatelessWidget {
  final BoxConstraints constraints;

  const OurTeam({
    super.key,
    required this.constraints,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 60,right: 60,bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Our team",
              style: TextStyle(
                color: Constats.title_color,
                fontSize: 70
                ),
              ),
              Text("Pacha 3D Prints was founded by a team of\nexperienced additive manufacturing specialists who shared a passion for providing top-of-the-line FDM printers and personalized customer service.",
              style: TextStyle(
                fontSize: 20,
                color: Constats.description_color),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            constraints.maxWidth >= 1378? Spacer(flex: 1,):Container(),
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
        SizedBox(
          height: constraints.maxHeight/5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text("HAPPY\nCUSTOMERS",
                        style: TextStyle(
                          color: Constats.title_color,
                          fontSize: 70
                          ),
                        ),
                        Text(Constats.description_ourteam,style: TextStyle(
                                        color: Constats.description_color,
                                        fontSize: 20
                                        ),),
                                        Spacer()
                    
                      ],
                    ),
              ),
                ClipRRect(
                  
                        borderRadius: BorderRadius.circular(5),
                        child: Image(         
                          image: AssetImage("lib/assests/happy_customers.png"),
                          width: constraints.maxWidth/3),
                          
                      ),
            ],
          ),
        ),
        
      ],
      ),
    );
  }
}
