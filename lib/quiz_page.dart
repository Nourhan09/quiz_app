import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  List<String> q = [
    'The Earth is flat?', // false
    'Water boils at 100 degrees Celsius?', // true
    'There are 25 hours', // false
    ' Cats are mammals?', // true
    'The sun rises in the west?', // false
  ];
  List<String> a = ['false', 'true', 'false', 'true', 'false'];
  List<Icon> score = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Quiz Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Spacer(),
            Text(
              index == q.length ? 'finish' : q[index],
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (q[index] == 'true') {
                    score.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    score.add(Icon(Icons.close, color: Colors.red));
                  }

                  index++;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                color: Colors.green,
                child: Text(
                  'true',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (q[index] == 'false') {
                    score.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    score.add(Icon(Icons.close, color: Colors.red));
                  }
                  index++;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                color: Colors.red,
                child: Text(
                  'false',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(children: score),
          ],
        ),
      ),
    );
  }
}
