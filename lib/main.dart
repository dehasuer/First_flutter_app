import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.amber),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Başlık"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          width: 200,
          height: 300,
          color: Colors.purple,
          child: Text(
            "Deha" * 1,
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tiklandi");
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
