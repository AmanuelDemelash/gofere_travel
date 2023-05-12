import 'package:get/get.dart';
import 'package:gofere_travel/models/blogs.dart';
import 'package:gofere_travel/models/car.dart';
import 'package:gofere_travel/models/destination.dart';

import '../models/hotel.dart';

class HomeController extends GetxController {
  List<String> landing_menu = [
    "Tours",
    "Hotel",
    "Rental",
    "CarsRental",
  ];

  var land_menu_item = 0.obs;
  var des = 0.obs;

  void changecarusel(int index) {
    des.value = index;
  }

  void changemenu(int index) {
    land_menu_item.value = index;
  }

  List<Destination> destinations = [
    Destination("Bahir Dar", 18, 34, 55, 32, 16,
        "https://th.bing.com/th/id/R.6ff42f2c8e724a7dabc2eea689aa2ee2?rik=XTWlHC5%2bLIHCtQ&riu=http%3a%2f%2fwww.addisherald.com%2fwp-content%2fgrand-media%2fimage%2fbahir_dar_22_1.jpg&ehk=r5gCwS7Zi7yL%2bDyPNFRdLYzheNm6g25DaPX4wXLjiOg%3d&risl=&pid=ImgRaw&r=0"),
    Destination("Addis Ababa", 18, 20, 50, 32, 10,
        "https://th.bing.com/th/id/OIP.Xe85dW4rT8ANnmXxBVru_AHaE8?pid=ImgDet&rs=1"),
    Destination("Dire Dawa", 18, 34, 55, 32, 16,
        "https://i.ytimg.com/vi/x2N-d_Kp-RY/maxresdefault.jpg"),
    Destination("Mekele", 18, 34, 55, 32, 16,
        "https://th.bing.com/th/id/R.2b8518ab3d407dd02795653b8d6e7c32?rik=RykuWKkx4Bznxg&riu=http%3a%2f%2fwww.tigraionline.com%2ftasset%2fimages%2fmekelle-city-tigrai-ethiopia.jpg&ehk=StLSLdKxOWG%2bjptUfB5UNoR041IXnTopPuFcVAl0KF8%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1"),
    Destination("Adama", 18, 34, 55, 32, 16,
        "https://th.bing.com/th/id/R.ece85714038b8cb9ecca17fa1a729d65?rik=5KFwzpXBiv27xg&pid=ImgRaw&r=0"),
    Destination("Hawassa", 18, 34, 55, 32, 16,
        "https://live.staticflickr.com/3422/3836815976_77a11266d0_b.jpg"),
  ];

  List<Blog> blogs = [
    Blog(
        "The Ultimate Cheat Sheet on Travel",
        "If you’re a student who is planning on attending school abroad as part of your studies or you’re being relocated by your company, it can seem daunting to visit a new country for the first time. ",
        "BOOKING"),
    Blog(
        "Meet the Steve Jobs of the Travel Industry",
        "If you’re a student who is planning on attending school abroad as part of your studies or you’re being relocated by your company, it can seem daunting to visit a new country for the first time. ",
        "TRAVEL"),
    Blog(
        "The Ultimate Cheat Sheet on Travel",
        "If you’re a student who is planning on attending school abroad as part of your studies or you’re being relocated by your company, it can seem daunting to visit a new country for the first time. ",
        "HOTEL"),
    Blog(
        "Pure Luxe in Punta Mita the original contained",
        "If you’re a student who is planning on attending school abroad as part of your studies or you’re being relocated by your company, it can seem daunting to visit a new country for the first time. ",
        "STAY"),
    Blog(
        "The Ultimate Cheat Sheet on Travel",
        "If you’re a student who is planning on attending school abroad as part of your studies or you’re being relocated by your company, it can seem daunting to visit a new country for the first time. ",
        "BOOKING"),
  ];

