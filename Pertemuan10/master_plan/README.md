Faradilla Roudhotul Sa'naa 
11 / 2241720205 / TI-3B

# Tugas Praktikum 1 
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki. <br>

    GIF BELOM 

    **Jawab :** Aplikasi Master Plan yang telah dikembangkan merupakan aplikasi to-do sederhana dengan antarmuka yang intuitif dan responsif. Pengguna dapat dengan mudah menambahkan tugas baru menggunakan tombol FloatingActionButton, dan setiap tugas akan ditampilkan dalam bentuk daftar yang dapat digulir. Setiap item tugas dilengkapi dengan Checkbox untuk menandai status tugas serta TextFormField untuk mengedit deskripsi. Selain itu, aplikasi ini dirancang untuk mengatasi masalah interaksi saat keyboard muncul, sehingga pengguna tetap dapat mengakses dan mengedit tugas yang terletak di bagian bawah layar tanpa kendala.

2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian? <br>
    **Jawab :** Langkah 4 bertujuan untuk mempermudah pengelolaan dan impor model dalam aplikasi dengan membuat file bernama data_layer.dart. File ini berperan sebagai penghubung atau akses utama untuk beberapa model (seperti plan.dart dan task.dart) yang dibutuhkan di lapisan data aplikasi. Dengan menggabungkan impor model-model tersebut dalam satu tempat, kode menjadi lebih ringkas dan lebih mudah dikelola seiring perkembangan aplikasi. GIF BELOM

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ? <br>
    **Jawab :** Pada langkah 6, variabel plan digunakan untuk menyimpan data dari objek Plan yang akan dikelola dan ditampilkan di layar. Variabel ini memudahkan akses dan manipulasi data terkait rencana (plan) dalam antarmuka pengguna, terutama saat pengguna menambahkan, mengubah, atau menghapus tugas (task) dalam aplikasi.

    Plan dibuat sebagai konstanta (const Plan()) untuk efisiensi dan keamanan data. Dengan menjadikannya konstanta, Dart hanya mengalokasikan memori satu kali, sehingga lebih hemat. Selain itu, konstanta mencegah perubahan yang tidak disengaja pada nilai awal plan, menjaga konsistensi data selama aplikasi berjalan. Ini juga mendukung konsep immutability yang memungkinkan Dart melakukan optimisasi lebih lanjut dan meningkatkan performa aplikasi.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! <br>



    **Jawab :** Aplikasi to-do sederhana bernama Master Plan telah dibangun menggunakan Flutter melalui sembilan langkah praktikum. Dimulai dengan pembuatan proyek baru dan pengaturan struktur folder. Model data Task dan Plan dibuat untuk menyimpan informasi tugas dan rencana. File data_layer.dart dibuat untuk menyederhanakan proses impor. Entry point aplikasi disiapkan di main.dart, dengan tema dan layar utama. PlanScreen, sebagai layar utama, dibuat menggunakan StatefulWidget, dan metode _buildAddTaskButton() ditambahkan untuk menambah tugas. ListView.builder digunakan untuk menampilkan daftar tugas, dan widget _buildTaskTile ditambahkan untuk menampilkan tugas dengan Checkbox dan TextFormField.

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ? <br>
    **Jawab :** Pada langkah 11, method initState() digunakan untuk menginisialisasi state widget ketika widget pertama kali dimuat. Dalam konteks ini, method ini menambahkan listener pada scrollController, yang memungkinkan aplikasi menghilangkan fokus dari elemen input saat pengguna menggulir. Ini meningkatkan pengalaman pengguna dengan mencegah keyboard virtual tetap muncul saat layar digulir.

    Sementara itu, pada langkah 13, method dispose() berfungsi untuk membersihkan sumber daya yang digunakan oleh widget ketika widget dihapus dari widget tree. Dalam hal ini, dispose() memanggil scrollController.dispose(), yang menghapus listener yang ditambahkan sebelumnya dan membebaskan memori yang digunakan oleh scrollController. Langkah ini penting untuk mencegah kebocoran memori dan memastikan aplikasi berjalan lebih efisien, terutama ketika berinteraksi dengan banyak widget atau saat terjadi perubahan state dalam aplikasi.

