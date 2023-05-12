import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/homecontroller.dart';

class TopStories extends StatelessWidget {
  const TopStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GetBuilder<HomeController>(
        init: Get.find<HomeController>(),
        initState: (_) {},
        builder: (controller) {
          return GridView.builder(
              padding: EdgeInsets.all(10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
              itemCount: controller.blogs.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 2,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                              width: Get.width,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/landing.jpg")),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: RaisedButton.icon(
                                elevation: 0,
                                color: controller.blogs[index].catagorie ==
                                        "BOOKING"
                                    ? Colors.green.withOpacity(0.2)
                                    : Colors.pink.withOpacity(0.2),
                                onPressed: () {},
                                icon: Icon(Icons.circle,
                                    size: 10,
                                    color: controller.blogs[index].catagorie ==
                                            "BOOKING"
                                        ? Colors.green
                                        : Colors.pink),
                                label: Text(
                                  controller.blogs[index].catagorie,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color:
                                          controller.blogs[index].catagorie ==
                                                  "BOOKING"
                                              ? Colors.green
                                              : Colors.pink),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ListTile(
                          onTap: () => Get.toNamed("/blogdetail"),
                          title: Text(
                            controller.blogs[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            controller.blogs[index].content,
                            maxLines: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        )
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
