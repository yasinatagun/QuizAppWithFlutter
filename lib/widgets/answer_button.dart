import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(        
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 60, 29, 114),
        ),
        child: Text(answerText,),
      ),
    );
  }
}
