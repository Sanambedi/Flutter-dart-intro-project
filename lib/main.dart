import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

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
      if(_questionIndex==1){
        return;
      }
      _questionIndex++;
    });
    print("Question answered");
  }
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText':'What\'s your name?',
        'answers': ["Black","Red","Green","White"],
      },
      {
        'questionText':'What\'s your favorite animal?',
        'answers': ["Rabbit","Snake","Elephant","Lion"]
      },      
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
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion,answer);
          }).toList(),
        ],
      ),
    ));
  }
}
