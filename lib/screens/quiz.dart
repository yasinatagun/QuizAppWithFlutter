import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

//* **** START **** *//
class _QuizState extends State<Quiz> {
  var activeScreen = 'home-screen';
  List<String> selectedAnswers = [];
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        
        activeScreen = "result-screen";
      });
    }

  
  }

  switchScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }



  //* HELLO
  @override
  Widget build(BuildContext context) {
    //* Another solution for screen changing
    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == "quiz-screen") {
      screenWidget = QuizScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
      if (activeScreen == "result-screen") {
      screenWidget =  ResultScreen(chosenAnswers: selectedAnswers,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 27, 121),
        body: screenWidget,
      ),
    );
  }
}
