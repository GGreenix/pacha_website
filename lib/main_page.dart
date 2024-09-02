import 'package:flutter/material.dart';
import 'package:resume/Componnets/PC_componnents/PCWEBComponent.dart';
import 'package:resume/Componnets/mobile_componnents/MobileWEBComponnents.dart';
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
        
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              const Text(
                "CACTUS PRINTS",
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 247, 212),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                  ),
                ),
                ClipRRect(
                borderRadius: BorderRadius.circular(double.infinity),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 126, 255, 130),
              
                  
                  border: Border.all(color: Colors.black, width: 0.0),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(100))),
                  child: const Center(child: Row(
                    
                    children: [
                      Text(" "),
                      Icon(Icons.phone),
                      Text(" +972-509025901 "),
                    ],
                  )),
                  ),
              ),
                
            ],
          ),
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

