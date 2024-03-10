import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdelPage extends StatelessWidget {
  final Uri _urlwa =
    Uri.parse("https://wa.me/+6281775187217");
  final Uri _urlig =
    Uri.parse("https://www.instagram.com/del_adelsst/");
  final String emailurl = 'mailto:adeliasalsabila.22022@mhs.unesa.ac.id';

  AdelPage({Key? key}) : super(key: key);

  Future<void> _launchInBrowserView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Adelia Salsabila",
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
                        backgroundColor: Colors.deepPurple[400],
                        radius: 75,
                          backgroundImage: AssetImage('assets/ADEL.png'),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 7, horizontal: 20
                      ),
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Text(
                        "Adelia Salsabila Arifin",
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
                          color: Colors.deepPurple[400],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Text(
                        "22091397022",
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

          const Divider(
            color: Colors.deepPurple,
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
                    backgroundColor: Colors.deepPurple[300],
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
                    backgroundColor: Colors.deepPurple[300],
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
                    backgroundColor: Colors.deepPurple[300],
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