import 'package:flutter/material.dart';

class Service2Card extends StatelessWidget {
  Service2Card({super.key});

  final List<String> title = [
    "Editable",
    "Scalable",
    "High Resolution",
    "Logo Transparency",
    "3D Mock Up",
    "Social Media Kit",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(var i=0;i<title.length;i++)...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffe16398),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: SizedBox(
                        width: 130,
                        height: 100,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child:
                          Image.asset('assets/images/attr_service$i.png',width: 90,height: 40,),
                        ),
                      ),
                    ),
                    Text(title[i],style: const TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
