
 // ignore_for_file: prefer_const_constructors
 

import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  double imgSize = 300;
  int red = 0;
  int green = 0;
  int blue = 0;
  double valorRed = 0;
  double valorGreen = 0;
  double valorBlue = 0;
  double valorAlpha = 0;
  int alpha = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {setState(() {
                imgSize -= 10;
              });},
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {setState(() {
                imgSize = 100;
              });},
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () { setState(() {
                imgSize = 200;
              });
                },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {setState(() {
                imgSize = 300;
              });},
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {setState(() {
                imgSize += 10;
              });},
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.ac_unit,
                  size: imgSize,
                  color: Color.fromARGB(alpha, red, green, blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.black,
                      value: valorAlpha,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valorAlpha = value;
                          alpha = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$alpha',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: valorRed,
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          valorRed = value;
                          red = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$red',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: valorGreen,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valorGreen = value;
                          green = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$green',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: valorBlue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valorBlue = value;
                          blue = value.toInt();
                        });
                      }
                    ),
                  ),
                  Text(
                    '$blue',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
 