import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LogininfoScreen extends StatelessWidget {
  const LogininfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Save your login info?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            15.heightBox,
            Text(
              "We'|| save the login info for your new account, so you won't need to enter it next time you log in.",
              style: TextStyle(fontSize: 17, letterSpacing: 0.5),
            ),
            20.heightBox,
            20.heightBox,
            Container(
              child: Center(
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25)),
            ),
            20.heightBox,
            Container(
              child: Center(
                child: Text(
                  "Not now",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all()),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 40,
        child: Text(
          "I already have an account",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ),
    ));
  }
}
