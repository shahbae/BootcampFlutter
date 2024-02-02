import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2Route/routes/route_name.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_3);
              },
              child: Text("Menuju ke halaman tiga"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_1);
              },
              child: Text("Kembali ke page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
