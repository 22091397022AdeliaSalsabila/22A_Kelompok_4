import 'package:flutter/material.dart';

// class turunan StatelesWidget untuk menampilkan informasi developer
class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // header tampilan informasi developer
      appBar: AppBar(
        backgroundColor: Color(0xFF504F4E),
        title: const Text(
          "Develepor Team",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
          ),
        ),

        // mengatur icon pada header
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),

      // bagian utama untuk menampilakn isi informasi developer
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // menampilkan isi informasi developer (adelia)
            Container(
              height: 215,
              width: 400,
              margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple[200],
              ),

              // membagi 2 bagian untuk gambar dan text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // menampilkan bagian gambar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/adel.png'),
                        ),
                      ),

                      // menampilkan bagian text
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
                                Text(
                                  'Developer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
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

            // menampilkan isi informasi developer (kartika)
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
                                Text(
                                  'Developer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
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

            // menampilkan isi informasi developer (rani)
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
                                Text(
                                  'Developer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Nunito',
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

          ],
        ),
      ),
    );
  }
}