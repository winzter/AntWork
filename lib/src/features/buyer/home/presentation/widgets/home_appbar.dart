import 'package:flutter/material.dart';

import '../pages/requirement_page.dart';

PreferredSizeWidget homeAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height * 0.1,
    title: const Text("Ant Work Freelance",
        style: TextStyle(fontSize: 25, color: Colors.white)),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RequirementPage(),));
          },
          icon: const Icon(
            Icons.add_circle_outlined,
            color: Colors.white,
            size: 40,
          ))
    ],
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff6FC9E4),
        Color(0xffE793B8),
      ])),
    ),
  );
}
