# BookMePlease
Group Assignment E01

Platform-based Programming Course [CSGE602022] with Django and Flutter \
Faculty of Computer Science, University of Indonesia \
Odd Semester 2021/2022

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
2. Comments About This Book + Submit Comment Form
3. User's Profile Page + Edit Profile Form
4. Book Recommendation Form
5. Book's Trivia Quiz Form 
6. Register Form + User Login

## Database: 
- Book Library
- User's Favourite Book
- User Profile

## Feature Discription

### 1. Book Library (Done by Bimabara Sukma Muryanto)
Book Library is a page to display book data by genre. Users are shown several genres of books and then can click on them and see what books are on BookmePlease with those genres.

### 2. Comments About This Book + Submit Comment Form (Done by Setasena Randata Ramadanie)
The "Comment About This Book" Feature is the main form of embodiment in achieving BookMePlease's goals. This feature allows users to respond to books they have read so that they can provide recommendations to other users to overcome boredom at home. In this feature, users can select the desired book through the "Book Library" feature, which will then display a form for users to fill in comments about the book they have selected.

The widgets implemented in this feature are general widgets such as layouting, padding, and so on. This feature needs to have a Form widget to receive comments from users on the books they choose, which will then be processed using a one-to-many relationship because a book can have many comments. This causes the database that has been placed on Django to need to be updated so that user comments will also be stored in the Django database

### 3. User Profile Page + Edit Profile Form (Done by Alfina Azaria)
User Profile Page is a form of implementation of a user profile page that was originally intended for websites which will then be converted into a mobile app form with the help of the Flutter Framework. This User Profile Page stores data about user profiles such as username, profile photo, date of registering as a user on BookMePlease, as well as genres of books that the user liked. Those data will be stored in a Django database. In this feature, users can change their profile photos and book interests. Changes to these data will also be saved in the Django database.

This feature implements common widgets such as Container, Text, Column, Row, Icon, and Button. This feature will also implement CheckboxListTile which will later be used to implement the Book Interests Form. With CheckboxListTile, users can modify and select one or more book genres that they like.

### 4. Book Recommendations Form Page (Done by Marthin Daniel Theo Gratia)
** Soon to be filled

### 5. Book's Trivia Quiz Form  (Done by Muhammad Faras Baginda)
This Book Trivia Quiz feature will provide interesting questions about the book. The Trivia Quiz in this mobile app has the same questions as those on the BookMePlease's website. All data related to this quiz will be integrated with the database on the BookMePlease's website. This feature implements simple widgets such as Padding, Layout, and others.

### 6. Register Form + User Login + Add User's Interest Form (Done by Bima Sudarsono Adinsa)
Register Form, User Login, and Add User's Interest Form are forms of user authentication to interact with the features contained in BookMePlease as a User. This authentication simultaneously separates and distinguishes the features that a user can use on BookMePlease between registered users and ordinary users who are not registered or anonymous. There are 3 kinds of authentication processes, which is user register, user login, and user logout.

There is also a form to add the genre of the book that the user is interested in which will be compiled into the "Add User's Interest" feature. Data related to the user's interest and authentication feature in this mobile app will be integrated with the Django BookMePlease website which was compiled in the previous project.

This feature will implement common widgets such as Containers, Layouts, Padding, Columns, Rows, Buttons, and others. The "Add User's Interest" feature will implement several Checkboxes that are used to add a book's genre according to the user's interests.
