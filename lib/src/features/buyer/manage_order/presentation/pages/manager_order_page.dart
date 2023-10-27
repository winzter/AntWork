import 'package:flutter/material.dart';
import '../widgets/order_cards.dart';

class ManagerOrderPage extends StatelessWidget {
  const ManagerOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Manage Orders",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff68D5E8),
                Color(0xffF394BC),
              ],
            ),
          ),
        ),
      ),
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
              horizontal: MediaQuery.of(context).devicePixelRatio * 5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Complete 6",
                    style: TextStyle(color: Color(0xff757575), fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Expanded(
                  child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return OrderCards(index: index,);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
