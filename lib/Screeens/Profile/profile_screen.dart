import 'package:flutter/material.dart';
import 'package:instagram/Screeens/Profile/profile_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Meet_dhangar"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/more.png",
              height: 25,
              width: 25,
            ),
          ),
          20.widthBox,
          InkWell(
            onTap: () {
              // showBottomSheet(
              //   context: context,
              //   builder: (context) =>DraggableScrollableSheet(builder: builder)
              // );
              // showModalBottomSheet(
              //   context: context,
              //   builder: (context) => bottomsheet(),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.menu,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/meet.jpeg",
                  ),
                  radius: 40,
                ),
                50.widthBox,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "posts",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      30.widthBox,
                      Column(
                        children: [
                          Text("1",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                          Text(
                            "followers",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      30.widthBox,
                      Column(
                        children: [
                          Text("0",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                          Text("following")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Meet_Dhangar",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            30.heightBox,
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 223, 223),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 160,
                  child: Center(
                    child: Text(
                      "Edit profile",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                10.widthBox,
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 223, 223),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 160,
                  child: Center(
                    child: Text(
                      "Share profile",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                20.widthBox,
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        223,
                        223,
                        223,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.person_add),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
