# BookMePlease
Tugas Kelompok E01 - Mata Kuliah Pemrograman Berbasis Platform
Fasilkom UI, Semester Ganjil 2021/2022

## Anggota Kelompok 
1. Setasena Randata Ramadanie 2006482792
2. Marthin Daniel Theo Gratia  1906306786
3. Bimabara Sukma Muryanto 1906318893
4. Muhammad Faras Baginda 1906398673
5. Alfina Azaria 2006482773
6. Bima Sudarsono Adinsa 1906399083

## APK Link
https://drive.google.com/file/d/17KgqZggtQ8yjpt0vDIa_zvo-yrjiFQbb/view?usp=sharing
## Modul
1. Book Library
2. Comments about this book + Form submit comment
3. User Profile Page + Form profile edit
4. Page Form Rekomendasi Buku
5. Form Trivia Quiz book 
6. Form Register + Login user

## Database: 
- Book Lib
- User Favourite Book
- User Profile

## Deskripsi BookMePlease
Pandemi covid-19 yang menggemparkan dunia tentunya memaksa seluruh manusia untuk beralih menuju era digitalisasi. Hal tersebut sekaligus mengimplikasikan bahwa seluruh aktivitas tidak dapat dilakukan secara offline, melainkan full online. Tentunya, sebagai makhluk sosial, menghabiskan waktu di rumah kadang menjadi tantangan. Kemalasan hingga rasa bosan dengan cepat menghantui diri kita. Oleh karena itu, kelompok kami akan membuat sebuah solusi mengatasi rasa bosan semasa pandemi dengan membuat sebuah website bernama BookMePlease. BookMePlease adalah sebuah website yang memberikan rekomendasi buku yang menarik, sesuai dengan preferensi masing-masing pengguna. BookMePlease  menyajikan berbagai macam genre, sehingga memungkinkan para user untuk melakukan eksplorasi buku yang ingin dibaca.

## Deksripsi modul



### 1) Book Library (Bimabara Sukma Muryanto)
Book library merupakan page untuk menampilkan data buku berdasarkan genrenya, jadi pengguna ditampilkan beberapa genre buku lalu bisa klik genre tersebut dan pengguna bisa melihat buku-buku apa saja yang ada di BookmePlease dengan genre tersebut.

### 2) Modul Comments about this book + Form submit comment (Setasena Randata Ramadanie)
Modul Comments about this book merupakan salah satu bentuk perwujudan utama dalam tercapainya tujuan BookMePlease. Modul ini memungkinkan para user untuk menanggapi suatu buku yang pernah dibaca oleh mereka sehingga mereka dapat memberikan rekomendasi kepada user lainnya untuk mengatasi kebosanan saat dirumah. Pada modul ini, user dapat memilih buku yang mereka inginkan melalui Modul Book Library, yang selanjutnya akan ditampilkan Form untuk user mengisi komentar mereka terkait buku yang mereka pilih

Widget yang terimplementasi pada Modul ini merupakan widget-widget umum seperti layouting, padding dan lain sebagainya. Terlebih, modul ini perlu memiliki widget Form untuk menerima komentar dari user terhadap buku yang mereka pilih, yang berikutnya akan diolah menggunakan relasi one to many dikarenakan suatu buku dapat memiliki banyak comments. Hal tersebut mengakibatkan database yang telah diletakkan pada django perlu diupdate sehingga komentar user akan tersimpan pula pada database django

### 3) Modul User Profile Page + Form profile edit (Alfina Azaria)
Modul User Profile Page merupakan bentuk implementasi user profile page yang pada awalnya diperuntukkan bagi website yang kemudian akan diubah menjadi bentuk mobile app dengan bantuan framework flutter. Modul User Profile Page ini menyimpan data-data mengenai profil user seperti nama user, foto profil, tanggal mendaftar sebagai user pada BookMePlease, serta genre buku yang digemari atau interest pada suatu database django. Di modul ini, user dapat mengubah foto profil dan book interest mereka. Perubahan data-data tersebut juga akan disimpan pada database django.

Modul ini mengimplementasikan widget-widget umum seperti Container, Text, Column, Row, Icon, dan Button. Modul ini juga akan mengimplementasikan CheckboxListTile yang nantinya akan digunakan untuk mengimplementasikan Book Interest Form. Dengan CheckboxListTile, pengguna dapat mengubah dan memilih satu atau lebih genre buku yang mereka gemari.

### 4) Modul Page Form Rekomendasi Buku (Marthin Daniel Theo Gratia)
-
### 5) Modul Form Trivia Quiz Book  (Muhammad Faras Baginda)
Modul Trivia Quiz Book ini akan memberikan pertanyaan-pertanyaan yang menarik terkait dengan buku. Trivia Quiz pada mobile ini memiliki pertanyaan yang sama dengan yang terdapat pada website. Data - data terkait pengisian quiz ini databasenya akan terintegrasi dengan database pada django website BookMePlease. 

Dalam modul ini nantinya akan mengimplementasikan widget - widget sederhana seperti padding, layout, dan lain - lain. Dan mungkin beberapa widget tambahan yang dapat mendukung pembentukan quiz nantinya.

### 6) Modul Form Register + Login user + Modul Add Interest User (Bima Sudarsono Adinsa)
Modul Form Register, Login User, Logout User adalah bentuk autentikasi user untuk melakukan interaksi dengan fitur - fitur yang terdapat di dalam BookMePlease sebagai User. Autentikasi ini sekaligus memisahkan dan membedakan fitur-fitur yang terdapat pada BookMePlease antara user yang sudah terdaftar dan user biasa yang tidak terdaftar atau dapat disebut anonim. Proses autentikasi ini terdapat 3 macam yaitu register user, user login, dan user logout. Selain itu saya juga mengerjakan form untuk menambahkan genre buku yang diminati oleh user yang disusun ke dalam modul add interest user. Modul interest dan modul autentikasi user nantinya databasenya akan terintegrasi terhadap django website BookMePlease yang telah disusun pada proyek sebelumnya. 

Modul ini akan mengimplementasikan widget-widget umum seperti, container, layout, padding, column, row, button, dan lain - lain. Pada modul add interest user akan mengimplementasikan multiple checkbox yang digunakan untuk menambahkan genre book sesuai dengan interest user. 
