import 'dart:async';

import 'package:flutter/material.dart';

class Circular_progressIndicator12 extends StatefulWidget {
  @override
  _Circular_progressIndicator12State createState() =>
      _Circular_progressIndicator12State();
}

class _Circular_progressIndicator12State
    extends State<Circular_progressIndicator12> {
  bool _loading;
  double _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Circular ProgressBar"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(14.0),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        strokeWidth: 10,
                        backgroundColor: Colors.green,
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.red),
                        value: _progressValue,
                      ),
                      Text('${(_progressValue * 100).round()}%'),
                    ],
                  )
                : Text(
                    "Press button for downloading",
                    style: TextStyle(fontSize: 25),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
          splashColor: Colors.greenAccent,
        ),
      ),
    );
  }

  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(milliseconds: 150);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.02;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}
