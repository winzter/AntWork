import 'package:flutter/material.dart';

class Service3Card extends StatelessWidget {
  Service3Card({Key? key}) : super(key: key);

  final List<String> title = [
    "Top Rated Seller",
    "Rated Seller",
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
                          Image.asset('assets/images/seller_level$i.png',width: 90,height: 50,),
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
