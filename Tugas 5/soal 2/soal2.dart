import 'dart:math';

class Lingkaran {
  double _jariJari = 0;

  Lingkaran(double jariJari) {
    setJariJari(jariJari);
  }

  double getJariJari() {
    return _jariJari;
  }

  void setJariJari(double jariJari) {
    if (jariJari < 0) {
      _jariJari = -jariJari;
    } else {
      _jariJari = jariJari;
    }
  }

  double hitungLuas() {
    return pi * _jariJari * _jariJari;
  }
}

void main() {
  Lingkaran lingkaran = Lingkaran(-5.0);

  print("Jari-Jari Lingkaran: ${lingkaran.getJariJari()}");
  print("Luas Lingkaran: ${lingkaran.hitungLuas()}");
}
