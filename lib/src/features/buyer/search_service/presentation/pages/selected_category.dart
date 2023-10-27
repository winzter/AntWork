import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectedCategory extends StatelessWidget {
  SelectedCategory({super.key});

  final List<String> title = [
    "กราฟิกและการออกแบบ",
    "การตลาดดิจิทัล",
    "การเขียนและการแปล",
    "วีดีโอและภาพเคลื่อนไหว",
    "เพลงและเสียง",
    "การเขียนโปรแกรมและเทคโนโลยี",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff68D5E8),
                Color(0xffF394BC),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).devicePixelRatio * 20,
                horizontal: MediaQuery.of(context).devicePixelRatio * 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "เลือกสิ่งที่คุณสนใจ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          "assets/icons/cross.svg",
                          width: 35,
                          height: 35,
                        )),
                  ],
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      "โปรดเลือกบริการอย่างน้อย 1 รายการต่อไปนี้",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ))
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisExtent: 170,
                        maxCrossAxisExtent:
                            MediaQuery.of(context).size.width * 0.5,
                        childAspectRatio: 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffe16398),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ]),
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
                                    child: Image.asset(
                                      "assets/images/category_white_$index.png",
                                      width: 30,
                                      height: 30,
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              title[index],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color(0xff68D5E8),
                    ),
                    child: const Text(
                      "บันทึก",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
