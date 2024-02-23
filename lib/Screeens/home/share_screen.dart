import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomSheet: Container(
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
      ),
    ));
  }
}
