import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '4three',
            style: TextStyle(color: const Color.fromARGB(255, 162, 124, 164)),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Center(
          child: Image(
              image: AssetImage('assets/content.png')
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
  );
}
