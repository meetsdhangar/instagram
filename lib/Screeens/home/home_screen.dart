import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram/Screeens/Chat/outchat.dart';
import 'package:instagram/Screeens/Home/comment_screen.dart';
import 'package:instagram/Screeens/Home/notification_screen.dart';
import 'package:instagram/Screeens/Home/share_screen.dart';
import 'package:instagram/Screeens/Home/story_screen.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Color.fromARGB(255, 223, 223, 223),
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/images/Instanm.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          InkWell(
            onTap: () => Get.to(() => NotificationScreen()),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
          20.widthBox,
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.to(() => OutchatScreen());
              },
              child: Image.asset(
                "assets/images/chat.png",
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Container(
              height: 105,
              child: ListView.builder(
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => Get.to(() => StoryScreen()),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/meet.jpeg",
                            ),
                            radius: 37,
                          ),
                        ),
                        Text(
                          "abc",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.all(3),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/images/meet.jpeg",
                ),
              ),
              title: Text(
                "Meet_dhangar",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2),
              ),
              subtitle: Text(
                "Chikhli, gujrat",
                style: TextStyle(fontSize: 14, letterSpacing: 0.4),
              ),
              trailing: Icon(Icons.more_horiz),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      "assets/images/meet.jpeg",
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  20.widthBox,
                  InkWell(
                    onTap: () => Get.to(() => CommentsScreen()),
                    child: Container(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        "assets/images/cm.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  20.widthBox,
                  InkWell(
                    onTap: () => Get.to(() => ShareScreen()),
                    child: Container(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        "assets/images/share.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  60.widthBox,
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                  ),
                  5.widthBox,
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                  ),
                  5.widthBox,
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                  ),
                  150.widthBox,
                  Icon(
                    Icons.turned_in_not,
                    size: 30,
                  )
                ],
              ),
            ),
            10.heightBox,
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    "assets/images/meet.jpeg",
                  ),
                ),
                5.widthBox,
                Text(
                  "Liked by ",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  "Ripal_lad",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text(
                  " and ",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  "200 others",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggested for you",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            10.heightBox,
            Container(
              color: Color.fromARGB(255, 223, 223, 223),
              height: 330,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/meet.jpeg",
                              ),
                              radius: 80,
                            ),
                            10.heightBox,
                            Text(
                              "Meet_dhangar",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                      "assets/images/meet.jpeg",
                                    ),
                                  ),
                                  10.widthBox,
                                  Text("Followed by Ripal_lad")
                                ],
                              ),
                            ),
                            15.heightBox,
                            Container(
                              height: 40,
                              width: 230,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
