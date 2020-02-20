import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => {}, child: Icon(Icons.star),),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            flexibleSpace: Image.asset('assets/testimgone.jpg',
                height: 300, fit: BoxFit.cover),
            title: const Text('Detail'),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              leading: Icon(Icons.map),
              title: const Text('Location'),
              subtitle: const Text('Plaza de la bandera'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: const Text('Fecha'),
              subtitle: const Text('02 de febrero de 2019'),
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: const Text('Time'),
              subtitle: const Text('3:00 PM - 10:00 PM'),
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: const Text('Costo'),
              subtitle: const Text('300 RD\$'),
            ),
          ]))
        ],
      ),
    );
  }
}
