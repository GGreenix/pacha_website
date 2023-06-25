import 'package:flutter/material.dart';
import 'package:pacha_website/Componnets/PCWEBComponent.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
        child: SizedBox(
          height: 2000,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if(constraints.maxWidth >= 739){
                      return PCWEBComponent(constraints: constraints);
                    }
              else{
                      return const Placeholder();
              }
            },
          ),
        )
        
      ),
      );
  }
}

