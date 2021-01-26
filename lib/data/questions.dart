import 'dart:math';

class Question {
  final String question;
  final String correctAnswer;
  final String wrongAnswer;

  Question({
    this.question,
    this.correctAnswer,
    this.wrongAnswer,
  });
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: Question(
      question: "Ciência, ramo de conhecimento; matéria escolar.",
      correctAnswer: "DISCIPLINA",
      wrongAnswer: "DISCIPRINA",
    )),
    QuestionResult(
        question: Question(
      question:
          "Declaração solene de reconhecimento concedida a alguém que se destacou por mérito, trabalhos prestados",
      correctAnswer: "DIPLOMA",
      wrongAnswer: "DIPROMA",
    )),
    QuestionResult(
        question: Question(
      question: "Profunda falta de entendimento entre duas ou mais partes.",
      correctAnswer: "CONFLITO",
      wrongAnswer: "CONFRITO",
    )),
    QuestionResult(
        question: Question(
      question: "Efeito produzido pela luz refletida.",
      correctAnswer: "REFLEXO",
      wrongAnswer: "REFREXO",
    )),
    QuestionResult(
        question: Question(
      question: "Os rios e cursos de água menores que desaguam em rios principais.",
      correctAnswer: "AFLUENTE",
      wrongAnswer: "AFRUENTE",
    )),
    QuestionResult(
        question: Question(
      question: "Pedido insistente e humilde, freq. Desesperado",
      correctAnswer: "SÚPLICA",
      wrongAnswer: "SÚPRICA",
    )),
    QuestionResult(
        question: Question(
      question: "Representação esférica da terra, de um corpo celestial ou do sistema planetário.",
      correctAnswer: "GLOBO",
      wrongAnswer: "GROBO",
    )),
    QuestionResult(
        question: Question(
      question: "Astro sem luz própria que gira em torno de uma estrela e reflete a sua luz.",
      correctAnswer: "PLANETA",
      wrongAnswer: "PRANETA",
    )),
    QuestionResult(
        question: Question(
      question:
          "Arma que consiste num pedaço de pau grosso, mais volumoso numa das extremidades, e que se usava para ataque e defesa;",
      correctAnswer: "CLAVA",
      wrongAnswer: "CRAVA",
    )),
    QuestionResult(
        question: Question(
      question: "Fama que uma pessoa obtém por feitos heroicos, grandes obras ou por suas extraordinárias qualidades.",
      correctAnswer: "GLORIA",
      wrongAnswer: "GRORIA",
    )),
    QuestionResult(
        question: Question(
      question: "Estrutura reprodutiva das angiospermas.",
      correctAnswer: "FLOR",
      wrongAnswer: "FROR",
    )),
    QuestionResult(
        question: Question(
      question: "Projeto, esboço, desenho (de uma construção, um jardim, uma obra qualquer).",
      correctAnswer: "PLANO",
      wrongAnswer: "PRANO",
    )),
    QuestionResult(
        question: Question(
      question: "Objeto com formato de tabuleta com inscrição comemorativa ou indicativa.",
      correctAnswer: "PLACA",
      wrongAnswer: "PRACA",
    )),
    QuestionResult(
        question: Question(
      question: "Conjunto das espécies vegetais características de determinada área, época ou meio ambiente.",
      correctAnswer: "FLORA",
      wrongAnswer: "FRORA",
    )),
    QuestionResult(
        question: Question(
      question: "Marca comercial de uma goma de mascar.",
      correctAnswer: "CHICLETE",
      wrongAnswer: "CHICRETE",
    )),
  ];

  bool answeredCorrectly;
  final Question question;

  QuestionResult({this.answeredCorrectly = false, this.question});

  bool answer(String answer) {
    answeredCorrectly = question.correctAnswer == answer;
    print(question.correctAnswer);
    return answeredCorrectly;
  }

  static List<QuestionResult> getRandomDefaultQuestions() => defaultQuestions;
  static List<QuestionResult> getRandomDefaultQuestionsShuffled() {
    shuffleDefaultQuestions();
    return getRandomDefaultQuestions();
  }

  static void shuffleDefaultQuestions() {
    var random = new Random();

    for (var i = defaultQuestions.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);
      var temp = defaultQuestions[i];

      defaultQuestions[i] = defaultQuestions[n];
      defaultQuestions[n] = temp;
    }
  }
}

// enum Answer { YES, NO }
