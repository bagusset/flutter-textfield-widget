import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController home = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                  hintText: "Input your name"
                ),
                autocorrect: false,
                onChanged: (value) {
                  setState(() {});
                },
                controller: name,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail),
                  hintText: "Input your mail"
                ),
                autocorrect: false,
                onChanged: (value) {
                  setState(() {});
                },
                controller: mail,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.call),
                  hintText: "Input your phone"
                ),
                autocorrect: false,
                onChanged: (value) {
                  setState(() {});
                },
                controller: phone,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.home),
                  hintText: "Input your adress"
                ),
                autocorrect: false,
                onChanged: (value) {
                  setState(() {});
                },
                controller: home,
              ),
              Text("Name :"),
              Text(name.text),
              Text("Email :"),
              Text(mail.text),
              Text("Phone"),
              Text(phone.text),
              Text("Address"),
              Text(home.text),
              //Text(controller.text),
            ],
            
          ),
        ),
      ),
    );
  }
}
