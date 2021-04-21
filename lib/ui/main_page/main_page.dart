import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_image_app/models/image_model.dart';
import 'package:flutter_image_app/ui/main_page/list/image_list.dart';
import 'package:http/http.dart';

class MainPage extends StatefulWidget {
    @override
  MainPageState createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>{
    int counter  = 0;
    final List<ImageModel> images = [];

    Future<ImageModel> fetchData() async{
      counter++;
      final Uri url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
      final Response response = await get(url);
       ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));
       return imageModel;
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
            onPressed: () {
              fetchData().then((ImageModel imageModel){
                setState(() {
                  images.add(imageModel);
                });
              }).catchError(() => print('Error'));
            },
          ),
        ),
      );
    }
}