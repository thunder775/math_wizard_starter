import 'dart:math';

import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizPage(),
  ));
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
Random rand = new Random();

int value_1 = rand.nextInt(100);
int value_2 = rand.nextInt(100);
int answer;
int score = 0;

class _QuizPageState extends State<QuizPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Quiz App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEEFFD6),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$value_1',
                  style: TextStyle(fontSize: 50, color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+',
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$value_2',
                  style: TextStyle(fontSize: 50, color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '=',
                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.white,
                  height: 70,
                  width: 80,
                  child: TextField(
                    onChanged: (String text) {
                      setState(() {
                        answer = int.parse(text);
                      });
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.lightGreen,
              child: Icon(
                Icons.check,
                size: 70,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  if ((value_1 + value_1) == answer) {
                    print(answer);
                    print(value_1 + value_2);
                    print('case1');
                    score += 10;
                  } else if ((value_1 + value_1) != answer) {
                    print(answer);
                    print(value_1 + value_2);
                    print('case 2');
                    score -= 5;
                  }
                  value_1 = rand.nextInt(100);
                  value_2 = rand.nextInt(100);
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Icon(
                Icons.refresh,
                size: 70,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  value_1 = rand.nextInt(100);
                  value_2 = rand.nextInt(100);
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Score :   ',
                  style: TextStyle(fontSize: 40, color: Colors.green),
                ),
                Text(
                  '$score',
                  style: TextStyle(fontSize: 40, color: Colors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
