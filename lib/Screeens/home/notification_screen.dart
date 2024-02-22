import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading:
            InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            5.heightBox,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(bottom: 10, right: 10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/meet.jpeg",
                    ),
                    radius: 30,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Ripal_lad",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          5.widthBox,
                          Text("started  "),
                        ],
                      ),
                      Text(' following you')
                    ],
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    height: 40,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Suggested for you",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            10.heightBox,
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(bottom: 15, right: 10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/meet.jpeg",
                    ),
                    radius: 37,
                  ),
                  title: Text(
                    "Lad_ripal",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/meet.jpeg",
                        ),
                        radius: 15,
                      ),
                      10.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Followed by",
                            style: TextStyle(
                              color: Color.fromARGB(255, 115, 111, 111),
                            ),
                          ),
                          Text(
                            "Meet_dhangar",
                            style: TextStyle(
                              color: Color.fromARGB(255, 115, 111, 111),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    height: 40,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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
