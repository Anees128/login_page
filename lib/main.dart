import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:login_page/Tab_Bar1.dart';
import 'login_Screen.dart';
import 'Tab_Bar1.dart';
import 'Linear_ProgressIndicator.dart';
import 'Circular_progressIndicator.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Login UI",
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 8),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home_Page())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "Images/welc.png",
            height: 300,
            width: 300,
          ),
          SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Drawer
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 130,
                          height: 120,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://d3avoj45mekucs.cloudfront.net/rojakdaily/media/jessica-chua/entertainment/2018/oct/he110%20channel%20introduction/hello_main.jpg?ext=.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.yellow[600],
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: Icon(Icons.home),
                  title: Text("Homepage"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Card(
                color: Colors.blue[600],
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tab_Bar12(),
                        ));
                  },
                  leading: Icon(Icons.local_drink),
                  title: Text("Tabbar"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Card(
                color: Colors.green[600],
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login_Screen(),
                        ));
                  },
                  leading: Icon(Icons.local_library),
                  title: Text("LoginScreen"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Card(
                color: Colors.green[600],
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login_Screen(),
                        ));
                  },
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.settings_applications),
                ),
              ),
              Card(
                color: Colors.grey[500],
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => exit(0),
                        ));
                  },
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Exit"),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Main Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("Linear ProgressBar"),
                color: Colors.yellow[500],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LinearProgressIndicator12()),
                  );
                },
                splashColor: Colors.red,
              ),
              RaisedButton(
                child: Text("Circular ProgressBar"),
                color: Colors.blue[600],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Circular_progressIndicator12()),
                  );
                },
                splashColor: Colors.yellowAccent,
              ),
              RaisedButton(
                child: Text("Login Screen"),
                color: Colors.green[800],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login_Screen()));
                },
                splashColor: Colors.red,
              ),
              RaisedButton(
                child: Text("TapBar"),
                color: Colors.red[500],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tab_Bar12()));
                },
                splashColor: Colors.green,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
