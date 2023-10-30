import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "รายได้",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 5),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("สามารถถอนได้", style: TextStyle(color: Colors.white,fontSize: 16)),
                      Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                    ],),
                  Column(
                    children: [
                      Text("สามารถถอนได้", style: TextStyle(color: Colors.white,fontSize: 16)),
                      Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                    ],),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Text("เฉลี่ยราคาขาย", style: TextStyle(color: Colors.white,fontSize: 16)),
                    Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                  ],),
                  Column(children: [
                    Text("คำสั่งซื้อที่ใช้งาน", style: TextStyle(color: Colors.white,fontSize: 16)),
                    Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                  ],),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Text("กำลังเคลียร์การชำระเงิน", style: TextStyle(color: Colors.white,fontSize: 16)),
                    Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                  ],),
                  Column(children: [
                    Text("คำสั่งซื้อที่ถูกยกเลิก", style: TextStyle(color: Colors.white,fontSize: 16)),
                    Text("0 บาท", style: TextStyle(color: Color(0xff007286),fontSize: 16)),
                  ],),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
