import 'package:flutter/material.dart';
import 'package:quiz_uts/welcome_screen.dart'; //import file masuk aplikasi


//fungsi untuk menjalankan apk dan memanggil widget
void main() {
  runApp(const MyApp()); // Widget
}

//class utama turunan StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // membangun dan mengembalikan tampilan aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // nonaktif banner debug
        title: "Informatic's Quiz",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelcomeScreen());
  }
}