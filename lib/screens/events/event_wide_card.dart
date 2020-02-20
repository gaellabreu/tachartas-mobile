import 'package:flutter/material.dart';

class EventWideCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 5,
        child: Stack(
          children: [
            Image.asset('assets/testimgone.jpg',
                width: 200, height: 300, fit: BoxFit.cover),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 40,
                color: Colors.black54,
                child: const Text('Google I/O 2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            )
          ],
        ),
      );
}
