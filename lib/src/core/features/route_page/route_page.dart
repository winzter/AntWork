import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [

                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
