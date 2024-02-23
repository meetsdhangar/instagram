import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Comments"),
        ),
        bottomSheet: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.only(
                        bottom: 15, left: 10, right: 10, top: 10),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/meet.jpeg",
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          "Meet_dhangar",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        10.widthBox,
                        Text("3h")
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amazing",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Reply",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    trailing: Icon(Icons.favorite_border),
                  );
                },
              ),
              45.heightBox,
              Divider(),
              Container(
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comments",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 2, bottom: 2, right: 20),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  "assets/images/meet.jpeg",
                                ),
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.gif_box_outlined,
                              size: 35,
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//
Widget SharebottomSheet() {
  return Container(
    height: 500,
    width: double.infinity,
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: TextFormField(
          showCursor: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.person_2_sharp),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Color(0xFF787474),
            contentPadding: EdgeInsets.only(top: 13, bottom: 13, left: 20),
            filled: true,
            fillColor: Color.fromARGB(47, 184, 165, 165),
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
      GridView.builder(
        padding: EdgeInsets.only(top: 30),
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/meet.jpeg",
                ),
                radius: 40,
              ),
              Text("Meet")
            ],
          );
        },
      )
    ]),
  );
}
