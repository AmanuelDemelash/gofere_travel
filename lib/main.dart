import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofere_travel/binding/appbinding.dart';
import 'package:gofere_travel/screens/blogdetail.dart';
import 'package:gofere_travel/screens/home.dart';
import 'package:gofere_travel/screens/homeoage.dart';
import 'package:gofere_travel/screens/hoteldetail.dart';
import 'package:gofere_travel/screens/splash.dart';
import 'package:gofere_travel/screens/userregister.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        //  fontFamily:myfont,
      ),
      initialRoute: "/splash",
      getPages: [
        GetPage(name: "/homepage", page: () => Homepage()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/register", page: () => UserRegister()),
        GetPage(name: "/splash", page: () => Splash()),
        GetPage(name: "/hoteldetail", page: () => Hoteldetail()),
        GetPage(name: "/blogdetail", page: () => Blogdetail())
      ],
    );
  }
}
