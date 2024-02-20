import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 50, left: 10),
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
                    borderSide: BorderSide(color: Color(0x30CCCCCC), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Color(0x30CCCCCC), width: 2),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Icon(Icons.home), Text("Home")],
                        ),
                      ),
                    );
                  }),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 5,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    width: 500,
                    color: Colors.amber,
                  ),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
