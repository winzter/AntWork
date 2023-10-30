import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              "สิ่งที่ต้องทำ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)
          ),
          child: ListTile(
            leading: badges.Badge(
              position: badges.BadgePosition.topEnd(
                  top: -12,
                  end: -2
              ),
              badgeContent: const Padding(
                padding: EdgeInsets.all(2),
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: SvgPicture.asset("assets/icons/unread_msg.svg"),
              ),
            ),
            title: const Text("ข้อความที่ยังไม่ได้อ่าน",style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 12,),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)
          ),
          child: ListTile(
            leading: badges.Badge(
              position: badges.BadgePosition.topEnd(
                  top: -12,
                  end: -2
              ),
              badgeContent: const Padding(
                padding: EdgeInsets.all(2),
                child: Text("1",style: TextStyle(color: Colors.white),),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: SvgPicture.asset("assets/icons/order_list.svg"),
              ),
            ),
            title: const Text("คำสั่งซื้อ",style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
  }
}
