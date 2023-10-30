import 'package:flutter/material.dart';

class ExpansionDetail extends StatelessWidget {
  const ExpansionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text(
        "เข้าถึงระดับถัดไปของคุณ",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      children: [
        Column(
          children: [
            ListTile(
              isThreeLine: true,
              title: Text(
                "Selling seniority",
                style:
                TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: Text(
                "60/60",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff007286)),
              ),
              subtitle: Text(
                "ดำเนินการอย่างน้อย 60 วันในฐานะผู้ขายใหม่",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff757575)),
              ),
            ),
            Divider(),
            ListTile(
              isThreeLine: true,
              title: Text(
                "คำสั่งซื้อ",
                style:
                TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: Text(
                "0/10",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff007286)),
              ),
              subtitle: Text(
                "รับและดำเนินการอย่างน้อย 10 คำสั่งซื้อ",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff757575)),
              ),
            ),
            Divider(),
            ListTile(
              isThreeLine: true,
              title: Text(
                "รายได้",
                style:
                TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: Text(
                "400/1,000",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff007286)),
              ),
              subtitle: Text(
                "รรับอย่างน้อย 1,000 บาท จากคำสั่งซื้อที่เสร็จสมบูรณ์",
                style: TextStyle(
                    fontSize: 17, color: Color(0xff757575)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
