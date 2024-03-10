import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class kartikaPage extends StatelessWidget {
  final Uri _urlwa =
  Uri.parse("https://wa.me/+6282139948208");
  final Uri _urlig =
  Uri.parse("https://www.instagram.com/kflicia/");
  final String emailurl = 'mailto:kartikafelicia.22023@mhs.unesa.ac.id';

  kartikaPage({Key? key}) : super(key: key);

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        title: const Text(
          "Kartika Felicia",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                        backgroundColor: Colors.deepOrange[300],
                        radius: 75,
                        backgroundImage: AssetImage('assets/KARTIKA.png'),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 7, horizontal: 20
                      ),
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[300],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Text(
                        "Kartika Felicia",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.deepOrange[300],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Text(
                        "22091397023",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Divider(
            color: Colors.deepOrange[400],
            thickness: 1,
            height: 5,
            indent: 20,
            endIndent: 20,
          ),

          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange[200],
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30,
                    ),
                  ),
                  onPressed: () {
                    _launchInBrowserView(_urlwa);
                  },
                  child: const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Whatsapp",
                          textAlign:
                          TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange[200],
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30,
                    ),
                  ),
                  onPressed: () {
                    launchUrl(_urlig);
                  },
                  child:  const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Instagram",
                          textAlign:
                          TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange[200],
                    maximumSize: const Size(300, 200),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30,
                    ),
                  ),
                  onPressed: () {
                    launch(emailurl);
                  },
                  child: const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Email",
                          textAlign:
                          TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ], //
      ),
    );
  }
}