import 'package:flutter/material.dart';
import 'package:tachartas/screens/events/event_wide_card.dart';

class EventCategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListWheelScrollView(
      diameterRatio: 2,
      itemExtent: 45,
      children:
          List.generate(100, (i) => Container(child: 
            Card(
        elevation: 5,
        child: Column(
          children: [
            // Image.asset('assets/testimgone.jpg',
            //     width: 200, height: 300, fit: BoxFit.cover),
            Container(
                color: Colors.black54,
                child: const Text('Google I/O 2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
          ],
        ),
      )),
  )));
}
