# LAPORAN PERTEMUAN 4 

## Praktikum 1 : Eksperimen Tipe Data List 

1. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! <br>
    **Jawab :** Kode program ini menunjukkan cara membuat array, mengakses elemen-elemennya, dan mengubah nilai elemen-elemen tersebut. Fungsi assert digunakan untuk memastikan bahwa operasi-operasi pada array berjalan sesuai dengan yang diharapkan. <br> <img src=img/P1-L1.png> <br>
2. Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. <br>
    **Jawab :** Kode program tersebut menunjukkan cara membuat list dengan elemen-elemen null, mengisi elemen-elemen dengan data string, dan mencetak isi dari list tersebut.<br> <img src=img/P1-L3.png> <br>
    ```
    void main() {
    final List<String?> list = List.filled(5, null);
    assert(list.length == 5);

    list[1] = "Faradilla Roudhotul Sa'naa";
    list[2] = "2241720205";

    print(list.length);
    print("Nama: ${list[1]}");
    print("NIM: ${list[2]}");
    }
    ```

## Praktikum 2 : Eksperimen Tipe Data Set 

1. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
    **Jawab :** Kode program tersebut mendefinisikan sebuah set bernama halogens yang berisi nama-nama unsur halogen. Lalu, set tersebut dicetak untuk menampilkan isinya.<br> <img src=img/P2-L1.png> <br>
2. Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). <br>
    **Jawab :** Kode program tersebut menunjukkan cara membuat dan memanipulasi set dalam Dart<br> <img src=img/P2-L3-Modifikasi.png> <br>
    ```
    void main() {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    var names1 = <String>{};
    Set<String> names2 = {}; 

    names1.add('Faradilla Roudhotul S'); 
    names1.add('2241720205'); 

    names2.addAll(['Faradilla Roudhotul S', '2241720205']);

    print(names1);
    print(names2);
    }
    ```

## Praktikum 3 : Eksperimen Tipe Data Maps 

1. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
    **Jawab :** Key berfungsi sebagai indeks untuk mencari nilai yang terkait. Map sangat berguna untuk menyimpan data yang berhubungan satu sama lain. <br> <img src=img/P3-L1.png> <br>
2. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). <br>
    **Jawab :** Kode program tersebut menunjukkan konsep map pada dart, yang merupakan struktur data yang menyimpan pasangan key-value. Map gifts dan nobleGases diinisialisasi dengan data awal. Kemudian, dua map baru mhs1 dan mhs2 dibuat dengan tipe data yang berbeda. Elemen-elemen ditambahkan ke kedua map menggunakan operator [] dan kemudian dicetak. <br> <img src=img/P3-L3-Modifikasi.png> <br>
    ```
    void main() {
    var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Faradilla Roudhotul S',
    'nim': '2241720205',
    };

    var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    19: 'Faradilla Roudhotul S',
    20: '2241720205',
    };

    print(gifts);
    print(nobleGases);

    var mhs1 = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';
    mhs1['nama'] = 'Faradilla Roudhotul S';
    mhs1['nim'] = '2241720205';

    var mhs2 = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';
    mhs2[1] = 'Faradilla Roudhotul S';
    mhs2[2] = '2241720205';

    print(mhs1);
    print(mhs2);
    }


## Praktikum 4 : Eksperimen Tipe Data List: Spread dan Control-flow Operators

1. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
    **Jawab :** Kode tersebut menunjukkan cara menggabungkan dua list. Pertama, dibuat dua list: list berisi angka 1, 2, dan 3, sedangkan list2 awalnya hanya berisi angka 0. Kemudian, menggunakan operator spread (...), semua elemen dari list ditambahkan ke akhir list2. Sehingga, list2 sekarang berisi 0, 1, 2, dan 3. Akhirnya, isi dari kedua list dan panjang list2 dicetak. Operator spread ini berguna untuk menggabungkan list dengan mudah dan efisien.<br> <img src=img/P4-L1.png> <br>
2. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya! <br>
    **Jawab :** <br> Kode program ini menunjukkan penggunaan operator spread (...) untuk menggabungkan list dan operator null-aware spread (...?). Pertama, list digabungkan dengan list2 menggunakan .... Kemudian, list3 dibuat dengan menggunakan ...? untuk menggabungkan dengan list hanya jika list tidak null. Jika list null, list3 akan menjadi kosong. Akhirnya, isi dari semua list dan panjangnya dicetak. <img src=img/P4-L3-Modifikasi.png> <br>
    ```
    var nim = '2241720205';
    var list = [1, 2, 3];
    var list2 = [0, ...list, nim];  
    print(list);
    print(list2);
    print(list2.length);

    var list1 = [1, 2, null];  
    print(list1);
    var list3 = [0, ...?list];  
    print(list3.length);
3. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false. <br>
    **Jawab :** List nav berisi nama-nama halaman navigasi yang akan ditampilkan. Elemen 'Outlet' akan ditambahkan ke list hanya jika kondisi promoActive bernilai benar (true). Ini memungkinkan kita untuk membuat tampilan navigasi yang berbeda-beda tergantung pada kondisi tertentu, seperti apakah ada promo aktif atau tidak. <br> <img src=img/P4-L4.png> <br>
4. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain. <br>
    **Jawab :** List nav2 berisi nama-nama halaman navigasi yang akan ditampilkan. Elemen 'Inventory' hanya akan ditambahkan ke list jika kondisi login bernilai 'Manager'. Ini memungkinkan kita untuk membuat tampilan navigasi yang berbeda-beda tergantung pada peran pengguna yang sedang login, sehingga hanya menampilkan menu yang relevan untuk setiap peran. <br> <img src=img/P4-L5.png> <br>
5. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya. <br>
    **Jawab :** Menunjukkan penggunaan Collection For untuk membuat sebuah list baru dari elemen-elemen yang ada di list lain. Pertama, kita memiliki listOfInts yang berisi angka 1, 2, dan 3. Kemudian, kita membuat listOfStrings dengan elemen pertama "#0". Selanjutnya, menggunakan Collection For, kita iterasi melalui setiap elemen di listOfInts dan menambahkan string "#i" ke listOfStrings. Jadi, listOfStrings akan berisi ["#0", "#1", "#2"]. assert(listOfStrings[1] == '#1') digunakan untuk memastikan bahwa elemen kedua dari listOfStrings adalah "#1". Manfaat dari Collection For adalah memudahkan dalamp pembuatan list baru, serta menjadi lebih efisien. <br> <img src=img/P4-L6.png> <br>

## Praktikum 5 : Eksperimen Tipe Data Records 

1. Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
    **Jawab :** Pada kode program tersebut, digunakan record untuk menyimpan beberapa nilai yang berbeda (string, integer, boolean) dan memanfaatkan label untuk beberapa nilai. Ini menunjukkan fleksibilitas record dalam menyimpan serta menampilkan kumpulan data dengan cara yang ringkas dan efisien. <br> <img src=img/P5-L1.png> <br>
2. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records. <br>
    **Jawab :** <br> <img src=img/P5-L1.png> <br>
3. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya! <br>
    **Jawab :** <br> <img src=img/P5-L4.png> <br>
    ```
    var record = ('first', a: 2, b: true, 'last');
    print(record);

    (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
    }

    // Record type annotation in a variable declaration:
    var mahasiswa = ('Faradilla Roudhotul S', nim: 2241720205);
    print(mahasiswa);
4. Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya! <br>
    **Jawab :** <br> <img src=img/P5-L5-Modifikasi.png> <br>
    ```
    void main() {
    var record = ('first', a: 2, b: true, 'last');
    print(record);

    (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
    }

    // Record type annotation in a variable declaration:
    var mahasiswa = ('Faradilla Roudhotul S', nim: 2241720205);
    print(mahasiswa);

    var mahasiswa2 = ('first', nim: 2241720205, b: true, 'last');
    print(mahasiswa2.$1); // Prints 'first'
    print(mahasiswa2.nim); // Prints 2
    print(mahasiswa2.b); // Prints true
    print(mahasiswa2.$2); // Prints 'last'
    }

## TUGAS PRAKTIKUM 
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya! <br>
2. Jelaskan yang dimaksud Functions dalam bahasa Dart! <br>
    **Jawab :** Fungsi adalah blok kode yang terstruktur dan dapat dibaca, yang dirancang untuk memudahkan pemeliharaan dan penggunaan kembali. Setelah didefinisikan, fungsi dapat dipanggil untuk menjalankan kode yang terkandung di dalamnya. <br>
