import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screeens/Chat/chat_screen.dart';
import 'package:instagram/Screeens/Chat/outchat.dart';
import 'package:instagram/Screeens/Reels/reels_screen.dart';
import 'package:instagram/Screeens/Search/search_screen.dart';

import 'package:instagram/Screeens/home/home_screen.dart';
import 'package:instagram/Screeens/Profile/profile_screen.dart';

class NavbarController extends GetxController {
  List<GlobalKey<NavigatorState>> navigatorKeys =
      List.generate(5, (_) => GlobalKey<NavigatorState>());

  var current = 0.obs;
  onNavbarTap(index) {
    current.value = index;
  }

  var screenList = [
    HomeScreen(),
    SearchScreen(),
    OutchatScreen(),
    ReelsScreen(),
    ProfileScreen()
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
