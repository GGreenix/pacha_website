import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:pacha_website/Componnets/Profile.dart';
import 'package:pacha_website/constants.dart';
import 'AnimatedPicture.dart';

class PCOurTeam extends StatelessWidget {
  final BoxConstraints constraints;
  PCOurTeam({
    super.key,
    required this.constraints,  

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Constraintor(
            constraints: constraints,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraintsSmall) {
                return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Padding(
        padding: constraints.maxWidth < 1200 ? EdgeInsets.symmetric(horizontal: 60):EdgeInsets.all(0),
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
        mainAxisAlignment: constraints.maxWidth <= 1200 ? MainAxisAlignment.spaceAround:MainAxisAlignment.spaceBetween,
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
      Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
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
                                    
                
                  ],
                ),
              ClipRRect(
                
                      borderRadius: BorderRadius.circular(5),
                      child: Image(         
                        image: AssetImage("lib/assests/happy_customers.png"),
                        width: constraintsSmall.maxWidth/3),
                        
                    ),
          ],
        ),
      AnimatedPictures(constraints: constraintsSmall,),
            ],
            );
              },
            ),
          ),
    );
  }
}


