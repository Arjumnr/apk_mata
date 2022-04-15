import 'dart:async';

import 'package:flutter/material.dart';

import 'package:apk_mata/globals.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  void initState() {
  //   super.initState();
  //   starSplashScreen();
  // }

  // starSplashScreen() async {
  //   var duration = const Duration(seconds: 2);

  //   return Timer(duration, () {
  //     navigateUser();
  //   });
  // }

  // navigateUser() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var id = prefs.getInt('id');
  //   print(id);
  //   runApp(MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: id == null ? FormSignIn() : BottomNavigation(),
  //   ));
  // }

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
