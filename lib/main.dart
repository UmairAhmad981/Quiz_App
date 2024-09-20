import 'package:first/quiz.dart';
import 'package:first/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _i = 0;
  int _totalScore=0;
  @override
  Widget build(BuildContext context) {
    void pre(int score) {
      setState(() {
        _i++;
        _totalScore+=score;
      });
      if (_i < _question.length) {
        print('Pressed, Score till now $_totalScore');
      } else {
        print('All Done, Score till now $_totalScore');
      }
    }
    void restart(){
      setState(() {
        _i=0;
        _totalScore=0;
      });
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Try'),
          backgroundColor: Colors.blue,
        ),
        body: (_i < _question.length) // Condition
            ? Quiz(_question, pre, _i)
            : Result(_totalScore,restart),
      ),
    );
  }
}

final _question = [
  {
    "question": "What is your fav colour",
    "answers": [
      {"text": "Green", "score": 5},
      {"text": "Blue", "score": 7},
      {"text": "Red", "score": 9}
    ]
  },
  {
    "question": "What is your fav food",
    "answers": [
      {"text": "Pizza", "score": 10},
      {"text": "Burger", "score": 8},
      {"text": "Noodles", "score": 5},
      {"text": "Pasta", "score": 4}
    ]
  },
  {
    "question": "What is your fav beverage",
    "answers": [
      {"text": "Sprite", "score": 7},
      {"text": "Pepsi", "score": 8},
      {"text": "Coca Cola", "score": 9},
      {"text": "Fanta", "score": 5}
    ]
  },
];