3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya! <br>
    **Jawab :** <br>
    a. Parameter wajib : Parameter ini harus diberikan ketika fungsi dipanggil dan diidentifikasi berdasarkan urutan posisinya. 
    ```
    void greet(String name, int age) {
    print('Hello, $name! You are $age years old.');
    }

    // Memanggil fungsi
    greet('Faradilla', 21);  // Output: Hello, Faradilla! You are 21 years old.
    ```
    b. Parameter opsional : Parameter ini bersifat opsional dan tidak wajib diberikan saat fungsi dipanggil. Jika parameter opsional tidak disertakan, nilainya akan null atau menggunakan nilai default (jika sudah ditentukan).
    ```
    void greet([String name = 'User', int age = 0]) {
    print('Hello, $name! You are $age years old.');
    }

    // Memanggil fungsi
    greet();              // Output: Hello, User! You are 0 years old.
    greet('Faradilla');      // Output: Hello, Faradilla! You are 0 years old.
    greet('Faradilla', 21);   // Output: Hello, Faradilla! You are 21 years old.
    ```
4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya! <br>
    **Jawab :** <br>
    Dalam pemrograman Dart, fungsi dianggap sebagai "first-class objects", yang berarti fungsi dapat diperlakukan seperti objek lainnya. Artinya, Anda dapat melakukan beberapa hal berikut dengan fungsi:

    a. Menyimpan fungsi dalam variabel: Anda dapat menyimpan fungsi dalam variabel dan memanggilnya melalui variabel tersebut. <br>
    b. Melewatkan fungsi sebagai argumen: Fungsi dapat diteruskan sebagai argumen ke fungsi lain. <br>
    c. Mengembalikan fungsi dari fungsi lain: Sebuah fungsi dapat mengembalikan fungsi lain sebagai hasil.
    ```
    // Mendefinisikan fungsi untuk mengalikan dua angka
    int kali(int a, int b) {
    return a * b;
    }

    // Fungsi yang menerima fungsi sebagai argumen
    void tampilkanHasil(Function operasi, int x, int y) {
    int hasil = operasi(x, y);
    print('Hasil perhitungan: $hasil');
    }

    void main() {
    // Menyimpan fungsi dalam variabel
    var fungsiKali = kali;

    // Menggunakan fungsi sebagai argumen
    tampilkanHasil(fungsiKali, 6, 4); // Output: Hasil perhitungan: 24

    // Fungsi yang mengembalikan fungsi lain
    Function buatFungsiTambah(int angka) {
        return (int nilai) => nilai + angka;
    }

    var tambahLima = buatFungsiTambah(5);
    print(tambahLima(10)); // Output: 15
    }
    ```
    Penjelasan: <br>
    a. Mendefinisikan Fungsi: Fungsi kali dibuat untuk mengalikan dua angka. <br>
    b. Fungsi sebagai Argumen: Fungsi tampilkanHasil menerima fungsi lain sebagai argumen bersama dengan dua angka, lalu memanggil fungsi tersebut dan mencetak hasilnya. <br>
    c. Variabel Fungsi: Fungsi kali disimpan dalam variabel fungsiKali, dan kemudian digunakan sebagai argumen. <br>
    d. Mengembalikan Fungsi: Fungsi buatFungsiTambah mengembalikan fungsi baru yang menambahkan angka yang diterima dengan nilai yang diberikan.
