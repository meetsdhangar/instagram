import 'package:flutter/material.dart';
import 'package:instagram/Screeens/AppLoginScreens/forgotpassword_screen.dart';
import 'package:instagram/Screeens/AppLoginScreens/name_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/images/instagram.png")),
                  80.heightBox,
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Username, email or mobile number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
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
                  Container(
                    child: Center(
                      child: Text(
                        "Log in",
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
                  10.heightBox,
                  InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(MaterialPageRoute(
                        builder: (context) => ForgotpasswoedScreen(),
                      ));
                    },
                    child: Text(
                      "Forgot password?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          height: 145,
          width: double.infinity,
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NameScreen(),
                  ));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Create new account",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.blue)),
                ),
              ),
              Image.asset(
                "assets/images/meta.png",
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
