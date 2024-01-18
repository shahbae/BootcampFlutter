import 'dart:io';

void main() {
  //
// NO 1
// =======================

  stdout.write('Mau menginstall aplikasi? (Y/T): ');
  String jawab = stdin.readLineSync()!.toUpperCase();
  String pesan =
      (jawab == 'Y') ? 'Anda akan menginstall aplikasi Dart' : 'Aborted';
  print(pesan);

// NO 2
// =======================

  // var nama = "";
  // var peran = "";

  // print('Masukkan nama: ');
  // nama = stdin.readLineSync()!;
  // if (nama == "") {
  //   print("Nama harus diisi!");
  // } else {
  //   print(
  //       "Halo $nama, Pilih peranmu untuk memulai game! \n Penyihir\n Guard\n Werewolf");
  //   peran = stdin.readLineSync()!;
  //   print("Selamat datang di Dunia Werewolf, $nama");
  //   if (peran == "Penyihir") {
  //     print(
  //         "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
  //   } else if (peran == "Guard") {
  //     print(
  //         "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  //   } else if (peran == "Werewolf") {
  //     print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
  //   } else {
  //     print("Maaf, peran '$peran' tidak tersedia.");
  //   }
  // }

  // NO 3
  // =======================

  // stdout.write("Inputkan hari [senin - minggu]: ");
  // String hari = stdin.readLineSync()!.toLowerCase();

  // switch (hari) {
  //   case "senin":
  //     print(
  //         "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
  //     break;
  //   case "selasa":
  //     print(
  //         "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
  //     break;
  //   case "rabu":
  //     print(
  //         "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
  //     break;
  //   case "kamis":
  //     print(
  //         "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
  //     break;
  //   case "jumat":
  //     print("Hidup tak selamanya tentang pacar.");
  //     break;
  //   case "sabtu":
  //     print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
  //     break;
  //   case "minggu":
  //     print(
  //         "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
  //     break;
  //   default:
  //     print("Silahkan inputkan hari Senin, Selasa, ..., Minggu.");
  // }

  // NO 4
  // =======================

  // var tanggal = 21;
  // var bulan = 12;
  // var tahun = 2000;

  // String namaBulan = "";

  // switch (bulan) {
  //   case 1:
  //     namaBulan = "Januari";
  //     break;
  //   case 2:
  //     namaBulan = "Februari";
  //     break;
  //   case 3:
  //     namaBulan = "Maret";
  //     break;
  //   case 4:
  //     namaBulan = "April";
  //     break;
  //   case 5:
  //     namaBulan = "Mei";
  //     break;
  //   case 6:
  //     namaBulan = "Juni";
  //     break;
  //   case 7:
  //     namaBulan = "Juli";
  //     break;
  //   case 8:
  //     namaBulan = "Agustus";
  //     break;
  //   case 9:
  //     namaBulan = "September";
  //     break;
  //   case 10:
  //     namaBulan = "Oktober";
  //     break;
  //   case 11:
  //     namaBulan = "November";
  //     break;
  //   case 12:
  //     namaBulan = "Desember";
  //     break;
  //   default:
  //     print("Inputkan bulan Januari - Desember.");
  //     return;
  // }

  // print("Hasil : ${tanggal} ${namaBulan} ${tahun}");
}