  List<Hotel> hotels = [
    Hotel("Hilton ", "Addis Ababa", "Excellent", 3000, 4,
        "https://th.bing.com/th/id/R.f8b79f960e1dfe532607225bc6326a5b?rik=psZlIlzIMIs24g&pid=ImgRaw&r=0"),
    Hotel("Abyssinia Renaissance", "Addis Ababa", "Excellent", 3000, 5,
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/47/b6/42/a.jpg?w=900&h=-1&s=1"),
    Hotel("Harmony", "Addis Ababa", "Good", 2300, 3,
        "https://th.bing.com/th/id/R.c261ec0b6a632a08dc5114a8b7669fa3?rik=DekMCrNtRj%2bJfg&riu=http%3a%2f%2fimages.trvl-media.com%2fhotels%2f3000000%2f2320000%2f2318300%2f2318268%2fba988581_z.jpg&ehk=B4ukYuy9Pgf6QhD0cPDGWgfcZbCZ5dqXX6Ka%2fnHYILo%3d&risl=&pid=ImgRaw&r=0"),
    Hotel("Capital Hotel And Spa ", "Addis Ababa", "Excellent", 3000, 4,
        "https://th.bing.com/th/id/R.f8b79f960e1dfe532607225bc6326a5b?rik=psZlIlzIMIs24g&pid=ImgRaw&r=0"),
    Hotel("Mado ", "Addis Ababa", "Excellent", 3000, 5,
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/47/b6/42/a.jpg?w=900&h=-1&s=1"),
    Hotel("Elilly International", "Addis Ababa", "Good", 2300, 3,
        "https://th.bing.com/th/id/R.c261ec0b6a632a08dc5114a8b7669fa3?rik=DekMCrNtRj%2bJfg&riu=http%3a%2f%2fimages.trvl-media.com%2fhotels%2f3000000%2f2320000%2f2318300%2f2318268%2fba988581_z.jpg&ehk=B4ukYuy9Pgf6QhD0cPDGWgfcZbCZ5dqXX6Ka%2fnHYILo%3d&risl=&pid=ImgRaw&r=0")
  ];

  List<Car> mycars = [
    Car("Land Cruser", "4", "4", "4", 1200,
        "https://media.ed.edmunds-media.com/toyota/land-cruiser/2013/ot/2013_toyota_land-cruiser_f34_ot_13112_1600.jpg"),
    Car("RAW track", "4", "4", "4+", 1200,
        "https://th.bing.com/th/id/R.f7838a272b0ba432192bc4b8b17dc4d0?rik=z3OHUdFyxDIR6g&riu=http%3a%2f%2fwww.lrsperformanceinc.com%2fwp-content%2fuploads%2f2019%2f08%2fScreen-Shot-2019-06-27-at-1.58.21-PM.png&ehk=fo7SlxE3iUzFDNWmgmPrCoHUyIlTjfmaYUXe4AYNrcQ%3d&risl=&pid=ImgRaw&r=0"),
    Car("Land Cruser", "4", "4", "4", 1200,
        "https://th.bing.com/th/id/R.b875d32e126044ea1876ad0f4a591a43?rik=yp3UamvFfWzrnw&pid=ImgRaw&r=0"),
    Car("Ford f1-15", "4", "4", "4", 1200,
        "https://th.bing.com/th/id/R.b9963f79b4fadbe5b67365589e1017aa?rik=CMqT2OpGzztqwA&pid=ImgRaw&r=0"),
    Car("RAW track", "4", "4", "4+", 1200,
        "https://th.bing.com/th/id/R.f7838a272b0ba432192bc4b8b17dc4d0?rik=z3OHUdFyxDIR6g&riu=http%3a%2f%2fwww.lrsperformanceinc.com%2fwp-content%2fuploads%2f2019%2f08%2fScreen-Shot-2019-06-27-at-1.58.21-PM.png&ehk=fo7SlxE3iUzFDNWmgmPrCoHUyIlTjfmaYUXe4AYNrcQ%3d&risl=&pid=ImgRaw&r=0"),
    Car("Land Cruser", "4", "4", "4", 1200,
        "https://th.bing.com/th/id/R.b875d32e126044ea1876ad0f4a591a43?rik=yp3UamvFfWzrnw&pid=ImgRaw&r=0"),
    Car("Ford f1-15", "4", "4", "4", 1200,
        "https://th.bing.com/th/id/R.b9963f79b4fadbe5b67365589e1017aa?rik=CMqT2OpGzztqwA&pid=ImgRaw&r=0"),
  ];
}
