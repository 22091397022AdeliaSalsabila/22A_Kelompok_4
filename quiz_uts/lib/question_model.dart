class Question {
  final String questionText; // menyimpan question
  final List<Answer> answersList; // menyimpan answer

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText; // menyimpan pilihan jawaban
  final bool isCorrect; // mengoreksi jawaban

  Answer(this.answerText, this.isCorrect);
}

// menampilkan list question and answer dari quiz
List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Siapakah penemu Python?",
    [
      Answer("Larry Page", false),
      Answer("Guido van Rossum", true), // jawaban yang benar
      Answer("Mark Zuckerberg", false),
      Answer("Steve Jobs", false),
      Answer("Bill Gates", false),
    ],
  ));

  list.add(Question(
    "Apa kepanjangan HTML?",
    [
      Answer("HyperText Markup Language", true),
      Answer("High-Tech Markup Language", false),
      Answer("Hyperlink Text Markup", false),
      Answer("HyperText Manipulation Language", false),
      Answer("High-Tech Media Language", false),
    ],
  ));

  list.add(Question(
    "Platform manakah untuk pengembangan aplikasi desktop oleh Microsoft?",
    [
      Answer("Android Studio", false),
      Answer("Xcode", false),
      Answer("Visual Studio", true),
      Answer("Eclipse", false),
      Answer("IntelliJ IDEA", false),
    ],
  ));

  list.add(Question(
    "Bahasa pemrograman untuk aplikasi mobile Android?",
    [
      Answer("Java", true),
      Answer("Swift", false),
      Answer("C++", false),
      Answer("Python", false),
      Answer("JavaScript", false),
    ],
  ));

  list.add(Question(
    "Manakah yang bukan model pengembangan perangkat lunak?",
    [
      Answer("Waterfall", false),
      Answer("Agile", false),
      Answer("Scrum", false),
      Answer("Spiral", false),
      Answer("HTML", true),
    ],
  ));

  list.add(Question(
    "Siapakah pendiri perusahaan Microsoft?",
    [
      Answer("Bill Gates", true),
      Answer("Steve Jobs", false),
      Answer("Larry Page", false),
      Answer("Jeff Bezos", false),
      Answer("Mark Zuckerberg", false),
    ],
  ));

  list.add(Question(
    "Apaa kepanjuangan CSS dalam pengembangan web?",
    [
      Answer("Central Style Sheet", false),
      Answer("Cascading Style Sheet", true),
      Answer("Comprehensive Style Sheet", false),
      Answer("Creative Style Sheet", false),
      Answer("Computer Style Sheet", false),
    ],
  ));

  list.add(Question(
    "Manakah yang bukan merupakan jenis database?",
    [
      Answer("Relasional", false),
      Answer("NoSQL", false),
      Answer("SQL Server", true),
      Answer("MongoDB", false),
      Answer("Firebase", false),
    ],
  ));

  list.add(Question(
    "Manakah yang bukan jenis bahasa pemrograman web?",
    [
      Answer("HTML", false),
      Answer("CSS", false),
      Answer("PHP", false),
      Answer("JavaScript", false),
      Answer("Java", true),
    ],
  ));

  list.add(Question(
    "Siapakah pencipta JavaScript?",
    [
      Answer("Steve Jobs", false),
      Answer("Larry Page", false),
      Answer("Mark Zuckerberg", false),
      Answer("Brendan Eich", true),
      Answer("Jeff Bezos", false),
    ],
  ));

  return list;
}