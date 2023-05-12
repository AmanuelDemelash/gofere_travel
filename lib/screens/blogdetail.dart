import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Blogdetail extends StatefulWidget {
  Blogdetail({Key? key}) : super(key: key);

  @override
  State<Blogdetail> createState() => _BlogdetailState();
}

class _BlogdetailState extends State<Blogdetail> {
  bool navrail = false;
  int des = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Visibility(
            visible: navrail,
            maintainAnimation: true,
            maintainState: true,
            child: NavigationRail(
                onDestinationSelected: ((value) {
                  setState(() {
                    des = value;
                    if (value == 2) {
                      Get.toNamed("/hoteldetail");
                    }
                  });
                }),
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                ],
                selectedIndex: des,
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        navrail = false;
                      });
                    },
                    child: Icon(Icons.cancel_outlined))),
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  AppBar(
                    leading: GestureDetector(
                        onTap: (() {
                          setState(() {
                            navrail = true;
                          });
                        }),
                        child: navrail == true ? null : Icon(Icons.menu)),
                    title: Text("Title"),
                    actions: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    )));
  }
}
