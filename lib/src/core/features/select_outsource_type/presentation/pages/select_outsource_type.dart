import 'package:flutter/material.dart';
import '../../../../../components/bottom_navbar/bottom_navbar.dart';
import '../../../register/presentation/widgets/menu_card.dart';

class SelectOutsourceType extends StatefulWidget {
  const SelectOutsourceType({super.key});

  @override
  _SelectOutsourceTypeState createState() => _SelectOutsourceTypeState();
}

class _SelectOutsourceTypeState extends State<SelectOutsourceType> {
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
          title: const Text("เลือกประเภทงาน"),
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
                  title: 'ฟรีแลนซ์',
                  page: BottomNavbar(), svgPath: 'assets/icons/income_expense.svg',
                ),
                // MenuCard(
                //   title: 'ผู้ขาย',
                //   page: RegisterPage(isBuyer: false,), svgPath: 'assets/icons/overview_expense.svg',
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
