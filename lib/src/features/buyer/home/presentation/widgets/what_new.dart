import 'package:flutter/material.dart';

import 'what_new_card.dart';

class WhatNew extends StatelessWidget {
  const WhatNew({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            WhatNewCard(title: 'Eye-catching AI designs', picPath: 'assets/images/new_for_antwork1.png',),
            WhatNewCard(title: 'Recession-ready your business', picPath: 'assets/images/new_for_antwork2.jpg',),
          ],
        ),
      ),
    );
  }
}
