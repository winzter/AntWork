import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: homeAppbar(context),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const ImgAds(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "บริการยอดนิยม",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "ดูทั้งหมด",
                        style: TextStyle(color: Color(0xff68D5E8)),
                      ),
                    ],
                  ),
                ),
                CardService(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "สิ่งที่คุณสนใจ",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "ดูทั้งหมด",
                        style: TextStyle(color: Color(0xff68D5E8)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: InterestChoice()),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "มีอะไรใหม่ใน Ant Work Freelance?",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                const WhatNew(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
