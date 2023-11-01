import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;

class ProductDetail extends StatefulWidget {
  final int index;

  const ProductDetail({super.key, required this.index});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: PageView(
                            physics: const BouncingScrollPhysics(),
                            onPageChanged: (int index) {
                              setState(() {
                                currentPageIndex = index;
                              });
                            },
                            // controller: controller,
                            children: [
                              PicIndicator(
                                index: widget.index,
                              ),
                              PicIndicator(
                                index: widget.index,
                              ),
                              PicIndicator(
                                index: widget.index,
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.width * 0.43,
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: currentPageIndex,
                        decorator: DotsDecorator(
                          color: const Color(0xffC4C4C4),
                          spacing: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context)
                                  .devicePixelRatio), // Inactive color
                          activeColor: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              color: const Color(0xff68D5E8),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "500 บาท",
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              color: const Color(0xff68D5E8),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "1,000 บาท",
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                              color: const Color(0xff68D5E8),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "1,500 บาท",
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).devicePixelRatio * 4,
                      vertical: MediaQuery.of(context).devicePixelRatio * 2),
                  child: const Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            NetworkImage("https://i.pravatar.cc/150?img=15"),
                      ),
                      title: Text("สุชาติ ยิ้มแย้ม"),
                      subtitle: Text("Top Rated Seller"),
                    ),
                  ),
                ),
                const ProductDescription(),
                const ProductCheckList(),
                const ShipDetail(),
                const UserComments(),
              ],
            )),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xff275F77),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(30)),
          onPressed: () {},
          isExtended: true,
          label:  Row(
            children: [
              badges.Badge(
                position: badges.BadgePosition.bottomEnd(bottom: 2, end: 0),
                badgeStyle:const badges.BadgeStyle(
                  badgeColor: Color(0xff3DCF5D),
                ),
                child:const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage("https://i.pravatar.cc/150?img=15"),
                ),
              ),
              const SizedBox(width: 10,),
              const Text("Chat",style: TextStyle(fontSize: 17),)
            ],
          ),
        ),
      ),
    );
  }
}

class UserComments extends StatelessWidget {
  const UserComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).devicePixelRatio * 4,
          vertical: MediaQuery.of(context).devicePixelRatio * 7),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                "ความคิดเห็นของผู้ใช้งาน",
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
          const Row(
            children: [
              Text(
                "4.8 คะแนน",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: LinearPercentIndicator(
                  percent: 0.65,
                  lineHeight: 10,
                  backgroundColor: const Color(0xffEDEDED),
                  progressColor: const Color(0xffA1A1A1),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Text("65%")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: LinearPercentIndicator(
                  percent: 0.28,
                  lineHeight: 10,
                  backgroundColor: const Color(0xffEDEDED),
                  progressColor: const Color(0xffA1A1A1),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Text("28%")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: LinearPercentIndicator(
                  percent: 0.05,
                  lineHeight: 10,
                  backgroundColor: const Color(0xffEDEDED),
                  progressColor: const Color(0xffA1A1A1),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Text("5%")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: LinearPercentIndicator(
                  percent: 0.01,
                  lineHeight: 10,
                  backgroundColor: const Color(0xffEDEDED),
                  progressColor: const Color(0xffA1A1A1),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Text("1%")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: LinearPercentIndicator(
                  percent: 0.01,
                  lineHeight: 10,
                  backgroundColor: const Color(0xffEDEDED),
                  progressColor: const Color(0xffA1A1A1),
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_rate_rounded, color: Color(0xffEEAC19)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Icon(Icons.star_rate_rounded, color: Color(0xff757575)),
                  Text("1%")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ShipDetail extends StatelessWidget {
  const ShipDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).devicePixelRatio * 4,
              vertical: MediaQuery.of(context).devicePixelRatio * 5),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("วันที่ส่ง"),
                    Text("3 Days", style: TextStyle(color: Color(0xff757575))),
                  ],
                ),
                Divider(thickness: 1.2, indent: 10, endIndent: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("การแก้ไข"),
                    Text("Unlimited",
                        style: TextStyle(color: Color(0xff757575))),
                  ],
                ),
                Divider(thickness: 1.2, indent: 10, endIndent: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("รวมแนวคิดจำนวน"),
                    Text("2", style: TextStyle(color: Color(0xff757575))),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).devicePixelRatio * 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio(
                      value: "radio value",
                      groupValue: "group value",
                      onChanged: (value) {}),
                  const Text("ส่งด่ววนภายใน 2 วัน",
                      style: TextStyle(color: Color(0xff757575))),
                ],
              ),
              const Text("+ 500 บาท",
                  style: TextStyle(color: Color(0xff757575)))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).devicePixelRatio * 4),
          child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff68D5E8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "ซื้อเลย",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}

