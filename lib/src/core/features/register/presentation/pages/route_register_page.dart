import 'package:antwork/src/core/features/register/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import '../widgets/menu_card.dart';

class RouteRegisterPage extends StatelessWidget {
  const RouteRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          constraints: const BoxConstraints.expand(),
          child: Image.asset(
            'assets/logo/antwork_bg1.png',
            fit: BoxFit.cover,
          ),
        ),
        AppBar(
          title: const Text("เลือกสถานะ"),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: const Icon(Icons.arrow_back_ios_sharp,color: Colors.black,)),
          backgroundColor: Colors.transparent,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.2,
          left: 0,
          right: 0,
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuCard(
                  title: 'ผู้ซื้อ',
                  page: RegisterPage(isBuyer: true,), svgPath: 'assets/icons/income_expense.svg',
                ),
                MenuCard(
                  title: 'ผู้ขาย',
                  page: RegisterPage(isBuyer: false,), svgPath: 'assets/icons/overview_expense.svg',
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
