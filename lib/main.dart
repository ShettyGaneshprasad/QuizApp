import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
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
    var question = [
      'What is your favourite colour?',
      'What is your Favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App by ganeshprasad'),
          ),
          body: Column(
            children: <Widget>[
              Text(question[questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            ],
          )),
    );
  }
}