# Tugas Praktikum 2 
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
    **Jawab :** Pada langkah pertama, InheritedWidget adalah kelas dasar yang digunakan untuk meneruskan data ke widget-widget turunannya dalam pohon widget Flutter. Dalam konteks ini, kelas PlanProvider dibuat sebagai subclass dari InheritedNotifier<ValueNotifier<Plan>>. Hal ini memungkinkan PlanProvider tidak hanya menyimpan dan meneruskan data (dalam bentuk ValueNotifier<Plan>), tetapi juga memberitahu widget lain ketika data tersebut berubah. Dengan menggunakan InheritedNotifier, setiap kali nilai dalam ValueNotifier<Plan> diperbarui, widget-widget yang bergantung padanya akan otomatis diperbarui. Ini memungkinkan pembaruan UI yang lebih efisien dan responsif tanpa memerlukan pengelolaan state yang lebih rumit.

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
    **Jawab :** Pada langkah 3, ditambahkan dua metode dalam model kelas Plan, yaitu completedCount dan completenessMessage.Metode completedCount menghitung jumlah tugas yang telah diselesaikan dengan memfilter daftar tugas (tasks) berdasarkan properti complete. Hal ini memungkinkan pengguna untuk melihat jumlah tugas yang sudah mereka selesaikan.Metode completenessMessage menghasilkan string yang menampilkan perbandingan antara jumlah tugas yang telah diselesaikan dan total tugas yang ada, misalnya "3 out of 10 tasks." Ini memberikan konteks yang jelas bagi pengguna mengenai progres tugas mereka.Penambahan metode ini memisahkan logika perhitungan dari tampilan, meningkatkan keterbacaan dan organisasi kode, serta memungkinkan UI memperbarui informasi status tugas secara dinamis setiap kali terjadi perubahan. Hal ini menciptakan aplikasi yang lebih modular dan mudah dipelihara, sekaligus mengurangi kemungkinan terjadinya kesalahan.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat! <br>

    **Jawab :** Praktikum 2 bertujuan untuk mengelola data menggunakan InheritedWidget dan InheritedNotifier dalam aplikasi Flutter. Dalam praktikum ini, class PlanProvider dibuat untuk mengelola state dan data todo list secara terpisah dari UI. Dengan memanfaatkan ValueNotifier, class ini dapat memberi notifikasi kepada widget yang bergantung pada data saat terjadi perubahan. Dua metode baru ditambahkan ke model Plan, yaitu completedCount untuk menghitung tugas yang selesai dan completenessMessage untuk memberikan informasi progres tugas. Tujuan utamanya adalah agar tampilan mencerminkan data yang dikelola dengan lebih terstruktur dan terpisah dari logika aplikasi. GIF BELOM 


# Tugas Praktikum 3 
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini! <br>
    **Jawab :** Diagram ini menunjukkan perubahan dari aplikasi satu layar menjadi aplikasi multi-layar di Flutter. Di sisi kiri, terlihat struktur awal aplikasi dengan satu layar di mana `PlanCreatorScreen` mengelola daftar tugas menggunakan susunan kolom. Dalam struktur ini, semua tugas dikelola dalam satu layar, dan manajemen *state* hanya terbatas di layar tersebut. Di sisi kanan, struktur aplikasi telah diperbarui dengan menambahkan layar kedua (`PlanScreen`) yang dapat diakses melalui `Navigator.push`, sehingga aplikasi mampu menangani beberapa daftar rencana (*plans*). Penambahan *SafeArea*, *Scaffold*, dan manajemen *state* yang lebih baik melalui `PlanProvider` memungkinkan setiap rencana ditampilkan, diedit, dan diperbarui secara mandiri. Dengan menerapkan prinsip *Lift State Up*, *state* untuk rencana dikelola pada level yang lebih tinggi di dalam *widget tree*, memungkinkan beberapa layar berbagi dan mengakses data yang sama tanpa duplikasi atau masalah manajemen *state*.

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat! <br>
    **Jawab :** Master Plan memungkinkan pengguna untuk membuat dan mengelola beberapa daftar rencana (plans) di berbagai layar. Pada tampilan utama, yaitu PlanCreatorScreen, pengguna dapat menambahkan rencana baru melalui kolom input, dan rencana tersebut akan muncul dalam daftar. Ketika pengguna memilih rencana, aplikasi akan berpindah ke layar PlanScreen yang menampilkan detail rencana beserta tugas-tugasnya. Setiap tugas dapat ditandai sebagai selesai atau diubah deskripsinya.

    GIF BELOM 






