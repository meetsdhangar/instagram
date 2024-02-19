import 'package:flutter/material.dart';
import 'package:instagram/Screeens/appLoginScreens/password_screen.dart';

import 'package:velocity_x/velocity_x.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

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
              "What's your name?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            15.heightBox,
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: "Full name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            20.heightBox,
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PasswordScreen(),
                ));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Next",
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
