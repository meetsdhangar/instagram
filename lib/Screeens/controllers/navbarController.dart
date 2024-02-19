import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screeens/appLoginScreens/login_screen.dart';
import 'package:instagram/Screeens/appLoginScreens/password_screen.dart';
import 'package:instagram/Screeens/home/home_screen.dart';

class NavbarController extends GetxController {
  List<GlobalKey<NavigatorState>> navigatorKeys =
      List.generate(5, (_) => GlobalKey<NavigatorState>());

  var current = 0.obs;
  onNavbarTap(index) {
    current.value = index;
  }

  var screenList = [
    LoginScreen(),
    HomeScreen(),
    PasswordScreen(),
    LoginScreen(),
    HomeScreen()
  ];

  buildScreenNavigator() {
    return Navigator(
      key: navigatorKeys[current.value],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (_) => screenList.elementAt(current.value));
      },
    );
  }
}
