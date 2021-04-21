import 'package:flutter/material.dart';
import 'package:flutter_image_app/models/image_model.dart';

class ImageList extends StatelessWidget {
  List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(images[index].url),
          );
        });
  }
}
