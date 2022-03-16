import 'package:earthnergy/game/data/data.dart';
import 'package:earthnergy/game/model/questionmodel.dart';
import 'package:earthnergy/game/thirdscreen.dart';
import 'package:flutter/material.dart';

class Game2 extends StatefulWidget {
  @override
  _Game2State createState() => _Game2State();
}

class _Game2State extends State<Game2> with SingleTickerProviderStateMixin {
  // ignore: deprecated_member_use
  List<QuestionModel> _questions = new List<QuestionModel>();
  int index = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _questions = getQuestion();
    animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    animation =
        Tween(begin: beginAnim, end: endAnim).animate(animationController);
    startAnim();
    animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          if (index < _questions.length - 1) {
            index++;
            resetAnim();
            startAnim();
            notAttempted++;
          } else {
            notAttempted++;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Result(
                  score: points,
                  totalQuestion: _questions.length,
                  correct: correct,
                  incorrect: incorrect,
                  notattempted: notAttempted,
                ),
              ),
            );
          }
        });
      }
    });
  }

  startAnim() {
    animationController.forward();
  }

  resetAnim() {
    animationController.reset();
  }

  stopAnim() {
    animationController.stop();
  }

  void nextQuestion() {
    if (index < _questions.length - 1) {
      index++;
      resetAnim();
      startAnim();
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Result(
                    score: points,
                    totalQuestion: _questions.length,
                    correct: correct,
                    incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${index + 1}/${_questions.length}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Pertanyaan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '$points',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Poin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${_questions[index].getQuestion()}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              LinearProgressIndicator(
                value: animation.value,
              ),
              Image.network(
                _questions[index].getimageURL(),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        if (_questions[index].getAnswer() == "True") {
                          setState(() {
                            points = points + 20;
                            nextQuestion();
                            correct++;
                          });
                        } else {
                          points = points - 10;
                          nextQuestion();
                          incorrect++;
                        }
                      },
                      child: Text(
                        'Benar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () {
                        if (_questions[index].getAnswer() == "False") {
                          setState(() {
                            points = points + 20;
                            nextQuestion();
                            correct++;
                          });
                        } else {
                          points = points - 10;
                          nextQuestion();
                          incorrect++;
                        }
                      },
                      child: Text(
                        'Salah',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
}
