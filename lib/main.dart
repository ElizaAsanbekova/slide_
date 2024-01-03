import 'package:flutter/material.dart';

void main() {
  runApp(MyWay());
}

class MyWay extends StatelessWidget {
  MyWay({super.key});
  int kel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClass(),
    );
  }
}

int kel = 0;

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

List<String> surottor = [
  'butterfly.jpg'
      'foto.jpg'
      'laterne.jpg'
      'lily.jpg'
      'mountain,jpg'
];

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Task01")),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "slider",
              style: TextStyle(fontSize: 25),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      print('goback');
                    });
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                "assets/${surottor[kel]}",
                height: 200,
                width: 200,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  print('goforward');
                });
              },
              child: Container(
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
