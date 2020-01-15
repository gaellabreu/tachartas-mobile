import 'package:flutter/material.dart';

class Toggler extends StatefulWidget {
  @override
  _TogglerState createState() => _TogglerState();
}

class _TogglerState extends State<Toggler> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toggleButton(),
          child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: Duration(milliseconds: 500),
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black26),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 500),
              top: 3,
              left: toggleValue ? MediaQuery.of(context).size.width * 0.4 : 1,
              right: toggleValue ? 1 : MediaQuery.of(context).size.width * 0.4,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: ButtonTheme(
                  buttonColor: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.05,
                  minWidth: MediaQuery.of(context).size.height * 0.3,
                  child: RaisedButton(
                      onPressed: () => toggleButton(),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                ),
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.07,
                top: 15,
                child: Text('Existing',
                    style: TextStyle(
                        fontSize: 20,
                        color: toggleValue? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold))),
            Positioned(
                right: MediaQuery.of(context).size.width * 0.11,
                top: 15,
                child: Text('New',
                    style: TextStyle(
                        fontSize: 20,
                        color: toggleValue? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }

  toggleButton() => this.setState(() => toggleValue = !toggleValue);
}
