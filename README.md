# Tugas 7

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
   = Widget tree adalah struktur hierarki yang menyusun tampilan aplikasi Flutter. 
     Setiap elemen pada layar merupakan sebuah widget, dan semua widget saling terhubung 
     seperti pohon, di mana satu widget bisa memiliki beberapa anak (child) dan berada di dalam 
     widget lain sebagai induknya (parent). Hubungan parent-child ini penting karena parent 
     dapat memengaruhi tampilan atau perilaku dari widget anaknya. Misalnya, widget Scaffold bisa menjadi 
     parent dari AppBar dan Body, sedangkan di dalam Body bisa terdapat widget lain seperti Column, Row, atau Text. 
     Dengan struktur pohon ini, Flutter dapat merender UI secara efisien saat ada perubahan pada widget tertentu.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
   = Dalam proyek ini, saya menggunakan beberapa widget penting seperti MaterialApp sebagai root utama aplikasi, 
     Scaffold untuk menyediakan struktur dasar halaman (seperti app bar dan body), serta AppBar untuk menampilkan judul di bagian atas. 
     Widget Text digunakan untuk menampilkan teks, sedangkan Icon untuk menampilkan ikon. Selain itu, ada widget Card untuk membuat tampilan berbentuk kotak dengan bayangan, 
     Row dan Column untuk menyusun elemen secara horizontal dan vertikal, Padding untuk memberi jarak antar elemen, GridView.
     count untuk membuat layout grid tiga kolom, Container untuk mengatur ukuran dan padding, Center untuk menempatkan elemen di tengah, dan InkWell agar elemen bisa diklik dengan efek ripple. 
     Saya juga menggunakan SnackBar untuk menampilkan notifikasi kecil di bagian bawah layar saat tombol ditekan.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
   = MaterialApp berperan sebagai wadah utama aplikasi yang menerapkan konsep Material Design. Widget ini mengatur tema, 
     halaman awal, serta navigasi antar halaman. Karena banyak widget Flutter bergantung pada konteks Material Design, 
     MaterialApp umumnya digunakan sebagai root agar komponen seperti Scaffold dan AppBar bisa berfungsi dengan baik.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
   = StatelessWidget adalah widget yang tidak memiliki state, artinya tampilannya bersifat tetap dan tidak berubah selama aplikasi berjalan. 
     Sedangkan StatefulWidget memiliki state yang bisa berubah seiring interaksi pengguna, misalnya saat menekan tombol atau mengubah input. 
     Dalam proyek ini saya menggunakan StatelessWidget karena tampilan aplikasi saya bersifat statis dan tidak membutuhkan perubahan dinamis.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
   = BuildContext adalah objek yang menyimpan informasi tentang posisi widget di dalam widget tree. 
     Context ini penting karena digunakan untuk mengakses elemen-elemen lain dalam aplikasi, seperti tema, navigasi, dan Scaffold. 
     Contohnya, ketika menampilkan SnackBar, kita perlu memanggil ScaffoldMessenger.of(context) agar Flutter tahu di mana snack bar harus muncul.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
   = Hot reload memungkinkan pengembang melihat perubahan kode secara langsung tanpa kehilangan state aplikasi, sehingga sangat berguna untuk mengedit tampilan dengan cepat. 
     Sedangkan hot restart akan memulai ulang seluruh aplikasi dan menghapus semua state yang tersimpan. Keduanya mempercepat proses pengembangan karena perubahan dapat langsung diuji tanpa menutup aplikasi.


# Tugas 8

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
= Navigator.push() dipakai buat nambah halaman baru di atas stack, jadi user masih bisa balik ke halaman sebelumnya. Kalau Navigator.pushReplacement(), 
  halaman sebelumnya langsung diganti dan gak bisa dibalikin lagi. Di aplikasi Football Shop, push() cocok buat buka halaman form tambah produk dari menu utama, 
  sementara pushReplacement() lebih cocok buat navigasi lewat drawer biar pindah halaman langsung tanpa bisa balik ke halaman lama.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
= saya pakai Scaffold sebagai struktur dasar biar setiap halaman punya layout yang konsisten. AppBar jadi header utama buat nampilin judul dan identitas aplikasi, 
  sedangkan Drawer saya pakai buat navigasi antar halaman biar user gampang pindah dari halaman utama ke halaman tambah produk dan sebaliknya.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
= Padding ngebantu ngasih jarak biar form gak terlalu rapet dan enak dilihat. SingleChildScrollView penting banget biar form bisa discroll kalau isinya banyak, jadi gak kena overflow di layar kecil. Kalau datanya banyak banget, 
  bisa pakai ListView biar elemen form bisa ditampilkan dengan efisien dan tetap bisa discroll dengan lancar.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
= Warna utama aplikasi saya sesuaikan biar konsisten sama identitas brand FajarWearShop. Misalnya, saya pakai warna indigo atau oranye buat AppBar dan tombol supaya tampilannya khas dan kelihatan punya karakter sendiri, 
  jadi kesannya gak plain dan punya ciri khas toko FajarWearShop itu sendiri.