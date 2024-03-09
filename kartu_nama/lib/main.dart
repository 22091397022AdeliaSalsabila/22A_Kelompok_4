import 'package:flutter/material.dart';


void main() {
  runApp(
    KartuNama()
  );
}

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 250,
                width: 400,
                color: Colors.deepPurple[200],
                child: Text('Container 1'),
              ),

              Container(
                height: 250,
                width: 400,
                color: Colors.red,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage('assets/KUCING.jpg'),
                          ),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kartika Felicia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      '22091397023',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        letterSpacing: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              Container(
                height: 250,
                width: 400,
                color: Colors.green,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}