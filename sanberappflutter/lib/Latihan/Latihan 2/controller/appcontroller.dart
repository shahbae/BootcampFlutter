import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan%202/model/postmodel.dart';
import 'package:sanberappflutter/Latihan/Latihan%202/services/services.dart';

class AppController extends GetxController {
  var getposts = <Postmodel>[].obs;

  Services services = Services();
  var postloading = true.obs;

  @override
  void onInit() {
    callpostmethod();
    // TODO: implement onInit
    super.onInit();
  }

  callpostmethod() async {
    try {
      postloading.value = true;
      var result = await services.getAllPosts();
      if (result != null) {
        getposts.assignAll(result);
      } else {
        print("null");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}
