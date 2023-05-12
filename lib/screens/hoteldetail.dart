import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hoteldetail extends StatefulWidget {
  Hoteldetail({Key? key}) : super(key: key);

  @override
  State<Hoteldetail> createState() => _HoteldetailState();
}

class _HoteldetailState extends State<Hoteldetail> {
  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: "hotel",
                child: Container(
                  height: 190,
                  width: Get.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(args.image))),
                ),
              ),
              Container(
                height: 190,
                color: Colors.black.withOpacity(0.6),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        args.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 9,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Ethiopia",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 9,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            args.name,
                            style: const TextStyle(color: Colors.white54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 5,
                  left: 5,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: List.generate(
                  args.rate,
                  (index) => const Icon(
                        Icons.star,
                        color: Colors.orange,
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(args.name),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(args.condition + "  " + args.location),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(2, 2))
                      ],
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.white,
                      shape: BoxShape.circle),
                  child: Icon(Icons.favorite_border_outlined),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(2, 2))
                      ],
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.white,
                      shape: BoxShape.circle),
                  child: Icon(Icons.share),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 10),
            child: Text(
              "About the Hotel",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
                "${args.name} is a luxurious retreat, providing comprehensive facilities for a diversity of guests in Ethiopia’s capital, Addis Ababa. Whether in town for business or for pleasure, the experience we provide is unprecedented across the city. The quality and comfort of the rooms, wide range of professional equipment, wealth and diversity of space, fully functional gym, selection of fine foods and drinks, and the luxurious swimming pool area all add up to a comfortable and productive environment."),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: Get.width,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    args.price.toString() + " / night",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      "Cheek out",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
