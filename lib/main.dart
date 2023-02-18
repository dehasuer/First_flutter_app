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
        appBar: AppBar(
          title: Text("Başlık"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Text(
          "Hello World!",
          style: TextStyle(color: Colors.amber, fontSize: 25),
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
