import 'package:flutter/material.dart';

PreferredSizeWidget messageAppbar(BuildContext context){
  return AppBar(
    elevation: 0,
    toolbarHeight: MediaQuery.of(context).size.height*0.1,
    title: const Text("Messenger",style: TextStyle(fontSize: 25)),
    centerTitle: true,
    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.add,size: 40,))
    ],
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