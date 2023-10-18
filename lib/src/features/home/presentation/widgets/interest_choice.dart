import 'package:antwork/src/features/home/presentation/pages/services_page.dart';
import 'package:flutter/material.dart';

class InterestChoice extends StatelessWidget {
  InterestChoice({Key? key}) : super(key: key);

  final List<String> title1 = [
    "สร้างเนื้อหาโซเชียลมีเดีย",
    "แก้ไขรูปภาพ",
    "รับถ่ายภาพระดับมืออาชีพ",
  ];

  final List<String> title2 = [
    "พัฒนาเอกลักษณ์ของแบรนด์",
    "สร้างการออกแบบพร้อมพิมพ์",
    "พัฒนาทักษะการเล่นเกมส์",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    children: [
                      Expanded(
                          flex:10,
                          child: Image.asset("assets/images/interest_$i.png")),
                      const SizedBox(width: 10,),
                       Expanded(
                          flex:25,
                          child: Text(title1[i],textAlign: TextAlign.center)),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex:15,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xff68D5E8),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child:const Row(
                            children: [
                              Icon(Icons.add,size: 18,color: Colors.white),
                              Text("Add",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      )
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
                    children: [
                      Expanded(
                          flex:10,
                          child: Image.asset("assets/images/interest_${i+3}.png")),
                      const SizedBox(width: 10,),
                      Expanded(
                          flex:25,
                          child: Text(title2[i],textAlign: TextAlign.center)),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex:15,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xff68D5E8),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child:const Row(
                            children: [
                              Icon(Icons.add,size: 18,color: Colors.white),
                              Text("Add",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      )
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
