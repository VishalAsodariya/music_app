import 'package:flutter/material.dart';
import 'package:music_app/home.dart';
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
              padding: EdgeInsets.only(left: 8, top: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      SubjectCard(icon: Icons.music_note, subjectName: "Roman"),
                      SubjectCard(icon: Icons.location_on_outlined, subjectName: "Action"),
                      SubjectCard(icon: Icons.anchor_rounded, subjectName: "Horror"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      children: [
                        SubjectCard(icon: Icons.anchor_rounded, subjectName: "Jorney"),
                        SubjectCard(icon: Icons.location_city, subjectName: "Fantasy"),
                        SubjectCard(icon: Icons.science, subjectName: "Science"),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SubjectCard(icon: Icons.indeterminate_check_box, subjectName: "Detective"),
                      SubjectCard(icon: Icons.account_tree, subjectName: "Western"),
                      SubjectCard(icon: Icons.movie, subjectName: "Drama"),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
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
