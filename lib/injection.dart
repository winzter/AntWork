import 'package:antwork/src/core/provider/bottom_navbar/bottom_navbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Injection extends StatelessWidget {
  final Widget? router;
  const Injection({super.key, this.router});

  @override
  Widget build(BuildContext context) =>
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NavIndex()),

        ],
        child: router,
      );
}
