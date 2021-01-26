import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotappcismo/data/questions.dart';
import 'package:rotappcismo/modules/word_matches/word_match_controller.dart';
import 'package:rotappcismo/themes/theme.dart';

class WordMatchPage extends StatefulWidget {
  final List<QuestionResult> _questions = QuestionResult.getRandomDefaultQuestionsShuffled();
  @override
  _WordMatchPageState createState() => _WordMatchPageState();
}

class _WordMatchPageState extends State<WordMatchPage> {
  final controller = WordMatchController();
  final List<bool> isLeftCorrect = [true, false];

  int _currentQuestionIndex = 0;
  bool _correctTextVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('O que é O que é?')),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget._questions.elementAt(_currentQuestionIndex).question.question,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.green[400]),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedOpacity(
                      opacity: _correctTextVisible ? 1 : 0,
                      duration: Duration(milliseconds: 400),
                      child: Text(
                        "CORRETO!",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            color: AppColors.mainColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  isLeftCorrect.first
                                      ? widget._questions.elementAt(_currentQuestionIndex).question.correctAnswer
                                      : widget._questions.elementAt(_currentQuestionIndex).question.wrongAnswer,
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                )),
                            onPressed: () {
                              _answerCurrentQuestion(isLeftCorrect.first
                                  ? widget._questions.elementAt(_currentQuestionIndex).question.correctAnswer
                                  : widget._questions.elementAt(_currentQuestionIndex).question.wrongAnswer);
                            }),
                        RaisedButton(
                            color: AppColors.mainColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  !isLeftCorrect.first
                                      ? widget._questions.elementAt(_currentQuestionIndex).question.correctAnswer
                                      : widget._questions.elementAt(_currentQuestionIndex).question.wrongAnswer,
                                  style: TextStyle(color: Colors.white, fontSize: 24),
                                )),
                            onPressed: () {
                              _answerCurrentQuestion(!isLeftCorrect.first
                                  ? widget._questions.elementAt(_currentQuestionIndex).question.correctAnswer
                                  : widget._questions.elementAt(_currentQuestionIndex).question.wrongAnswer);
                            }),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _answerCurrentQuestion(String answer) async {
    if (widget._questions.elementAt(_currentQuestionIndex).answer(answer)) {
      setState(() {
        _correctTextVisible = true;
        isLeftCorrect.shuffle();
      });
      controller.updateBestScoreIfNecessary(_currentQuestionIndex + 1);
      if (_currentQuestionIndex + 1 == widget._questions.length) {
        _showResult(_currentQuestionIndex + 1);
      } else {
        await Future.delayed(Duration(milliseconds: 800));
        _currentQuestionIndex++;
        setState(() {
          _correctTextVisible = false;
        });
      }
    } else {
      setState(() {
        isLeftCorrect.shuffle();
      });
      // controller.updateBestScoreIfNecessary(_currentQuestionIndex + 1);
      _showResult(_currentQuestionIndex);
    }
  }

  void _showResult(int correctAnswers) async {
    Get.snackbar(
      'Ops...',
      'Resposta incorreta',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(milliseconds: 1200),
    );
    await Future.delayed(Duration(seconds: 2));
    Get.snackbar(
      'Respostas corretas: $correctAnswers',
      '',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(milliseconds: 1200),
    );
  }
}
