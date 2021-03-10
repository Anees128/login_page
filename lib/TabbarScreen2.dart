import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text("Messages"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Images/Vintage Logo.jpg"),
                    )),
              );
            }),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.chat),
            backgroundColor: Colors.green[800],
            onPressed: () {}),
      ),
    );
  }
}
