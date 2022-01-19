import 'package:flutter/material.dart';
import 'package:music_app/subject_card.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Let us Know",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "What genres do you prefer more?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 35),
              child: Row(
                children: [
                  Column(
                    children: [
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      children: [
                        SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                        SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                        SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Continue",
            style: TextStyle(fontSize: 20),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.black87,
            padding: EdgeInsets.all(20),
            onSurface: Colors.white,
          ),
        ),
      ),
    );
  }
}
