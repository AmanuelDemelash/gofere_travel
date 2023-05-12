import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/controllers/homecontroller.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Cars"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: GetBuilder<HomeController>(
            init: Get.find<HomeController>(),
            initState: (_) {},
            builder: (controller) {
              return GridView.builder(
                  padding: const EdgeInsets.all(3),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: controller.mycars.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        elevation: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 450,
                                    width: Get.width,
                                  ),
                                  Container(
                                    height: 400,
                                    width: Get.width,
                                    color: Colors.grey,
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            controller.mycars[index].image)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    controller.mycars[index].name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                        "https://i.imgur.com/OD9XEljl.png")),
                              ],
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.people,
                                    size: 13,
                                  ),
                                  Text("4"),
                                  Icon(
                                    Icons.door_front_door,
                                    size: 13,
                                  ),
                                  Text("4"),
                                  Icon(
                                    Icons.cases_outlined,
                                    size: 13,
                                  ),
                                  Text("3")
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "${controller.mycars[index].price} Birr",
                                    style:
                                        const TextStyle(color: Colors.orange),
                                  ),
                                  const Text("/Day")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }));
  }
}
