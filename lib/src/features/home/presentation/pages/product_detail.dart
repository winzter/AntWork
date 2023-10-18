import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

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
              ],
            )),
      ),
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
                  style: TextStyle(
                      color: Color(0xff757575), fontSize: 14),
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

