import 'package:flutter/material.dart';

class SwipeMenu extends StatelessWidget {

  final List<String> title1;
  final List<String> title2;

  final String tagName1;
  const SwipeMenu({super.key, required this.title1, required this.title2, required this.tagName1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            for(var i=0;i<title1.length;i++)...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/${tagName1}_$i.png",width: 50,height: 50,),
                      const SizedBox(width: 10,),
                      Flexible(child: Text(title1[i],textAlign: TextAlign.center)),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
        Row(
          children: [
            for(var i=0;i<title2.length;i++)...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/${tagName1}_${i+title2.length}.png",width: 50,height: 50,),
                      const SizedBox(width: 10,),
                      Flexible(child: Text(title2[i],textAlign: TextAlign.center)),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ],
    );
  }
}
