import 'dart:async';

import 'package:flutter/material.dart';

import '../../../components/bottom_navbar/bottom_navbar.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  startSplash() async {
    return Timer(const Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavbar()),);

    });

  }

  @override
  void initState(){
    super.initState();
    startSplash();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                   Color(0xff27385E),
                   Color(0xff275F77),
                ]
              )
            ),
            // child: Image.asset(
            //   'assets/images/splash.png',
            //   fit: BoxFit.cover,
            // ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/logo/anthr_white_logo.png',
                width: 250,
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
