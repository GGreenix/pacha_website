
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/Animations/FadeInTextAnimation.dart';
import 'package:pacha_website/constants.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

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
                        
                        ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 0, 255, 8)),
                            splashFactory: NoSplash.splashFactory),
                          onPressed: (){},
                          icon: Icon(SocialMediaIcons.whatsapp,size: 40,),
                          label: Text("לחץ כאן להצעת מחיר", style: TextStyle(color: Colors.white, fontSize: 40),))
                          
                      ],
                    ),
                    Spacer(),
                    Flexible(
                      flex: 5,
                  child: animatedTitles(constraints: constraints),
                ),
                  ],
                ),
              ),
            ),
          ),
          
    
                );
  }
}

class animatedTitles extends StatefulWidget {
  const animatedTitles({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  State<animatedTitles> createState() => _animatedTitlesState();
}

class _animatedTitlesState extends State<animatedTitles> {
  bool _isTitleFinished = false;
  
  bool _isDescritptionFinished = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 475,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: DefaultTextStyle(
            style: TextStyle(
              
              shadows: const [Shadow(
                color: Color.fromARGB(255, 153, 153, 153),
                offset: Offset(-10, 10),
                blurRadius: 6
              )],
              fontWeight: FontWeight.bold,
              fontSize: widget.constraints.maxWidth < 1200? 50:70,
              color: Constats.title_color),
            child: AnimatedTextKit(
              onFinished: () => {
          setState((){
            _isTitleFinished = true;
          })
              },
              totalRepeatCount: 1,
              animatedTexts: [
          TyperAnimatedText(Constats.title),
          
              ],
              
            ),
          ),
          ),
        ),
        SizedBox(
          height: 136,
          child: _isTitleFinished? Directionality(
          textDirection: TextDirection.rtl,
          child: DefaultTextStyle(
    style: TextStyle(
            fontSize: widget.constraints.maxWidth < 1200? 20:25,
            color: Constats.description_color),
    child: _isDescritptionFinished? Text(Constats.description):AnimatedTextKit(
      // repeatForever: true,
      
      totalRepeatCount: 1,
      animatedTexts: [
        FadeInAnimatedText(
          Constats.description
          )
        
      ],
      
    ),
  ),
        ):Directionality(
          textDirection: TextDirection.rtl,
          child: Text(Constats.description,
          style: TextStyle(
            fontSize: widget.constraints.maxWidth < 1200? 20:25,
            color: Colors.transparent),),
        ),
        )
        ],
      );
  }
}