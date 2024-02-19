import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnbodingScreen extends StatelessWidget {
  const OnbodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Container(
                  height: 55,
                  width: 55,
                  child: Image.asset("assets/images/instagram.png")),
              70.heightBox,
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/images/meet.jpeg"),
              ),
              20.heightBox,
              Text(
                "Meet Dhangar",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              25.heightBox,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      5.widthBox,
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Center(
                    child: Text(
                      "Log in to Another Account",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all()),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 100,
        child: Column(
          children: [
            Text(
              "Create New Account",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 50,
              width: 100,
              child: Image.asset('assets/images/meta.png'),
            ),
          ],
        ),
      ),
    ));
  }
}
