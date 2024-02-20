import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screeens/Controllers/navbarController.dart';

class NavigationScren extends StatelessWidget {
  const NavigationScren({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return Obx(
      () => SafeArea(
          child: Scaffold(
              //backgroundColor: Colors.yellow,
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.current.value,
                  selectedItemColor: Colors.red,
                  selectedLabelStyle: TextStyle(fontSize: 1),
                  unselectedLabelStyle: TextStyle(fontSize: 1),
                  type: BottomNavigationBarType.fixed,
                  onTap: (value) {
                    controller.onNavbarTap(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                        // backgroundColor: Colors.green,
                        activeIcon: Image.asset(
                          "assets/images/home1.png",
                          height: 25,
                          width: 25,
                        ),
                        icon: Image.asset(
                          "assets/images/home.png",
                          height: 25,
                          width: 25,
                        ),
                        label: "home"),
                    BottomNavigationBarItem(
                        activeIcon: Image.asset(
                          "assets/images/search1.png",
                          height: 25,
                          width: 25,
                        ),
                        icon: Image.asset(
                          "assets/images/search.png",
                          height: 25,
                          width: 25,
                        ),
                        label: "home"),
                    BottomNavigationBarItem(
                        activeIcon: Image.asset(
                          "assets/images/more.png",
                          height: 25,
                          width: 25,
                        ),
                        icon: Image.asset(
                          "assets/images/more.png",
                          height: 25,
                          width: 25,
                        ),
                        label: "home"),
                    BottomNavigationBarItem(
                        activeIcon: Image.asset(
                          "assets/images/reel1.png",
                          height: 25,
                          width: 25,
                        ),
                        icon: Image.asset(
                          "assets/images/reel.png",
                          height: 25,
                          width: 25,
                        ),
                        label: "home"),
                    BottomNavigationBarItem(
                        activeIcon: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            "assets/images/meet.jpeg",
                          ),
                        ),
                        icon: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(
                            "assets/images/meet.jpeg",
                          ),
                        ),
                        label: "home"),

                    // Image.asset(
                    //   "assets/images/home.png",
                    //   height: 25,
                    //   width: 25,
                    // ),
                    // Image.asset(
                    //   "assets/images/search.png",
                    //   height: 25,
                    //   width: 25,
                    // ),
                    // Image.asset(
                    //   "assets/images/more.png",
                    //   height: 25,
                    //   width: 25,
                    // ),
                    // Image.asset(
                    //   "assets/images/heart.png",
                    //   height: 25,
                    //   width: 25,
                    // ),

                    // CircleAvatar(
                    //   radius: 15,
                    //   backgroundImage: AssetImage(
                    //     "assets/images/meet.jpeg",
                    //   ),
                    // ),
                  ]),
              body: controller.buildScreenNavigator())),
    );
  }
}
