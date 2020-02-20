import 'package:flutter/material.dart';
import 'package:tachartas/screens/events/event_detail.dart';

import 'event_category_list.dart';

class HotTab extends StatelessWidget {
  void _goToEventCategoryList(BuildContext context) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => EventDetail()));
    
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.pink,
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
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
                            style:
                                TextStyle(
                                  fontSize: 20, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => _goToEventCategoryList(context),
                              child: Card(
                    elevation: 5,
                    child: Image.asset('assets/testimgtwo.jpg',
                        width: 200, fit: BoxFit.cover)),
              ),
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgthree.jpg',
                      width: 200, fit: BoxFit.cover)),
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfour.jpg',
                      width: 200, fit: BoxFit.cover)),
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfive.jpeg',
                      width: 200, fit: BoxFit.cover))
            ],
          ),
        ),
        Divider(
          thickness: 1,
          indent: 50,
        ),
        FlatButton.icon(
          icon: Icon(Icons.terrain, color: Colors.pink,),
          onPressed: () => {},
            label: const Text('Turismo',style: TextStyle(fontSize: 20, color: Colors.pink),
        )),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfive.jpeg',
                      width: 200, fit: BoxFit.cover)),
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfive.jpeg',
                      width: 200, fit: BoxFit.cover)),
                      Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfive.jpeg',
                      width: 200, fit: BoxFit.cover)),
                      Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgfive.jpeg',
                      width: 200, fit: BoxFit.cover)),
                      Card(
                  elevation: 5,
                  child: FlatButton(
          onPressed: () => {},
            child: const Text('Ver mas...',style: TextStyle(fontSize: 20, color: Colors.pink),
        )))
            ],
          ),
        ),
        Divider(
          thickness: 1,
          indent: 50,
        ),
        FlatButton.icon(
          icon: Icon(Icons.music_note, color: Colors.pink,),
          onPressed: () => {},
            label: const Text('Música',style: TextStyle(fontSize: 20, color: Colors.pink),
        )),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgthree.jpg',
                      width: 200, fit: BoxFit.cover)),
              Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgthree.jpg',
                      width: 200, fit: BoxFit.cover)),
                      Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgthree.jpg',
                      width: 200, fit: BoxFit.cover)),
                      Card(
                  elevation: 5,
                  child: Image.asset('assets/testimgthree.jpg',
                      width: 200, fit: BoxFit.cover))
            ],
          ),
        )
      ],
    );
  }
}
