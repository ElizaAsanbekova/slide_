import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClass(),
    );
  }
}

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

int index = 0;

List<String> surottor = [
  'butterfly.jpg',
  'foto.jpg',
  'laterne.jpg',
  'lily.jpg',
  'mountain.jpg',
  'laterne.jpg',
];


class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Task01")),
      ),
      body: Center(
        child: Column(
          children: [
           
            const Text(
              "slider",
              style: TextStyle(fontSize: 25),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  "assets/images/${surottor[index]}",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = index + 1;
                      if (surottor.length == index) {
                        index = 0;
                      }
                      print(surottor.length);
                    });
                  },
                  child: Container(
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (index == 0) {
                        index = surottor.length - 1;
                      } else {
                        index--;
                      }
                      print('goforward');
                    });
                  },
                  child: Container(
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
