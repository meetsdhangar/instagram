import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgotpasswoedScreen extends StatelessWidget {
  const ForgotpasswoedScreen({super.key});

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
              "Find your account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            15.heightBox,
            Text(
              "Enter your username,email,or mobile number.",
              style: TextStyle(fontSize: 17, letterSpacing: 0.5),
            ),
            10.heightBox,
            Text(
              "Can't reset your password?",
              style: TextStyle(
                  fontSize: 20, letterSpacing: 0.5, color: Colors.blue),
            ),
            20.heightBox,
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: "Username,email,or mobile number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            20.heightBox,
            InkWell(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    "Continue",
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            15.heightBox,
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                  ),
                  5.widthBox,
                  Text(
                    "Log in with Facebook",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )
                ],
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
    ));
  }
}
