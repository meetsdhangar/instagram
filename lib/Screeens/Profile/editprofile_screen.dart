import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Controllers/navbarController.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return SafeArea(
        child: Obx(
      () => Scaffold(
        appBar: AppBar(
          leading:
              InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
          title: Text(
            "Edit profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/meet.jpeg",
                          ),
                          radius: 40,
                        ),
                        20.widthBox,
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/meet.jpeg",
                          ),
                          radius: 40,
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Text(
                    "Edit picture or avatar",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text("Name"),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Flutter Devloper",
                    hintStyle:
                        TextStyle(color: Colors.black, letterSpacing: 0.2)),
              ),
              10.heightBox,
              Text("Username"),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "flutter1_ devloper",
                    hintStyle:
                        TextStyle(color: Colors.black, letterSpacing: 0.2)),
              ),
              5.heightBox,
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Pronouns",
                    hintStyle:
                        TextStyle(color: Colors.black, letterSpacing: 0.2)),
              ),
              5.heightBox,
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Bio",
                    hintStyle:
                        TextStyle(color: Colors.black, letterSpacing: 0.2)),
              ),
              10.heightBox,
              Text("Add link"),
              10.heightBox,
              Text("Gender"),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.chevron_right,
                      size: 35,
                    ),
                    hintText: "Prefer not to say",
                    hintStyle:
                        TextStyle(color: Colors.black, letterSpacing: 0.2)),
              ),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Show Threads badge"),
                  Switch(
                    value: controller.click.value,
                    onChanged: (value) {
                      controller.click.value = value;
                    },
                  ),
                ],
              ),
              20.heightBox,
              Text(
                "Switch to professional account",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ),
              15.heightBox,
              Text("personal information settings",
                  style: TextStyle(color: Colors.blue, fontSize: 17)),
            ],
          ),
        ),
      ),
    ));
  }
}
