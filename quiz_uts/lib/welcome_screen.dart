import 'package:flutter/material.dart';
import 'package:quiz_uts/quiz_screen.dart'; // import file untuk memanggil bagian quiz
import 'package:quiz_uts/developer.dart'; // import file untuk informasi developer

// class turunan StatelesWidget untuk menampilkan layar awal apk
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // membuat icon informasi developer
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        // membuat background sama dengan tampilan awal
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NameCard()
                ),
              ); // hyperlink ke developer dengan memanggil konstruktornya
            },
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            )
          ),
        ],
      ),

      body: WelcomeBody(),
    );
  }
}

// class turunan StatelesWidget, isi dari tampilan layar awal apk
class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(), // gambar untuk background layar awal apk
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2), // spasi antar bagian
                WelcomeText(), // text sambutan awal
                InformationText(),
                Spacer(),
                UsernameTextField(), // untuk input username
                Spacer(),
                StartQuizButton(), // button memulai quiz
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// class turunan StatelesWidget, isi background tampilan awal apk
class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"), // import gambar dari folder assets
          fit: BoxFit.fill, // gambarr diatur mengisi seluruh area
        ),
      ),
    );
  }
}

// class turunan StatelesWidget, isi text sambutan tampilan awal apk
class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to This Quiz,",
      style: TextStyle(
        color: Color(0xFFF6F1F1),
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }
}

// class turunan StatelesWidget, isi text sambutan tampilan awal apk
class InformationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Let's Play Informatic's Quiz!",
      style: TextStyle(
        color: Color(0xFFE5E1DA),
        fontWeight: FontWeight.bold,
        fontFamily: 'Nunito',
        fontSize: 20,
      ),
    );
  }
}

// class turunan StatelesWidget, isi input usn tampilan awal apk
class UsernameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // untuk mengatur text inputan
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Nunito',
        fontSize: 18,
      ),

      // untuk mengatur text sebelum inputan
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF22577A),
        hintText: "Type your username. . .",
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}

// class turunan StatelesWidget, isi button mulai quiz
class StartQuizButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuizScreen()),
        ); // hyperlink ke bagian quiz dengan memanggil konstruktornya
      },

      // untuk mengatur desain button
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Text(
          "Start Quiz",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}