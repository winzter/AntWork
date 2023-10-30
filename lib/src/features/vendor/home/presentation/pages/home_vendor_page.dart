import 'package:flutter/material.dart';
import '../../../../buyer/profile/presentation/widgets/chart.dart';
import '../widgets/expansion_detail.dart';
import '../widgets/income.dart';
import '../widgets/to_do_list.dart';

class HomeVendorPage extends StatefulWidget {
  const HomeVendorPage({super.key});

  @override
  State<HomeVendorPage> createState() => _HomeVendorPageState();
}

class _HomeVendorPageState extends State<HomeVendorPage> with AutomaticKeepAliveClientMixin{
  Widget chartText(String title) {
    return Column(
      children: [
        const Charts(),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Here’s how you’re doing",
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffF394BC),
                Color(0xffF394BC),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffF394BC),
              Color(0xff68D5E8),
            ],
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).devicePixelRatio * 5),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ระดับนักขาย",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "ผู้ขายใหม่",
                      style: TextStyle(color: Color(0xff007286)),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "การประเมินครั้งต่อไป",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "15 ก.ค. 2566",
                      style: TextStyle(color: Color(0xff007286)),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "เวลาตอบสนอง",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "1 ชั่วโมง",
                      style: TextStyle(color: Color(0xff007286)),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      chartText("อัตราการ\nตอบสนอง"),
                      chartText("เสร็จสิ้น\nการสั่งซื้อ"),
                      chartText("ส่งมอบ\nตรงเวลา"),
                      chartText("คะแนนใน\nเชิงบวก"),
                    ],
                  ),
                ),
                const ExpansionDetail(),
                const Income(),
                const SizedBox(height: 15,),
                const ToDoList(),
                const SizedBox(height: 100,)
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
