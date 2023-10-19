import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            title: const Text("Search Services",style: TextStyle(fontSize: 25),),
            centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,size: 40))
            ],
            toolbarHeight: MediaQuery.of(context).size.height * 0.2,
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
            primary: false,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child:  SingleChildScrollView(
                physics:const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      ButtonsTabBar(
                          radius: 12,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF6FC9E4),
                                Color(0xFFE793B8),
                              ],
                            ),
                          ),
                          tabs: const[
                            Tab(child: Text("หมวดหมู่",style: TextStyle(color: Colors.white),),),
                            Tab(child: Text("ความสนใจ",style: TextStyle(color: Colors.white),),),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
