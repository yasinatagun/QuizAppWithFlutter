import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz ,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 27, 121),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 250,
              color: Colors.amber.withOpacity(0.5),
            ),
            const SizedBox(height: 70),
             Text(
              "Learn Flutter Fun Way",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
