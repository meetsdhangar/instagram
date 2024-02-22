import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leadingWidth: 50,
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/meet.jpeg",
            ),
            radius: 25,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Meet_dhangar",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            10.widthBox,
            Text(
              "2h",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 550,
                  width: 330,
                  child: Image.asset(
                    "assets/images/meet.jpeg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            110.heightBox,
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextFormField(
                      showCursor: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 20, right: 50),
                        filled: true,
                        fillColor: Colors.black,
                        hintText: "Send message",
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  10.widthBox,
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/heart.png",
                      color: Colors.white,
                      fit: BoxFit.fill,
                    ),
                  ),
                  10.widthBox,
                  Container(
                    height: 25,
                    width: 25,
                    child: Image.asset(
                      color: Colors.white,
                      "assets/images/share.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
