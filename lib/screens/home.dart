import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/components/appdrawer.dart';
import 'package:gofere_travel/components/topdestination.dart';
import 'package:gofere_travel/components/topstories.dart';
import 'package:gofere_travel/controllers/homecontroller.dart';

import '../components/carrentalcheekcard.dart';
import '../components/hotelcheekcard.dart';
import '../components/rentalcheekcard.dart';
import '../components/tourcheekcard.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Image(
            height: 70,
            fit: BoxFit.fitHeight,
            image: AssetImage(
              "assets/goferetravels.jpg",
            )),
        actions: [
          Badge(
            badgeContent: Text("4"),
            badgeColor: Colors.blue,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_checkout,
                )),
          ),
          // IconButton(
          //     onPressed: () {
          //       Get.toNamed("/register");
          //     },
          //     icon: const Icon(
          //       Icons.person,
          //     )),
        ],
      ),
      drawer: const Appdrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 550,
                  width: Get.width,
                ),
                Container(
                  height: 550,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/hero.jpg"))),
                ),
                Container(
                  width: Get.width,
                  height: 550,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Where Would You Like To Go Today?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Get the best prices on 2,000,000+ properties, worldwide",
                        style: TextStyle(color: Colors.white54, fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GetBuilder<HomeController>(
                        init: Get.find<HomeController>(),
                        builder: (controller) {
                          return Column(
                            children: [
                              Wrap(
                                children: List.generate(
                                    controller.landing_menu.length,
                                    (index) => TextButton(
                                        onPressed: () {
                                          controller.changemenu(index);
                                        },
                                        child: Obx(() => Text(
                                              controller.landing_menu[index],
                                              style: controller.land_menu_item
                                                          .value ==
                                                      index
                                                  ? const TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18)
                                                  : const TextStyle(
                                                      color: Colors.white),
                                            )))),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Obx(() => IndexedStack(
                                    index: Get.find<HomeController>()
                                        .land_menu_item
                                        .value,
                                    children: const [
                                      tourcheekcard(),
                                      hotelcheekcard(),
                                      rentalcheekcard(),
                                      carrentalcheekcard()
                                    ],
                                  ))
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                "Special Offers",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Text(
              "Take memories, leave footprints, and plan your next trip with gofere travels.",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 25,
              width: Get.width,
              child: Align(
                alignment: Alignment.center,
                child: GetBuilder<HomeController>(
                  init: Get.find<HomeController>(),
                  initState: (_) {},
                  builder: (controller) {
                    return Padding(
                      padding: EdgeInsets.only(left: Get.width / 2 - 50),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          3,
                          (index) => Container(
                            decoration: BoxDecoration(
                                color: controller.des.value == index
                                    ? Colors.blue
                                    : Colors.grey,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            margin: const EdgeInsets.all(10),
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      Get.find<HomeController>().changecarusel(index);
                    },
                    enlargeCenterPage: true,
                    height: 140.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3)),
                items: [
                  Padding(
                      padding: EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Material(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 4,
                                        color: Colors.grey)
                                  ]),
                                  width: Get.width,
                                  child: const Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/R.61cbf25cc6b8977d5db2ee58cca78433?rik=o41TafFa5eyYUg&pid=ImgRaw&r=0"),
                                  )),
                              Container(
                                color: Colors.black.withOpacity(0.8),
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Leave immediatly with a discount",
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                    Text(
                                      "Last minute deals",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Material(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Container(
                                  width: Get.width,
                                  child: const Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/R.506d0d5bde10d9609cc4bc8d23c8fd8f?rik=hHDPJu9ePQte7A&pid=ImgRaw&r=0"),
                                  )),
                              Container(
                                color: Colors.black.withOpacity(0.7),
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Book hand-picked trips everywhere",
                                      style: TextStyle(color: Colors.white54),
                                    ),
                                    Text(
                                      "Pleasing Destinations",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Material(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Container(
                                  width: Get.width,
                                  child: const Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/R.8d011eeffccf6579d279890a9a29046b?rik=ekaGyCMYzOpBMQ&riu=http%3a%2f%2fwww.chiangmai1989.com%2fchiangmaihp%2fimgp0078.jpg&ehk=pE3Dyn%2fKpP2CU%2f6rcjaY4%2fo80o%2bOKtLzmUfY2C3mOZU%3d&risl=&pid=ImgRaw&r=0"),
                                  )),
                              Container(
                                  color: Colors.black.withOpacity(0.7),
                                  width: Get.width,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "This time give an adventure",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Tired of the usal gifts?",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ]))
                            ],
                          ),
                        ),
                      )),
                ]),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Top destinations",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Topdestinations(),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Stories, tips, and guides",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TopStories(),
          ],
        ),
      ),
    );
  }
}
