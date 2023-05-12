import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/homecontroller.dart';

class Topdestinations extends StatelessWidget {
  const Topdestinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GetBuilder<HomeController>(
        init: Get.find<HomeController>(),
        initState: (_) {},
        builder: (controller) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemCount: controller.destinations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    animationDuration: Duration(seconds: 2),
                    shadowColor: Colors.black54,
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      controller.destinations[index].image))),
                        ),
                        Container(
                          height: 200,
                          width: Get.width,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.black.withOpacity(0.5)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  controller.destinations[index].name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${controller.destinations[index].activity} Activitys",
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.white54,
                                        size: 8,
                                      ),
                                      Text(
                                        "${controller.destinations[index].car} Cars",
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.white54,
                                        size: 8,
                                      ),
                                      Text(
                                        "${controller.destinations[index].hotel} Hotel",
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      const Icon(
                                        Icons.circle,
                                        color: Colors.white54,
                                        size: 8,
                                      ),
                                      Text(
                                        "${controller.destinations[index].rental} Rental",
                                        style: const TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      )
                                    ])
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