class ProductCheckList extends StatelessWidget {
  const ProductCheckList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).devicePixelRatio * 4,
          ),
          child: const Row(
            children: [
              Flexible(
                  child: Text(
                "แพ็คเกจลดราคาแบบครบวงจร",
                style: TextStyle(fontSize: 17),
              ))
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).devicePixelRatio * 4,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/check.png", width: 17),
                    const SizedBox(width: 15),
                    const Text("2 ตัวเลือกสำหรับโลโก้",
                        style: TextStyle(color: Color(0xff757575)))
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Image.asset("assets/icons/check.png", width: 17),
                    const SizedBox(width: 15),
                    const Text("ไฟล์ JPG และ PNG",
                        style: TextStyle(color: Color(0xff757575)))
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Image.asset("assets/icons/check.png", width: 17),
                    const SizedBox(width: 15),
                    const Text("ไฟลเวกเตอร์",
                        style: TextStyle(color: Color(0xff757575)))
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Image.asset("assets/icons/check.png", width: 17),
                    const SizedBox(width: 15),
                    const Text("ไฟล์ที่พิมพ์ได้",
                        style: TextStyle(color: Color(0xff757575)))
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Image.asset("assets/icons/check.png", width: 17),
                    const SizedBox(width: 15),
                    const Text("แบบจำลอง 3 มิติ",
                        style: TextStyle(color: Color(0xff757575)))
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

class PicIndicator extends StatelessWidget {
  final int index;

  const PicIndicator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/images/list_detail$index.jpg",
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).devicePixelRatio * 4,
          ),
          child: const Row(
            children: [
              Flexible(
                  child: Text(
                "Design creative minimalist logo",
                style: TextStyle(fontSize: 18),
              ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).devicePixelRatio * 4,
            vertical: MediaQuery.of(context).devicePixelRatio * 3,
          ),
          child: const Row(
            children: [
              Flexible(
                child: ReadMoreText(
                  "การเปลี่ยนแปลงคือโอกาส แต่สิ่งที่ทำให้เกิดการเปลี่ยนแปลงนั่นคือวิกฤต และวิกฤตคือโอกาส แต่สังเกตไหมว่า ไม่มีใครกล่าวถึงวิธีการเปลี่ยนวิกฤตเป็นโอกาส ดังนั้นแล้วหลักสูตรนี้มีคำตอบให้คุณ ในคอร์สนี้เราจะมีเครื่องมือให้คุณเป็นนักฉวย โอกาสในทุกสถานการณ์ หลายองค์กรนั้นพยายามทำ Digital Transformation มามากกว่า 10 ปี แต่ไม่ว่าจะทำอย่างไรก็ไม่เกิดขึ้นเสียที...",
                  trimLines: 5,
                  colorClickableText: Color(0xff68D5E8),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'อ่านเพิ่มเติม',
                  trimExpandedText: 'อ่านน้อยลง',
                  style: TextStyle(color: Color(0xff757575), fontSize: 14),
                  lessStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff68D5E8)),
                  moreStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff68D5E8)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
