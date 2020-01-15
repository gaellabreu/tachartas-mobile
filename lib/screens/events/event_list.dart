import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    return Scaffold(
      body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, i) => ListTile(
        leading: Icon(Icons.mic_none),
        title: Text(items[i]['name']),
        subtitle: Text(items[i]['venue']),),
    ));
  }
}