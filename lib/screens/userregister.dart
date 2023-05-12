import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/components/signin.dart';

import '../components/signup.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        animationDuration: const Duration(seconds: 1),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.cancel_outlined),
            ),
            bottom: const TabBar(indicatorColor: Colors.blue, tabs: [
              Tab(
                text: "Sign in",
              ),
              Tab(
                text: "Sign up",
              )
            ]),
          ),
          body: TabBarView(children: [Signin(), Signup()]),
        ));
  }
}
