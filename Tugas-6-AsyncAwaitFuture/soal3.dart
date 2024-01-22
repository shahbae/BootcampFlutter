void line1() {
  print("But I'm a creep");
}

void line2() {
  print("I'm a weirdo");
}

void line3() {
  print("What the hell am I doing here?");
}

void line4() {
  print("I don't belong here");
}

void main(List<String> args) async {
  print("Creep - Radiohead");
  await Future.delayed(Duration(seconds: 3), () {
    line1();
  });

  await Future.delayed(Duration(seconds: 3), () {
    line2();
  });

  await Future.delayed(Duration(seconds: 4), () {
    line3();
  });

  await Future.delayed(Duration(seconds: 2), () {
    line4();
  });
}
