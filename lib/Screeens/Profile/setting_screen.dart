import 'package:flutter/material.dart';
import 'package:instagram/Screeens/Profile/profile_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings and privacy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                showCursor: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color.fromARGB(255, 118, 100, 100),
                  contentPadding:
                      EdgeInsets.only(top: 13, bottom: 13, left: 20),
                  filled: true,
                  fillColor: Color.fromARGB(47, 162, 130, 130),
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
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your account",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    width: 80,
                    child: Image.asset(
                      "assets/images/meta.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline),
                title: Text(
                  "Accounts Center",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Password, security, personal details, ads"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 35,
                ),
              ),
              10.heightBox,
              Text(
                "How you use instragram",
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 139, 139), fontSize: 17),
              ),
              listtile(
                  "Notification", Icon(Icons.notification_important_outlined)),
              listtile(
                  "Time spent", Icon(Icons.notification_important_outlined)),
              Divider(
                thickness: 2,
              ),
              Text(
                "What you see",
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 139, 139), fontSize: 17),
              ),
              listtile("Favourites", Icon(Icons.favorite)),
              listtile("Muted accounts", Icon(Icons.alarm)),
              listtile("suggested content", Icon(Icons.favorite)),
              listtile("Like count", Icon(Icons.alarm)),
              Divider(
                thickness: 2,
              ),
              Text(
                "What can see your content",
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 139, 139), fontSize: 17),
              ),
              listtile("Account privacy", Icon(Icons.lock)),
              listtile("Close Friends", Icon(Icons.alarm)),
              listtile("Blocked", Icon(Icons.favorite)),
              listtile("Hide story and live", Icon(Icons.alarm)),
              Divider(
                thickness: 2,
              ),
              Text(
                "How others can interact with you",
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 139, 139), fontSize: 17),
              ),
              listtile("Messages and story replies", Icon(Icons.lock)),
              listtile("Tags and mentions", Icon(Icons.alarm)),
              listtile("Comments", Icon(Icons.favorite)),
              listtile("Sharing and remixes", Icon(Icons.alarm)),
              Divider(
                thickness: 2,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 139, 139), fontSize: 17),
              ),
              15.heightBox,
              Text(
                "Add account",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ),
              15.heightBox,
              Text(
                "Log out",
                style: TextStyle(color: Colors.red, fontSize: 17),
              ),
              15.heightBox,
              Text(
                "Log out all accounts",
                style: TextStyle(color: Colors.red, fontSize: 17),
              ),
              Divider(
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
