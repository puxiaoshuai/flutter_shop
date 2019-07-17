import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  String type;
  NewsPage({Key key,@required this.type});

  @override
  _NewsPageState createState() => new _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Text(widget.type),
    );
  }
}
