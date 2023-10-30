import 'dart:async';
import 'package:flutter/material.dart';
import '../../../components/bottom_navbar/bottom_navbar.dart';
import '../../../components/widgets/loading.dart';

class LoadingPage extends StatefulWidget {


  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  startLoading() async {
    return Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavbar()),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: Image.asset(
              'assets/logo/antwork_bg1.png',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(child: Loading()),
          ),
        ],
      ),
    );
  }
}
