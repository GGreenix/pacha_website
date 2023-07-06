import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/PC_componnents/PCWEBComponent.dart';
import 'package:pacha_website/Componnets/mobile_componnents/MobileWEBComponnents.dart';
class MainPage extends StatefulWidget {

  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 45, 46),
        title: const Center(child: Text(
          "PACHA 3D PRINTS",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
      //  physics: const ,
        controller: _scrollController,
        child: SizedBox(
       height: 2500,
       
       child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
       if(constraints.maxWidth >= 739){
         return PCWEBComponent(constraints: constraints,);
       }
       else{
         return MobileWEBComponnents(constraints: constraints);
       }
        },
       )
        )
        
      )
      );
  }
}

