import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  showCursor: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color(0xFF787474),
                    contentPadding:
                        EdgeInsets.only(top: 13, bottom: 13, left: 20),
                    filled: true,
                    fillColor: Color(0x30CCCCCC),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Color(0xFF787474)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0x30CCCCCC), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          BorderSide(color: Color(0x30CCCCCC), width: 2),
                    ),
                  ),
                ),
              ),
              // Icon(Icons.home),
            ],
          ),
        ],
      ),
    ));
  }
}
