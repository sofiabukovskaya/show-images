class Image {
  int id;
  String url;
  String title;

  Image(this.id, this.url, this.title);

  Image.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}