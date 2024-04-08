import 'package:flutter/material.dart';
import 'package:quiz_uts/welcome_screen.dart'; // import untuk memanggil layar awal apk
import 'package:quiz_uts/quiz_screen.dart'; // import untuk memanggil tampilan quiz
import 'package:quiz_uts/question_model.dart'; // import untuk memanggil bagian soal quiz

// class turunan StatelesWidget untuk menampilkan skor
class ScoreScreen extends StatelessWidget {
  final int score;
  final List<Question> questionList;

  const ScoreScreen({Key? key, required this.score, required this.questionList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // menyatakan lulus atau tidak
    bool isPassed = score >= questionList.length * 0.6; // indikasi lulus
    String title = isPassed ? "Passed" : "Failed";

    return Scaffold(
      body: Container(
        // mengatur gambar selesai quiz
        decoration: const BoxDecoration(
          color: Color(0xFF504F4E),
          image: DecorationImage(
            image: AssetImage("assets/scoredone.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [

            // mengatur judul tampilan skor
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1 - 20,
              child: Text(
                'Scorecard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),

            // mengatur keterangan lulus atau tidak
            Positioned(
              top: MediaQuery.of(context).size.height * 0.20 - 20,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 0,
                ),
              ),
            ),

            // mengatur nilai skor perolehan
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25 - 20,
              child: Text(
                'Your Score is $score/10',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 0,
                ),
              ),
            ),

            // mengatur button 'Play Again' quiz
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2 - 10,
              child: PlayAgainButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen()),
                  ); // hyperlink ke bagian quiz dengan memanggil konstruktornya
                },
              ),
            ),

            // mengatur button 'Quit' quiz
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1 - 10,
              child: QuitButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  ); // hyperlink ke layar awal apk dengan memanggil konstruktornya
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class untuk mengatur 'Play Again' button
class PlayAgainButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PlayAgainButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.green],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
          primary: Colors.transparent, // Make the button transparent
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Play Again',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class untuk mengatur 'Quit' button
class QuitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const QuitButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.green],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
          primary: Colors.transparent, // Make the button transparent
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Quit',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
