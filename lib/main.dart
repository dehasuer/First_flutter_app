import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://www.bifikir.com/images/content/lamborghini-huracan-1_g3er.webp";
  String _img2 =
      "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: flexibleContainer,
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

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.green,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ];
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Deha",
          style: TextStyle(fontSize: 128),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            image: DecorationImage(
                image: NetworkImage(_img2),
                fit: BoxFit.scaleDown,
                repeat: ImageRepeat.repeat),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(0, -20), blurRadius: 10),
            ]),
      ),
    );
  }
}

List<Widget> get expandedContainer {
  return [
    Expanded(
      flex: 2,
      child: Container(
        width: 75,
        height: 75,
        color: Colors.green,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ),
  ];
}

List<Widget> get flexibleContainer {
  return [
    Flexible(
      flex: 3,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.green,
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.red,
      ),
    ),
  ];
}
