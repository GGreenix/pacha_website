import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Constraintor.dart';
import 'package:pacha_website/Componnets/Profile.dart';
import 'package:pacha_website/constants.dart';
import 'Animated logos.dart';
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
              Expanded(
                flex: 6,
                child: ClipRRect(
                  
                        borderRadius: BorderRadius.circular(5),
                        child: Image(         
                          image: AssetImage("lib/assests/happy_customers.jpg"),
                          
                          ),
                          
                      ),
              ),
              Spacer(flex: 2,),
                    Expanded(
                      flex: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            const Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: Text("?למה אנחנו",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 65, 110, 67),
                                      fontSize: 30
                                      ),
                                    ),
                                  ),
                            SizedBox(
                                width: constraints.maxWidth <= 1200 ?constraints.maxWidth/4:300,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(Constats.description_ourteam_2 ,style: TextStyle(
                                                  color: Constats.description_color,
                                                  fontSize: 20
                                                  ),),
                                ),
                              ),
                          ],),
                          Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                
                                children: [
                                  const Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: Text("הדפסת תלת מימד",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 65, 110, 67),
                                      fontSize: 30
                                      ),
                                    ),
                                  ),
                                   SizedBox(
                                     width: constraints.maxWidth <= 1200 ?constraints.maxWidth/4:300,
                                     child: Directionality(
                                       textDirection: TextDirection.rtl,
                                       child: Text(Constats.description_ourteam_1 ,style: TextStyle(
                                                       color: Constats.description_color,
                                                       fontSize: 20
                                                       ),),
                                     ),
                                   ),
                                  
                                                  
                              
                                ],
                              ),
                        ],
                      ),
                    ),
          ],
        ),
      Directionality(
        
        textDirection: TextDirection.rtl,
        child: Text("הצוות",
        style: TextStyle(
          color: Constats.title_color,
          fontSize: 70
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          imagePath: "lib/assests/pacha.jpg",),
        ],
      ),
      // Directionality(
      
      //           textDirection: TextDirection.rtl,
      //           child: Text("אנחנו הוקמנו על ידי קבוצה של מהנדסים בעלי ניסיון רב שנים בתכנון וייצור.\n מומחים בעלי שאיפה לייצוא של מוצר איכותי בטכנולוגיית FDM מהמתקדמות בשוק",
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Constats.description_color),
      //           ),
      //         ),
      
      AnimatedPictures(constraints: constraintsSmall,),
      AnimatedLogos(constraints: constraintsSmall,)
            ],
            );
              },
            ),
          ),
    );
  }
}


