import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/controllers/homecontroller.dart';

class Hotel extends StatelessWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Hotels"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                ))
          ],
        ),
        body: GetBuilder<HomeController>(
            init: Get.find<HomeController>(),
            initState: (_) {},
            builder: (controller) {
              return GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemCount: controller.hotels.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Get.toNamed("/hoteldetail",
                        arguments: controller.hotels[index]),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Card(
                        elevation: 3,
                        color: Colors.white54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Stack(
                                children: [
                                  Hero(
                                    tag: "hotle",
                                    child: Container(
                                      height: 300,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(controller
                                                  .hotels[index].image))),
                                    ),
                                  ),
                                  const Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 15,
                                      )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: SizedBox(
                                height: 10,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    physics: NeverScrollableScrollPhysics(),
                                    children: List.generate(
                                      controller.hotels[index].rate,
                                      (index) => const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 14,
                                      ),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: Text(
                                controller.hotels[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 5),
                              child: Text(
                                controller.hotels[index].location,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(thickness: 2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 10,
                                        bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(4),
                                        shape: BoxShape.rectangle),
                                    child: const Text(
                                      "5/5",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        controller.hotels[index].condition,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const Text("(4 Reviews)",
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "From: ",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Text("${controller.hotels[index].price} Birr",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                const Text("/night",
                                    style: TextStyle(color: Colors.black54)),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
