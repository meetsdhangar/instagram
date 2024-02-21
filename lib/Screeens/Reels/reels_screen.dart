import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt),
          )
        ],
        title: Text("Reels"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/images/meet.jpeg",
                fit: BoxFit.fill,
              ),
              color: Colors.black,
              height: 700,
              width: double.infinity,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.transparent,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/meet.jpeg",
                ),
                radius: 25,
              ),
              title: Row(
                children: [
                  Text("Meet_dhangar"),
                  10.widthBox,
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)),
                    width: 70,
                    child: Center(
                      child: Text("Follow"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Enjoy......",
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
