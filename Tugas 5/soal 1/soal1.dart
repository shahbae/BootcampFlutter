class Segitiga {
  double setengah;
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi) : setengah = 0.5;

  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}

void main() {
  double alas = 20.0;
  double tinggi = 30.0;

  Segitiga segitiga = Segitiga(alas, tinggi);
  var luasSegitiga = segitiga.hitungLuas();

  print(luasSegitiga);
}
