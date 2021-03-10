import 'package:flutter/material.dart';
import 'package:login_page/Second_Screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login_Screen extends StatefulWidget {
  @override
  _login_ScreenState createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  //variable define
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String name;
  String password;
  @override
  Widget build(BuildContext context) {
    print('hello');
    // MediaQuerry Define
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
            child: Text(
          "Login Page",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Colors.yellow[600],
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.blue[900],
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: height / 2,
                  width: width,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 135,
                left: 20,
                child: Form(
                  key: _formkey,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          width: MediaQuery.of(context).size.width * .80,
                          child: TextFormField(
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "User Name is Required";
                              } else {
                                setState(() {
                                  name = value;
                                });
                              }
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                labelText: "User Name"),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          width: MediaQuery.of(context).size.width * .80,
                          child: TextFormField(
                            validator: (String value) {
                              if (value.isEmpty) {
                                return "Password Required";
                              } else {
                                setState(() {
                                  password = value;
                                });
                              }
                            },
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                labelText: "Password"),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            //Forget password Screen
                          },
                          textColor: Colors.blue[900],
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RaisedButton(
                                color: Colors.blueAccent[900],
                                onPressed: () {
                                  if (_formkey.currentState.validate()) {
                                    Fluttertoast.showToast(
                                        msg: "Data Save to second screen",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.TOP,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.redAccent,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Second_Screen5(
                                          name1: name,
                                          password1: password,
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Text("Login"),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(180),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(180),
                        )),
                    height: MediaQuery.of(context).size.height * .70,
                    width: MediaQuery.of(context).size.width * .90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
