import 'package:flutter/material.dart';


class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App>{
    int counter = 0;
    @override
  Widget build(BuildContext context) {
     return MaterialApp(
        home: Scaffold(
          body: Text('$counter'),
          appBar: AppBar(
            title: const Text('Lets see images!'),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
          ),
        ),
      );
    }
}