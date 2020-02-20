import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tachartas/screens/login/components/facebook_sign_in.dart';
import 'package:tachartas/screens/login/components/google_sign_in_button.dart';
import 'package:tachartas/screens/login/components/log_in_form.dart';
import 'package:tachartas/screens/login/components/sign_up_button.dart';
import 'package:tachartas/screens/login/components/sign_up_form.dart';
import '../login/components/toggler.dart';
import 'clases/toggler.dart';
import 'components/log_in_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
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
            Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.height * 0.1,
                right: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'assets/temp_logo.png',
                  height: 150,
                )),
            AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: MediaQuery.of(context).size.height * 0.45,
                right: MediaQuery.of(context).size.height *
                    (Provider.of<Switcher>(context, listen: true).items
                        ? 0.045
                        : 0.7),
                child: SignUpForm()),
            AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: MediaQuery.of(context).size.height * 0.45,
                left: MediaQuery.of(context).size.height *
                    (Provider.of<Switcher>(context, listen: true).items
                        ? 0.7
                        : 0.045),
                child: LogInForm()),
            AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: MediaQuery.of(context).size.height *
                    (Provider.of<Switcher>(context, listen: true).items
                        ? 0.81
                        : 0.64),
                left: MediaQuery.of(context).size.height * 0.12,
                right: MediaQuery.of(context).size.height * 0.12,
                child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Provider.of<Switcher>(context, listen: true).items
                        ? SignUpButton()
                        : LogInButton())),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                left: MediaQuery.of(context).size.width * 0.125,
                child: Toggler()),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              left: 90,
              right: 90,
              child: FacebookSignInButton(),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15,
              left: 90,
              right: 90,
              child: GoogleSignInButton(),
            )
          ],
        ));
  }
}

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
