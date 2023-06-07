import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  }

  class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    var questionIndex = 0;

    void answerQuestion() {
      setState(() {
       questionIndex = questionIndex + 1; 
      });
      print(questionIndex);
    }

    @override
    Widget build(BuildContext context) {
      var questions = [
        "whats your favourite color?",
        "Whats your favourite rat?",
      ];

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("MY first App"),
          ),
          body: Column(
            children: [
              Text(
                questions[questionIndex]
                ),
                 ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1"),),
                 ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1"),),
                 ElevatedButton(onPressed: () => print("ANswer 2 choosen!"), child: Text("Answer 1"),
                ),
            ],
          ),
        ),
      );
    }
}