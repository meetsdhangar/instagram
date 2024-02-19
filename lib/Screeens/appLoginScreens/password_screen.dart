import 'package:flutter/material.dart';
import 'package:instagram/Screeens/appLoginScreens/logininfo_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

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
              "Create a password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            15.heightBox,
            Text(
              "Create a password with at least 6 letters or numbers. it should be something others can't guess.",
              style: TextStyle(fontSize: 17, letterSpacing: 0.5),
            ),
            20.heightBox,
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            20.heightBox,
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LogininfoScreen(),
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
        color: Colors.white,
        height: 40,
        child: Text(
          "I already have an account",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ),
    ));
  }
}
