import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan%202/controller/appcontroller.dart';

class GetDataScreenStateManagement extends StatelessWidget {
  const GetDataScreenStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management GetX"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            return controller.postloading.value
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.getposts.length,
                    itemBuilder: (context, index) {
                      var item = controller.getposts[index];
                      return Card(
                        child: ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.body),
                          leading: Text(item.id.toString()),
                        ),
                      );
                    });
          }))
        ],
      ),
    );
  }
}
