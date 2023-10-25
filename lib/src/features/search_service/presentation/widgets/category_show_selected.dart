import 'package:flutter/material.dart';

class CategoryShowSelected extends StatelessWidget {
  CategoryShowSelected({super.key});

  final List<String> title = [
    "กราฟิกและการออกแบบ",
    "การตลาดดิจิทัล",
    "การเขียนและการแปล",
    "วีดีโอและภาพเคลื่อนไหว",
    "เพลงและเสียง",
    "การเขียนโปรแกรมและเทคโนโลยี",
  ];

  final List<String> subtitle = [
    "โลโก้, เอกลักษณ์ของแบรนด์, การเล่นเกมส์",
    "การตลาดโซเชียลมีเดีย,การปรับแต่งเว็บไซต์ให้ติดอันดับบนเครื่องมือการค้นหา (SEO)",
    "บทความ & โพสต์บล็อก, การแปลภาษา",
    "การตัดต่อวิดีโอและโฆษณา",
    "โปรดิวเซอร์และนักแต่งเพลง มิกซ์ & มาสเตอร์ริ่ง",
    "การพัฒนาเว็บไซต์, การบำรุงรักษาเว็บไซต์",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("สิ่งที่คุณสนใจ",style: TextStyle(fontSize: 17),),
                Text("แก้ไข",style: TextStyle(color: Color(0xFFE793B8),),),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: title.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                    child: ListTile(
                      leading: Image.asset("assets/images/category_$index.png",width: 44,height: 44,),
                      title: Text(title[index]),
                      subtitle: Text(subtitle[index]),
                    ),
                  ),
                );
              },),
          ),
        ],
      ),
    );
  }
}
