void main() {
  String namaLengkap = "Faradilla Roudhotul S";
  String NIM = "2241720205";

  for (int angka = 2; angka <= 201; angka++) {
    bool isPrima = true;

    // Memeriksa apakah angka termasuk bilangan prima 
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) {
        isPrima = false;
        break;
      }
    }

    // Memunculkan bilangan prima beserta nama dan nim
    if (isPrima) {
      print("$angka adalah bilangan prima.");
      print("Nama : $namaLengkap");
      print("NIM  : $NIM");
    }
  }
}
