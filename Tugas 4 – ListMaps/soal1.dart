List<int> range(int startNum, int finishNum) {
  if (startNum <= finishNum) {
    return List<int>.generate(
        finishNum - startNum + 1, (index) => startNum + index);
  } else {
    return List<int>.generate(
        startNum - finishNum + 1, (index) => startNum - index);
  }
}

void main() {
  print(range(1, 10));
  print(range(11, 8));
}
