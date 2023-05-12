import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);
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
          child: Text("Sign in to your account",
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
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                  )),
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
                      prefixIcon: Icon(Icons.key),
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: SizedBox(
                        width: Get.width,
                        child: RaisedButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: const Text("Login",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )),
                ],
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [Text("Forgot password?", style: TextStyle())],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Divider(), Text("Or Sign in with"), Divider()],
        ),
        const SizedBox(
          height: 20,
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
        )
      ],
    );
  }
}
