
import 'package:flutter/material.dart';
import 'package:pacha_website/constants.dart';

class Profile extends StatelessWidget {
  

  
  
  

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
      height: constraints.maxWidth<900? constraints.maxHeight/7:constraints.maxHeight/8,
      
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsPF) {
          if(constraints.maxWidth<900){
           return  Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(         
            
            image: AssetImage(this.imagePath),
            width: constraintsPF.maxHeight/2),
            
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(this.name, style: TextStyle(
            color: Constats.title_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(this.position,style: TextStyle(
            color: Constats.description_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text(this.description,style: TextStyle(
            color: Constats.description_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],)
      ],);
          }
          return  Row(
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(         
            height: constraintsPF.maxWidth,               
            image: AssetImage(this.imagePath),
            width: constraintsPF.maxHeight),
            
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(this.name, style: TextStyle(
            color: Constats.title_color,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(this.position,style: TextStyle(
            color: Constats.description_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text(this.description,style: TextStyle(
            color: Constats.description_color,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],)
      ]
      ,);
        },
      ),
    );
  }
}