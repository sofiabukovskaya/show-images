import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/image_model.dart';

class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App>{
    int counter  = 0;
    List<ImageModel> images = [];

    void fetchData() async{
      counter++;
      final Uri url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
      Response response = await get(url);
      ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));

      setState(() {
        images.add(imageModel);
      });
    }
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
            onPressed: fetchData,
          ),
        ),
      );
    }
}