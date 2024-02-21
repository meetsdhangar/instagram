import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screeens/Chat/chat_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class OutchatScreen extends StatelessWidget {
  const OutchatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading:
            InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
        title: Text("meet_dhangar"),
        actions: [
          Image.asset(
            "assets/images/add.png",
            height: 30,
            width: 30,
          ),
          25.widthBox,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              "assets/images/edit.png",
              height: 25,
              width: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                showCursor: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xFF787474),
                  contentPadding:
                      EdgeInsets.only(top: 13, bottom: 13, left: 20),
                  filled: true,
                  fillColor: Color(0x30CCCCCC),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFF787474)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color(0x30CCCCCC), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Color(0x30CCCCCC), width: 2),
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Get.to(() => ChatScreen()),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 5, right: 5),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/meet.jpeg",
                      ),
                    ),
                    title: Text("Meet_Dhangar"),
                    subtitle: Text("Hellow"),
                    trailing: Icon(Icons.camera_alt),
                  ),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
