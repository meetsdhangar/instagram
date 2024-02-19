import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/Screeens/appLoginScreens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
            width: 80, child: Image.asset("assets/images/instagram.png")),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 100,
        child: Column(
          children: [
            Text(
              "From",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              height: 50,
              width: 130,
              child: Image.asset('assets/images/meta.png'),
            ),
          ],
        ),
      ),
    ));
  }
}
