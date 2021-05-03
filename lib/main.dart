import "package:flutter/material.dart";
import "./question.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print("Question answered");
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your name?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
      ),
      body: Column(
        children: [
          Question(
            questions.elementAt(_questionIndex),
          ),
          ElevatedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text("Answer 2"),
            onPressed: () => print("Answer 2 chosen!"),
          ),
          ElevatedButton(
            child: Text("Answer 3"),
            onPressed: (){
              print("Answer 3 chosen");
            },
          ),
        ],
      ),
    ));
  }
}
