import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_image_app/models/image_model.dart';
import 'package:flutter_image_app/ui/main_page/list/image_list.dart';
import 'package:http/http.dart';


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
      final Response response = await get(url);
      final ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));
      setState(() {
        images.add(imageModel);
      });
    }
    @override
  Widget build(BuildContext context) {
     return MaterialApp(
        home: Scaffold(
          body: ImageList(images),
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