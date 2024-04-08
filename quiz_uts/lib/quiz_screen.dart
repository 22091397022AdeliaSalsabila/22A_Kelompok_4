import 'package:flutter/material.dart';
import 'package:quiz_uts/question_model.dart'; // import untuk memanggil bagian soal quiz
import 'package:quiz_uts/score_screen.dart'; // import untuk memanggil bagian score quiz

// class turunan StatelessWidget untuk menampilka quiz
class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

// class turunan untuk mengatur state QuizScreen
class _QuizScreenState extends State<QuizScreen> {
  List<Question> _questionList = getQuestions();
  int _currentQuestionIndex = 0;
  int _score = 0;
  Answer? _selectedAnswer;

  // kerangka utama tampilan quiz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF504F4E),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Informatic's Quiz", // judul quiz
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  // untuk menampilkan pertanyaan quiz
  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        // menampilkan nomor quiz yang sedang dikerjakan
        Text(
          "Question ${_currentQuestionIndex + 1}/${_questionList.length}",
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Nunito',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),

        // mengatur kolom list jawaban
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color(0xFF22577A),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            _questionList[_currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  // untuk menampilkan list jawaban quiz
  Widget _answerList() {
    return Column(
      children: _questionList[_currentQuestionIndex].answersList.map((e) {
        return _answerButton(e);
      }).toList(),
    );
  }

  // untuk mengatur tombol pilihan jawab
  Widget _answerButton(Answer answer) {
    bool isSelected = answer == _selectedAnswer;
    bool isCorrectAnswer = answer.isCorrect && isSelected;
    bool isWrongAnswer = !answer.isCorrect && isSelected;

    return GestureDetector(
      onTap: () {
        _handleAnswerSelection(answer);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              width: 2,
              // mengatur warna jawaban jika salah dan benar
              color: isSelected
                  ? isCorrectAnswer ? Color(0xFF38A3A5) : Colors.red
                  : Colors.white,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  answer.answerText,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),

              // menampilkan ikon keterangan jawaban
              SizedBox(
                height: 10,
                child: Icon(
                  isSelected ? Icons.check : Icons.help,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // untuk mengatur tombol ke bagian selanjutnya
  Widget _nextButton() {
    // jika pertanyaan terakhir maka "Submit", jika tidak maka "Next"
    bool isLastQuestion = _currentQuestionIndex == _questionList.length - 1;

    return Container(
      width: 200,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color(0xFF38A3A5),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          _handleNextButton(isLastQuestion);
        },
      ),
    );
  }

  // untuk menatur skor dari pilihan jawaban
  void _handleAnswerSelection(Answer answer) {
    if (_selectedAnswer == null) {
      if (answer.isCorrect) {
        _score++;
      } // jika jawaban benar nilai skor terupdate
      setState(() {
        _selectedAnswer = answer;
      });
    }
  }

  // untuk mengatur tombol ke bagian selanjutnya
  void _handleNextButton(bool isLastQuestion) {
    if (isLastQuestion) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ScoreScreen(score: _score, questionList: _questionList),
        ),
      );
    } else {
      setState(() {
        _selectedAnswer = null;
        _currentQuestionIndex++;
      });
    }
  }
}