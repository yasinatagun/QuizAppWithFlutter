import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,
                          style: GoogleFonts.lato(color: Colors.white)),
                      const SizedBox(height: 5),
                      Text(data['user_answer'] as String,
                          style: GoogleFonts.lato(
                              color: Color.fromARGB(255, 236, 194, 243))),
                      const SizedBox(height: 5),
                      Text(data['correct_answer'] as String,
                          style: GoogleFonts.lato(color: Colors.amber)),
                      const SizedBox(height: 5),
                      Divider(),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
