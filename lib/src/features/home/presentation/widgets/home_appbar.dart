import 'package:flutter/material.dart';

PreferredSizeWidget homeAppbar(BuildContext context){
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height*0.1,
    title: const Text("Ant Work Freelance",style: TextStyle(fontSize: 25)),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff6FC9E4),
            Color(0xffE793B8),
          ])
      ),
    ),
  );
}