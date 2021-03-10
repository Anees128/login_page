import 'package:flutter/material.dart';

class LinearProgressIndicator12 extends StatefulWidget {
  @override
  _LinearProgressIndicator12State createState() =>
      _LinearProgressIndicator12State();
}

class _LinearProgressIndicator12State extends State<LinearProgressIndicator12> {
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("LinearProgressBar"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(23),
            child: _loading
                ? LinearProgressIndicator()
                : Text("Press The Button", style: TextStyle(fontSize: 25)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
            });
          },
          tooltip: "Download",
          child: Icon(Icons.cloud_circle),
        ),
      ),
    );
  }
}
