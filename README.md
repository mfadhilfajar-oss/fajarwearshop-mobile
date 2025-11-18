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

# Tugas 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
= Model Dart itu kepake banget buat ngejaga struktur data biar rapi dan konsisten. Dengan model, setiap field punya tipe jelas, aman dari null, dan gampang ditrack kalau ada perubahan dari backend. 
  Kalau kita cuma ngandelin Map<String, dynamic>, risiko error-nya gede—misalnya salah ngambil tipe, field null nggak ketangkep, atau tiba-tiba ada field yang ilang dari respons Django. 
  Selain itu, tanpa model, kode jadi susah dibaca, rawan typo, dan makin ribet buat di-maintain dalam jangka panjang. Intinya: model = safety, maintainability, dan clean code; Map doang = chaos.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
= Package http itu dipakai buat request biasa tanpa state login—cuma ngirim data, dapet respons, selesai. Sebaliknya, CookieRequest ngelola session Django, nyimpen cookies, dan otomatis nyertain cookie tersebut di setiap request berikutnya. 
Ini penting banget karena autentikasi Django berbasis session, bukan token. Jadi http cocok buat endpoint publik, sedangkan CookieRequest krusial buat login, akses data user, dan semua endpoint yang butuh autentikasi.

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
= Karena session harus konsisten di seluruh app. Kalau setiap widget bikin instance CookieRequest sendiri, cookies-nya beda-beda dan Django bakal nganggep user belum login. Dengan Provider, kita share satu instance global yang nyimpen status login, cookies session, dan hasil autentikasi. 
Alhasil, semua halaman bisa akses data user yang sama, bisa logout bareng, dan request ter-autentikasi bisa berjalan mulus.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
= Supaya Flutter bisa nge-hit Django, Django harus nge-allow koneksi dari emulator. Emulator Android pakai alamat khusus 10.0.2.2 untuk ngeakses komputer host, jadi ini wajib dimasukin ke ALLOWED_HOSTS. CORS harus aktif supaya Django ngizinin request lintas origin dari aplikasi Flutter. Setelan cookie seperti SameSite, Secure, dan CSRF juga penting biar session Django bisa dikirim dengan aman ke Flutter. 
Terakhir, Android butuh izin internet di AndroidManifest.xml. Kalau salah satu konfigurasi ini ilang, request bisa ditolak, session nggak kebaca, cookie gagal dikirim, atau app sama sekali nggak bisa connect ke backend.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
= User masukin data lewat form Flutter → data dikumpulin → dikirim ke Django lewat CookieRequest/http → Django proses dan simpan ke database → Django balikin JSON → Flutter terima respons → respons diparse ke model Dart → data ditampilkan di UI. 
Alurnya simpel, tapi model dan session management bikin semuanya stabil dan gampang dikontrol.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
= Saat login/register, Flutter ngirim data akun ke Django. Django lalu verifikasi username & password, bikin session baru, dan ngirim cookie session balik ke Flutter. CookieRequest otomatis nyimpen cookie itu buat request berikutnya. Hasilnya, halaman-halaman yang butuh autentikasi bisa diakses. Logout dilakukan dengan menghapus session di Django dan membersihkan cookie di Flutter. 
Setelah itu user otomatis diarahkan ke halaman login lagi. Jadi flow-nya: input user → kirim ke Django → Django autentikasi → cookie dikirim → CookieRequest simpan → Flutter dapat akses halaman terproteksi.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
= cara saya untuk mengimplementasikan checklist nya yaitu dengan cara cek satu per satu checklist checklist yang sudah sesuai dan sudah ada belum di aplikasi saya
kemudian saya mengikuti tutorial sambil memahami maksud dari code teersebut apa, untuk di django nya juga sudah ada app autehntication serta views dan urls nya
dan juga untuk di allowed host juga sudah ada endpoint untuk flutter itu sendiri agar terhubung, dan di flutter nya juga sudah ada localhost:8000 agar django dan flutter ini saling terhubung ketika
pengguna login, yang dimana ketika pengguna membuat product di flutter, di django nya otomatis ke update begitupun sebaliknya, untuk login dan logoutnya sudah bekerja dengan baik
serta ada halaman untuk menampilkan product yang khusus yang dibuat pengguna tersebut serta product secara keseluruhan di product list.