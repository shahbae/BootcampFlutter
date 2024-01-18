List<int> rangeWithStep(int startNum, int finishNum, int step) {
  if (startNum <= finishNum) {
    return List<int>.generate(
        ((finishNum - startNum) / step).floor() + 1,
        (index) => startNum + index * step);
  } else {
    return List<int>.generate(
        ((startNum - finishNum) / step).floor() + 1,
        (index) => startNum - index * step);
  }
}

void main() {
  print(rangeWithStep(1, 10, 2));  
  print(rangeWithStep(11, 23, 3)); 
  print(rangeWithStep(5, 2, 1));   
}
