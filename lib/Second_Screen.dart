import 'package:flutter/material.dart';

class Second_Screen5 extends StatefulWidget {
  String name1;
  String password1;
  Second_Screen5({
    @override this.name1,
    @override this.password1,
  });
  _Second_Screen5State createState() => _Second_Screen5State();
}

class _Second_Screen5State extends State<Second_Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text("Second  Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data'),
            Text('${widget.name1}'),
            Text('${widget.password1}'),
          ],
        ),
      ),
    );
  }
}
