import 'package:flutter/material.dart';
import 'package:flutter_image_app/models/image_model.dart';

class ImageList extends StatelessWidget {
  List<ImageModel> images;

  // ignore: sort_constructors_first
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.network(images[index].url)),
                  Text(images[index].title),
                ],
              ));
        });
  }
}
