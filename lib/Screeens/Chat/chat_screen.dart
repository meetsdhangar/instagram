import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back,
            )),
        toolbarHeight: 80,
        leadingWidth: 10,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/meet.jpeg",
            ),
            radius: 20,
          ),
          title: Text("Meet_dhangar"),
          subtitle: Text("Meet_46"),
        ),
        actions: [
          Image.asset(
            "assets/images/phone.png",
            height: 25,
          ),
          20.widthBox,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              "assets/images/vcall.png",
            ),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Message..",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 2, bottom: 2, right: 5),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25)),
                        child: IconButton(
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/mic.png",
                            height: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/gellary.png",
                            height: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/images/gellary.png",
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
