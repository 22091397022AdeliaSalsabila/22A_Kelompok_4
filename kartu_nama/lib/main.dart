import 'package:flutter/material.dart';
import 'package:kartu_nama/kartika_desc.dart';
import 'package:kartu_nama/adel_desc.dart';
import 'package:kartu_nama/rani_desc.dart';


void main() {
  runApp(const KartuNama()
  );
}

class KartuNama extends StatelessWidget {
  const KartuNama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "4three Members",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
                height: 215,
                width: 400,
                margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('assets/ADEL.png'),
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
                                    'Adelia Salsabila',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  Text(
                                    '22091397022',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Nunito',
                                      letterSpacing: 3,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10
                                      ),
                                    child: ElevatedButton (
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AdelPage()
                                          ),
                                        );
                                      },
                                      child: Text('More Info'),
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
                height: 215,
                width: 400,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage('assets/KARTIKA.png'),
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
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  Text(
                                    '22091397023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Nunito',
                                      letterSpacing: 3,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: ElevatedButton (
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => kartikaPage()
                                          ),
                                        );
                                      },
                                      child: Text('More Info'),
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
                height: 215,
                width: 400,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 15),
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.brown[300],
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 75,
                            backgroundImage: AssetImage('assets/RANI.png'),
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
                                    'Maharani Sekar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  Text(
                                    '22091397037',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Nunito',
                                      letterSpacing: 3,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: ElevatedButton (
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => RaniPage()
                                          ),
                                        );
                                      },
                                      child: Text('More Info'),
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

          ],
        ),
      ),
    );
  }
}