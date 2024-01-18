void dataHandling(List<List<String>> data) {
  for (List<String> dataOrang in data) {
    if (dataOrang.length >= 4) {
      print("Nomor ID: ${dataOrang[0]}");
      print("Nama Lengkap: ${dataOrang[1]}");
      print("TTL: ${dataOrang[2]} ${dataOrang[3]}");
      print("Hobi: ${dataOrang[4]}");

      print("");
    } else {
      print("Data tidak lengkap untuk ID ${dataOrang[0]}");
    }
  }
}

void main() {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];

  dataHandling(input);
}
