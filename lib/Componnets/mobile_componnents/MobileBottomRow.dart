import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class MobileBottomRow extends StatelessWidget {
  const MobileBottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(color: const Color.fromARGB(255, 37, 45, 46),
    child:  Row(
      
      children: [
        const Spacer(),
        Expanded(
          flex: 30,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    IconButton(onPressed: (){},
                  icon: const Icon(Icons.tiktok,color: Colors.white,)),
                  IconButton(onPressed: (){},
                  icon: const Icon(SocialMediaIcons.facebook,color: Colors.white,))
                    
                    
                    
                  ],),
                  Row(children: [
                    IconButton(onPressed: (){},
                  icon: const Icon(SocialMediaIcons.instagram,color: Colors.white,)),
                  IconButton(onPressed: (){},
                  icon: const Icon(SocialMediaIcons.whatsapp,color: Colors.white,))
                    
                    
                    
                  ],),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text("pacha3dprints@gmail.com",style: TextStyle(color: Colors.white,fontSize: 14)),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(Constants.tal_phone_number, style:  TextStyle(color: Colors.white,fontSize: 14)),
                  Text("Guy: +972-509025901",style:  TextStyle(color: Colors.white,fontSize: 14)),
                ],
              )

          ],),
        ),
        const Spacer(), 
      ],
    ),
    );
  }
}