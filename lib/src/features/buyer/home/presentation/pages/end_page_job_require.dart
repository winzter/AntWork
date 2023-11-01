import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/detail_success.dart';

class EndPageJobRequire extends StatelessWidget {

  final Map<String,String?> detail;

  const EndPageJobRequire({super.key, required this.detail,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        flexibleSpace: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff6FC9E4),
                        Color(0xffE793B8),
                      ])),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0.3)
                      ])),
            ),
          ],
        ),
        centerTitle: true,
        title: const Text(
          'Summary',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xff6FC9E4), Color(0xffE793B8)])),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0.4)
                  ])),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).devicePixelRatio * 10,
                    horizontal: MediaQuery.of(context).devicePixelRatio * 5,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                        MediaQuery.of(context).devicePixelRatio * 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).devicePixelRatio * 5),
                          child: SvgPicture.asset(
                            "assets/icons/success.svg",
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).devicePixelRatio * 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(detail['title']!,
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        DetailSuccess(
                          title: 'Industries (Optional)',
                          detail: detail['industriesSelected']??'',
                          isEnd: false,
                        ),
                        DetailSuccess(
                          title: 'Service',
                          detail: detail['categorySelected']??'',
                          isEnd: false,
                        ),
                        DetailSuccess(
                          title: 'Description',
                          detail: detail['des']??'',
                          isEnd: false,
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).devicePixelRatio * 5),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Budget & Timeline",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        DetailSuccess(
                          title: 'Budget',
                          detail: "\$ ${detail['budget']}",
                          isEnd: false,
                        ),
                        DetailSuccess(
                          title: 'Deliver by ',
                          detail: detail['date']!,
                          isEnd: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).devicePixelRatio * 5),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(15)),
                ),
                elevation: 5,
                backgroundColor: const Color(0xffE793B8)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "เสร็จสิ้น",
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
