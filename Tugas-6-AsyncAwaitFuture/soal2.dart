void main(List<String> args) {
  print("Life");
  print("never flat");
  print("is");

  Future.delayed(Duration(seconds: 3), () {
    print("Life is never flat");
  });
}
