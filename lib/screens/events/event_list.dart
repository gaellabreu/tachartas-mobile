import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tachartas/screens/events/event_category_list.dart';
import 'dart:convert';

import 'package:tachartas/screens/events/hot_tab.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  var items = new List<dynamic>();
  Map<String, String> headers = {'Content-Type' : 'application/json'};

  @override
  void initState() {
    super.initState();
    getEvents();
  }

  getEvents() async {
    var url = 'https://tachartas.herokuapp.com/event/filter';
    var response = await http.post(url, body: json.encode({}), headers: headers);
    
    setState(() {
      items.addAll(json.decode(response.body));  
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
          child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  DrawerHeader(child: const Text('Categorias'),
                  decoration: BoxDecoration(
                    color: Colors.pink
                  ),),
                  ListTile(
                    leading: Icon(Icons.music_note),
                    title: const Text('Music'),
                  ),
                  ListTile(
                    leading: Icon(Icons.terrain),
                    title: const Text('Turismo'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: const Text('Comida'),
                  ),
                  ListTile(
                    leading: Icon(Icons.video_call),
                    title: const Text('Video'),
                  )
                ],
              ),
            ),
            appBar: AppBar(
              elevation: 0,
              title: const Text('EVENTOS'),
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white54,
                tabs: <Widget>[
                  Tab(child: const Text('Hot')),
                  Tab(child: const Text('Soon')),
                  Tab(child: const Text('Today')),
                  Tab(child: const Text('Tomorrow')),
                  Tab(child: const Text('This Week'))
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                HotTab(),
                Icon(Icons.wb_sunny),
                Icon(Icons.money_off),
                Icon(Icons.movie),
                Icon(Icons.nature)
              ],
            ),
          )
        
    );
  }
}