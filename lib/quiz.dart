import 'package:flutter/material.dart';
import 'btn.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function pre;
  final int i;

  const Quiz(this.question, this.pre, this.i, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[i]["question"] as String),
        ...(question[i]["answers"] as List<Map<String, Object>>).map((ans) {
          return Btn(() => pre(ans['score']), ans['text'] as String);
        }),
      ],
    );
  }
}
