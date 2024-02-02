import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2Route/pages/page_1.dart';
import 'package:sanberappflutter/Latihan/Latihan2Route/pages/page_2.dart';
import 'package:sanberappflutter/Latihan/Latihan2Route/pages/page_3.dart';
import 'package:sanberappflutter/Latihan/Latihan2Route/routes/route_name.dart';

class PageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => const PageOne(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => const PageTwo(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => const PageThree(),
    ),
  ];
}
