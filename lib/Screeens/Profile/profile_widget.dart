import 'package:flutter/material.dart';

Widget bottomsheet() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    height: double.infinity / 0.20,
    width: double.infinity,
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30,
          ),
          title: Text(
            "Settings and privacy",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 30,
          ),
          title: Text(
            "Threads",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/activity.png",
            height: 30,
          ),
          title: Text(
            "Your activity",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/archive.png",
            height: 30,
          ),
          title: Text(
            "Archive",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/qrcode.png",
            height: 30,
          ),
          title: Text(
            "QR code",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/save.png",
            height: 30,
          ),
          title: Text(
            "Saved",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/group.png",
            height: 30,
          ),
          title: Text(
            "Supervision",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/creditcard.png",
            height: 30,
          ),
          title: Text(
            "Orders and paymentes",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/closefrd.png",
            height: 30,
          ),
          title: Text(
            "Close Friends",
            style: TextStyle(fontSize: 17),
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/images/star.png",
            height: 30,
          ),
          title: Text(
            "Favorites",
            style: TextStyle(fontSize: 17),
          ),
        )
      ],
    ),
  );
}
