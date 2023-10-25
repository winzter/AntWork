import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'pic_indicator.dart';

class ImgAds extends StatefulWidget {
  const ImgAds({super.key});

  @override
  State<ImgAds> createState() => _ImgAdsState();
}

class _ImgAdsState extends State<ImgAds> {

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                children: const [
                  PicIndicator(),
                  PicIndicator(),
                  PicIndicator(),
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
      ],
    );
  }
}
