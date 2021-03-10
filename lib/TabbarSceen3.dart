import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            ListTile(
              trailing: Icon(Icons.archive),
              title: Text("My status"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "Images/circle-cropped.png",
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[800],
          onPressed: () {},
          child: Icon(Icons.add_comment),
        ),
      ),
    );
  }
}
