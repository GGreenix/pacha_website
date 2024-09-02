
import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class Profile extends StatelessWidget {
  

  
  final transFactor = 982;
  

  const Profile({
    super.key,
    required this.constraints,
    required this.name,
    required this.position,
    required this.description,
    required this.imagePath,

  });

  final String name,position,description, imagePath;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: constraints.maxWidth<transFactor? constraints.maxHeight/7:constraints.maxHeight/8,
      
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsPF) {
          if(constraints.maxWidth<transFactor){
           return  Column(
            children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(         
            
            image: AssetImage(imagePath),
            width: constraintsPF.maxHeight/2),
            
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text(name, style: const TextStyle(
            color: Constants.title_color,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(position,style: const TextStyle(
            color: Constants.description_color,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
          Text(description,style: const TextStyle(
            color: Constants.description_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],)
      ],);
          }
          return  Row(
        children: [
        
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(name, style: const TextStyle(
                color: Constants.title_color,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(position,style: const TextStyle(
                color: Constants.description_color,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            Text(description,style: const TextStyle(
              color: Constants.description_color,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
          ],),
        ),
        AspectRatio(
          aspectRatio: 18.98/28.29,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(         
              height: constraintsPF.maxWidth,               
              image: AssetImage(imagePath),
              width: constraintsPF.maxHeight),
              
          ),
        ),
      ]
      ,);
        },
      ),
    );
  }
}