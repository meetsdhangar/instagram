import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screeens/Profile/setting_screen.dart';

Widget bottomsheet() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    height: double.infinity * 0.2,
    width: double.infinity,
    child: Column(
      children: [
        InkWell(
          onTap: () => Get.to(() => SettingScreen()),
          child: ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              "Settings and privacy",
              style: TextStyle(fontSize: 17),
            ),
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

Widget Addaccbottomsheet() {
  return Container(
    height: 150,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/meet.jpeg",
            ),
            radius: 30,
          ),
          title: Text(
            "flutter1_devloper",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          trailing: Radio(
            value: false,
            groupValue: false,
            onChanged: (value) => false,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/plus.png",
            ),
            radius: 30,
          ),
          title: Text(
            "Add account",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        )
      ],
    ),
  );
}

Widget listtile(text, icon) {
  return ListTile(
    contentPadding: EdgeInsets.all(0),
    visualDensity: VisualDensity.compact,
    leading: icon,
    
    title: Text(text),
    titleTextStyle: TextStyle(fontSize: 17, color: Colors.black),
    trailing: Icon(
      Icons.chevron_right,
      size: 35,
    ),
  );
}