5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya! <br>
    **Jawab :** Anonymous Functions (atau lambda functions atau function literals) adalah fungsi tanpa nama yang sering digunakan untuk penulisan kode yang lebih ringkas, terutama ketika fungsi tersebut hanya dipanggil sekali dan tidak perlu dideklarasikan secara terpisah. Fungsi anonim sangat berguna untuk membuat kode lebih sederhana dan mudah dibaca. <br>
    a. Melewatkan Fungsi Anonim sebagai Argumen 
    ```
    void main() {
    List<int> angka = [1, 2, 3, 4, 5];

    // Menggunakan fungsi anonim dengan forEach untuk mengalikan setiap elemen dengan 2
    angka.forEach((nilai) {
        print(nilai * 2); // Output: 2, 4, 6, 8, 10
    });
    }
    ```
    b. Menggunakan Sintaks Panah
    ```
    void main() {
    List<int> angka = [1, 2, 3, 4, 5];

    // Menggunakan fungsi anonim dengan map, ditulis dengan sintaks panah
    var hasilPerkalian = angka.map((nilai) => nilai * 2);
    print(hasilPerkalian.toList()); // Output: [2, 4, 6, 8, 10]
    }
    ```
    c. Menyimpan Fungsi Anonim dalam Variabel
    ```
    void main() {
    // Menyimpan fungsi anonim dalam variabel
    var sapaan = (String nama) {
        return 'Halo, $nama!';
    };

    print(sapaan('Bob')); // Output: Halo, Bob!
    }
    ```
    d. Menggunakan Fungsi Anonim dengan Callback
    ```
    void main() {
    // Fungsi yang menerima callback
    void jalankanOperasi(void Function() aksi) {
        // Beberapa operasi yang dilakukan
        aksi(); // Memanggil callback
    }

    // Memanggil fungsi dengan fungsi anonim sebagai callback
    jalankanOperasi(() => print('Operasi berhasil dilakukan')); // Output: Operasi berhasil dilakukan
    }
    ```
6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya! <br>
    **Jawab :** <br>
    a. Lexical Scope
    ```
    void main() {
    var luar = 'Luar';

    void fungsiLuar() {
        var dalam = 'Dalam';

        print(luar);   // Akses variabel luar
        print(dalam);  // Akses variabel lokal
    }

    fungsiLuar();

    // print(dalam); // Error: 'dalam' tidak bisa diakses di sini
    }
    ```
    b. Lexical Closures
    ```
    Function buatPenghitung() {
    var hitung = 0;

    return () {
        hitung++;
        return hitung;
    };
    }

    void main() {
    var penghitung = buatPenghitung();

    print(penghitung()); // Output: 1
    print(penghitung()); // Output: 2
    print(penghitung()); // Output: 3
    }
    ```
    Penjelasan : <br>
    - Lexical scope menentukan visibilitas variabel berdasarkan lokasi penulisannya.
    - Lexical closures memungkinkan fungsi terus mengakses variabel di lingkungannya meskipun eksekusi lingkungannya selesai.

7. Jelaskan dengan contoh cara membuat return multiple value di Functions! <br>
    **Jawab :** <br>
    a. Menggunakan List (Mengembalikan beberapa hasil pengukuran)
    ```
    List<double> hitungLingkaran(double jariJari) {
    double luas = 3.14 * jariJari * jariJari;
    double keliling = 2 * 3.14 * jariJari;
    return [luas, keliling]; // Mengembalikan luas dan keliling
    }

    void main() {
    List<double> hasil = hitungLingkaran(7);
    print('Luas: ${hasil[0]}');      // Output: Luas: 153.86
    print('Keliling: ${hasil[1]}');  // Output: Keliling: 43.96
    }
    ```
    b. Menggunakan Map (Mengembalikan detail seseorang)
    ```
    Map<String, dynamic> getPersonDetails(String nama, int umur) {
    return {
        'nama': nama,
        'umur': umur,
        'status': umur >= 18 ? 'Dewasa' : 'Anak-anak'
    };
    }

    void main() {
    var detail = getPersonDetails('Ali', 20);
    print('Nama: ${detail['nama']}');       // Output: Nama: Ali
    print('Umur: ${detail['umur']}');       // Output: Umur: 20
    print('Status: ${detail['status']}');   // Output: Status: Dewasa
    }
    ```
    c. Menggunakan Class (Mengembalikan koordinat 3D)
    ```
    class Koordinat3D {
    double x;
    double y;
    double z;

    Koordinat3D(this.x, this.y, this.z);
    }

    Koordinat3D getKoordinat3D(double x, double y, double z) {
    return Koordinat3D(x, y, z); // Mengembalikan objek dengan tiga nilai koordinat
    }

    void main() {
    var koordinat = getKoordinat3D(3.5, 7.2, 9.1);
    print('X: ${koordinat.x}');  // Output: X: 3.5
    print('Y: ${koordinat.y}');  // Output: Y: 7.2
    print('Z: ${koordinat.z}');  // Output: Z: 9.1
    }
    ```
    Penjelasan:
    - List digunakan untuk mengembalikan luas dan keliling lingkaran.
    - Map mengembalikan informasi tentang seseorang (nama, umur, dan status).
    - Class digunakan untuk mengembalikan nilai koordinat 3D dalam satu objek.

