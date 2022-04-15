import 'package:apk_mata/globals.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
          child: SizedBox(
        width: 150,
        height: 150,
        child: Image.asset('assets/images/logo.png'),
      )),
    );
  }
}
