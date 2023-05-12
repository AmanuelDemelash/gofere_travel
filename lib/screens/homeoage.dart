import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/controllers/bottomcontroller.dart';
import 'package:gofere_travel/screens/cars.dart';
import 'package:gofere_travel/screens/home.dart';
import 'package:gofere_travel/screens/hotels.dart';
import 'package:gofere_travel/screens/tours.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pagecontroller,
        physics: const NeverScrollableScrollPhysics(),
        children: [Home(), Hotel(), Cars(), Tour()],
      ),
      bottomNavigationBar: Obx(() => NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.hotel), label: "Hotel"),
              NavigationDestination(
                  icon: Icon(Icons.car_rental), label: "Cars"),
              NavigationDestination(icon: Icon(Icons.tour), label: "Tour"),
            ],
            selectedIndex: Get.find<BottomController>().index.value,
            animationDuration: Duration(seconds: 2),
            onDestinationSelected: (index) {
              Get.find<BottomController>().changebootomitem(index);
              pagecontroller.jumpToPage(index);
            },
          )),
    );
  }
}
