import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appdrawer extends StatelessWidget {
  const Appdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
          child: ListView(
        children: [
          Container(
              //color: Colors.grey.withOpacity(0.2),
              child: Stack(
            children: [
              const ListTile(
                title: Image(
                    height: 80, image: AssetImage("assets/goferetravels.jpg")),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.cancel_outlined))
            ],
          )),
          const SizedBox(
            height: 4,
          ),
          ListTile(
            onTap: () => Get.back(),
            title: const Text(
              "HOME",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const Divider(color: Colors.grey),
          const ExpansionTile(
            title: Text("HOTEL"),
            childrenPadding: EdgeInsets.only(left: 6),
            children: [
              ListTile(
                title: Text("Search HalfMap"),
              ),
              ListTile(
                title: Text("Search Popup Map"),
              ),
              ListTile(
                title: Text("Detail Hotel 1"),
              ),
              ListTile(
                title: Text("Detail Room 1"),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
          const ExpansionTile(
            title: Text("TOUR"),
            childrenPadding: EdgeInsets.only(left: 6),
            children: [
              ListTile(
                title: Text("Tour Search Topbar"),
              ),
              ListTile(
                title: Text("Tour Search Sidebar "),
              ),
              ListTile(
                title: Text("Detail Tour 1"),
              ),
              ListTile(
                title: Text("Detail Tour 2"),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text("ACTIVITY"),
            childrenPadding: EdgeInsets.only(left: 6),
            children: [
              ListTile(
                title: Text("Search Topbar"),
              ),
              ListTile(
                title: Text("Search Sidebar"),
              ),
              ListTile(
                title: Text("Detail Activity 1"),
              ),
              ListTile(
                title: Text("Detail Activity 2"),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text("RENTAL"),
            childrenPadding: EdgeInsets.only(left: 6),
            children: [
              ListTile(
                title: Text("Rental HalfMap"),
              ),
              ListTile(
                title: Text("Rental Search Sidebar"),
              ),
              ListTile(
                title: Text("Detail Rental 1"),
              ),
              ListTile(
                title: Text("Detail Rental 2"),
              ),
            ],
          ),
          const ExpansionTile(
            title: Text("CAR"),
            childrenPadding: EdgeInsets.only(left: 6),
            children: [
              ListTile(
                title: Text("Car Search Topbar"),
              ),
              ListTile(
                title: Text("Car Search Sidebar"),
              ),
              ListTile(
                title: Text("Detail Car 1"),
              ),
              ListTile(
                title: Text("Detail Car 2"),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("PAGES"),
            childrenPadding: const EdgeInsets.only(left: 6),
            children: [
              const ListTile(
                title: Text("About"),
              ),
              const ListTile(
                title: Text("Blog"),
              ),
              const ListTile(
                title: Text("Contact"),
              ),
              ListTile(
                onTap: () {
                  Get.back();
                  Get.toNamed("/register");
                },
                title: const Text("Login"),
              ),
              ListTile(
                onTap: () {
                  Get.back();
                  Get.toNamed("/register");
                },
                title: const Text("Register"),
              ),
            ],
          ),
          ListTile(
            title: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
                child: Text("Become Local Expert")),
          ),
        ],
      )),
    );
  }
}
