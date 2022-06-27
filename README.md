# BookMePlease
Group Assignment E01 - Platform-based Programming Course [CSGE602022]
Faculty of Computer Science, University of Indonesia Odd Semester 2021/2022

### Group Members
1. Setasena Randata Ramadanie (2006482792)
2. Marthin Daniel Theo Gratia  (1906306786)
3. Bimabara Sukma Muryanto (1906318893)
4. Muhammad Faras Baginda (1906398673)
5. Alfina Azaria (2006482773)
6. Bima Sudarsono Adinsa (1906399083)

### APK Link
https://drive.google.com/file/d/1u94eZGg-Jg8wiunI0XmOHiiB2ydojCUe/view?usp=sharing

## About BookMePlease
The COVID-19 pandemic that has shocked the world has forced people to move towards the digitalization era. This also implies that all activities cannot be done offline, but online. Of course, as human beings, we need social interactions. Thus, spending time at home can be a challenge at times. Laziness to boredom quickly haunts us. Therefore, our group will create a solution to overcome boredom during the pandemic by creating a website called BookMePlease. BookMePlease is a website that provides interesting book recommendations, according to the preferences of each user. BookMePlease presents a variety of genres, allowing users to explore the book they want to read.

## Features
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

## Feature Discription

### 1. Book Library (Bimabara Sukma Muryanto)
Book Library is a page to display book data by genre. Users are shown several genres of books and then can click on them and see what books are on BookmePlease with those genres.

### 2. Comments About This Book + Submit Comment Form (Setasena Randata Ramadanie)
The "Comment About This Book" Feature is the main form of embodiment in achieving BookMePlease's goals. This feature allows users to respond to books they have read so that they can provide recommendations to other users to overcome boredom at home. In this feature, users can select the desired book through the "Book Library" feature, which will then display a form for users to fill in comments about the book they have selected.

The widgets implemented in this feature are general widgets such as layouting, padding, and so on. This feature needs to have a Form widget to receive comments from users on the books they choose, which will then be processed using a one-to-many relationship because a book can have many comments. This causes the database that has been placed on Django to need to be updated so that user comments will also be stored in the Django database

### 3. User Profile Page + Edit Profile Form (Alfina Azaria)
Modul User Profile Page merupakan bentuk implementasi user profile page yang pada awalnya diperuntukkan bagi website yang kemudian akan diubah menjadi bentuk mobile app dengan bantuan framework flutter. Modul User Profile Page ini menyimpan data-data mengenai profil user seperti nama user, foto profil, tanggal mendaftar sebagai user pada BookMePlease, serta genre buku yang digemari atau interest pada suatu database django. Di modul ini, user dapat mengubah foto profil dan book interest mereka. Perubahan data-data tersebut juga akan disimpan pada database django.

Modul ini mengimplementasikan widget-widget umum seperti Container, Text, Column, Row, Icon, dan Button. Modul ini juga akan mengimplementasikan CheckboxListTile yang nantinya akan digunakan untuk mengimplementasikan Book Interest Form. Dengan CheckboxListTile, pengguna dapat mengubah dan memilih satu atau lebih genre buku yang mereka gemari.

### 4. Modul Page Form Rekomendasi Buku (Marthin Daniel Theo Gratia)


### 5. Modul Form Trivia Quiz Book  (Muhammad Faras Baginda)
Modul Trivia Quiz Book ini akan memberikan pertanyaan-pertanyaan yang menarik terkait dengan buku. Trivia Quiz pada mobile ini memiliki pertanyaan yang sama dengan yang terdapat pada website. Data - data terkait pengisian quiz ini databasenya akan terintegrasi dengan database pada django website BookMePlease. 

Dalam modul ini nantinya akan mengimplementasikan widget - widget sederhana seperti padding, layout, dan lain - lain. Dan mungkin beberapa widget tambahan yang dapat mendukung pembentukan quiz nantinya.

### 6. Modul Form Register + Login user + Modul Add Interest User (Bima Sudarsono Adinsa)
Modul Form Register, Login User, Logout User adalah bentuk autentikasi user untuk melakukan interaksi dengan fitur - fitur yang terdapat di dalam BookMePlease sebagai User. Autentikasi ini sekaligus memisahkan dan membedakan fitur-fitur yang terdapat pada BookMePlease antara user yang sudah terdaftar dan user biasa yang tidak terdaftar atau dapat disebut anonim. Proses autentikasi ini terdapat 3 macam yaitu register user, user login, dan user logout. Selain itu saya juga mengerjakan form untuk menambahkan genre buku yang diminati oleh user yang disusun ke dalam modul add interest user. Modul interest dan modul autentikasi user nantinya databasenya akan terintegrasi terhadap django website BookMePlease yang telah disusun pada proyek sebelumnya. 

Modul ini akan mengimplementasikan widget-widget umum seperti, container, layout, padding, column, row, button, dan lain - lain. Pada modul add interest user akan mengimplementasikan multiple checkbox yang digunakan untuk menambahkan genre book sesuai dengan interest user. 
