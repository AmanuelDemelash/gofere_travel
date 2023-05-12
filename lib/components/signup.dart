import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 14,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Create an account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "User name",
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Full name",
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              padding: EdgeInsets.all(10),
              child:
                  const Text("Sign up", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        ListTile(
          leading: Checkbox(value: false, onChanged: (value) {}),
          title: const Text(
            "I comfirm that i have read accepted the Privacy Policy",
            style: TextStyle(fontSize: 13),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Center(
          child: Text("Or Sign in with"),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton.icon(
                color: Colors.white,
                elevation: 0,
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.facebook),
                label: Text("Facebook")),
            RaisedButton.icon(
                color: Colors.white,
                elevation: 0,
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text("Google")),
            RaisedButton.icon(
                color: Colors.white,
                elevation: 0,
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.twitter),
                label: Text("Twitter"))
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
