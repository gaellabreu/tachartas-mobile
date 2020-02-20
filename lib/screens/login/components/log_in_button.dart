import 'package:flutter/material.dart';
import 'package:tachartas/screens/events/event_list.dart';

class LogInButton extends StatelessWidget {
  void _goToEventList(BuildContext context) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => EventList()));
    
  @override
  Widget build(BuildContext context) => ButtonTheme(
        height: MediaQuery.of(context).size.height * 0.07,
        child: RaisedButton(
          elevation: 10,
          onPressed: () => this._goToEventList(context),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                'LOG IN',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
}
