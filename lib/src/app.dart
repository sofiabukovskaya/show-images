import 'package:flutter/material.dart';

class App extends StatelessWidget {
    Widget build(context) {
     return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Lets see images!'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Hi there');
            },
          ),
        ),
      );
    }
}