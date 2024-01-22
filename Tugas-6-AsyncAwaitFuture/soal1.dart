import 'dart:async';

void main() async {
  var h = Human();
  
  print("Luffy");
  print("Zoro");
  print("Killer");

  await h.getData();
  print(h.name);
}

class Human {
  String name = "nama character one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Nur Shah Alam";
    print("get data [done]");
  }
}
