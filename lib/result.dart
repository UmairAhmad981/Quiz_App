import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback restart;

  const Result(this.score, this.restart, {super.key});

  String get resultString {
    String txt = "All Questions Completed\n";
    if (score < 15) {
      txt += "You are Dumb\nScored: $score";
    } else if (score < 19) {
      txt += "You are Okayish\nScored: $score";
    } else if (score < 23) {
      txt += "You are Nice\nScored: $score";
    } else {
      txt += "You are Smart\nScored: $score";
    }
    return txt;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultString,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        OutlinedButton(
          onPressed: restart,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue, width: 2.0),
            foregroundColor: Colors.blue, // Text color
          ),
          child: const Text(
            "Restart The Quiz",
          ),
        ),
      ],
    );
  }
}
