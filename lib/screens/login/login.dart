import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../events/event_list.dart';
import '../login/components/toggler.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              Colors.teal[200],
              Colors.teal[300],
              Colors.teal[400],
              Colors.teal[500],
              Colors.teal[600],
            ])),
        child: Stack(
          children: <Widget>[
            Center(
              child: const Text('hi'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.height * 0.06,
              right: MediaQuery.of(context).size.height * 0.06,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          hintText: 'Name'),
                      ),
                      Spacer(),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email Address')
                      ),
                      Spacer(),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password')
                      ),
                      Spacer(),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Confirmation')
                      ),
                      Spacer(),
                    ],),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.77,
              left: MediaQuery.of(context).size.height * 0.12,
              right: MediaQuery.of(context).size.height * 0.12,
              child: ButtonTheme(
                height: MediaQuery.of(context).size.height * 0.07,
                child: RaisedButton(
                  
                  elevation: 10,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.teal[200],
                            Colors.teal[300],
                            Colors.teal[400],
                            Colors.teal[500],
                            Colors.teal[600],
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                          minWidth: 88.0,
                          minHeight: MediaQuery.of(context).size.height *
                              0.07), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'SIGN UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: MediaQuery.of(context).size.width * 0.125,
              child: Toggler()),
          ],
        ));
  }
}

void _goToEventList(BuildContext context) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => EventList()));

InputDecoration _inputDecoration({String hint, IconData icon}) =>
    InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: Icon(icon),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.circular(25)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(25)));

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.7);
    path.cubicTo(size.width * 0.01, size.height * 0.5, size.width,
        size.height * 0.5, size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyOtherClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.moveTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.cubicTo(size.width, size.height * 0.4, size.width * 0.1,
        size.height * 0.5, size.width, size.height * 1.1);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
