import 'package:flutter/material.dart';
import 'package:login_page/TabbarScreen2.dart';

import 'TabbarSceen3.dart';
import 'TabbarScreen4.dart';
import 'Tabbarscreen1.dart';

class Tab_Bar12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[900],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Text("CHATS"),
                Text("STATUS"),
                Text("CALLS"),
              ],
            ),
            title: Text('WhatsApp'),
          ),
          body: TabBarView(
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
        ),
      ),
    );
  }
}
