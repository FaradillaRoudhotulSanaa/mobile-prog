# Tugas Praktikum 

1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat! <br>

2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya! <br>

3. Jelaskan maksud void async pada praktikum 1? <br>
    **Jawab :** Fungsi bertipe void dan menggunakan async dalam praktikum 1 menunjukkan bahwa fungsi tersebut tidak mengembalikan nilai, namun bekerja secara asynchronous. Dengan demikian, proses di dalam fungsi akan berjalan di latar belakang tanpa menghentikan alur utama aplikasi. Penggunaan async dalam konteks ini memungkinkan aplikasi tetap responsif sambil menunggu hasil dari fungsi pengambilan gambar (takePicture()).

4. Jelaskan fungsi dari anotasi @immutable dan @override ? <br>
    **Jawab :** 
    - Anotasi @immutable menandakan bahwa sebuah kelas tidak dapat diubah setelah diciptakan. Kelas dengan anotasi ini diharapkan memiliki nilai tetap, sehingga dapat mencegah perubahan yang tidak diinginkan dan mengurangi risiko bug. Dengan membuat objek menjadi immutable, Flutter dapat mengoptimalkan kinerja aplikasi secara lebih efektif. Dalam praktikum, kelas FilterSelector diberikan anotasi @immutable, yang menunjukkan bahwa setelah objek dari kelas ini dibuat, nilai propertinya akan tetap dan tidak akan berubah. <br>
    - Anotasi @override digunakan ketika sebuah metode dalam kelas turunan ingin menggantikan metode yang ada di kelas induk. Anotasi ini membuat kode lebih jelas dan membantu menghindari kesalahan jika ternyata metode tersebut tidak ada di kelas induk. Dengan menggunakan @override, pengembang dapat memastikan bahwa metode yang ditulis benar-benar dimaksudkan untuk menimpa metode dari kelas di atasnya. Dalam praktikum, anotasi @override digunakan dalam kelas _PhotoFilterCarouselState untuk menimpa metode build dari kelas induknya, State.

5. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!