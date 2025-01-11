import 'package:flutter/material.dart';
import 'package:brebeuf_hx/pages/QuizPage/QuizInterface.dart';

import '../class/Quiz.dart';

class QuizPage extends StatelessWidget {
var value = [];

// 添加一个回调函数，用于接收来自 QuizInterface 的 finalScore
void setFinalScore(List<double> finalScore) {
  // 在这里更新 QuizPage 中的 finalScore
  print('Final score received in QuizPage: $finalScore');
  // 你可以根据需求更新状态，或做其他处理
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xFFBDC7CB),
    body: SafeArea(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizInterface(
                  onFinalScoreChanged: setFinalScore, // 传递回调函数
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: Text('Start Quiz'),
        ),
      ),
    ),
  );
}
}