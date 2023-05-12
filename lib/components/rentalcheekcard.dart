import 'package:flutter/material.dart';
import 'package:get/get.dart';

class rentalcheekcard extends StatelessWidget {
  const rentalcheekcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: Card(
          elevation: 0,
          child: Column(
            children: [
              const ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.location_on),
                title: Text("Location"),
                subtitle: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 13),
                      hintText: "Where are you going?"),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime(2022),
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2060));
                      },
                      title: const Text(
                        "Date",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: const Icon(Icons.calendar_month),
                      subtitle: const Text(
                        "add date",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_right),
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime(2022),
                            firstDate: DateTime(2022),
                            lastDate: DateTime(2060));
                      },
                      title: const Text(
                        "cheek out",
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: const Icon(Icons.calendar_month),
                      subtitle: const Text(
                        "add date",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
              const ListTile(
                leading: Icon(Icons.people),
                title: Text(
                  "Guests",
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: Text(
                  "add guests and room",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              FlatButton.icon(
                  minWidth: Get.width,
                  height: 50,
                  color: Colors.blue,
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
