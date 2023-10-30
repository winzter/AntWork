import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListMenu extends StatelessWidget {

  final String svgName;
  final String title;
  const ListMenu({super.key, required this.svgName, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/$svgName.svg"),
                const SizedBox(width: 5,),
                Text(title,style: const TextStyle(fontSize: 17),)
              ],
            ),
            const Icon(Icons.navigate_next)
          ],
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
