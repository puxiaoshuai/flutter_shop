import 'package:flutter/material.dart';
class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => new _CarPageState();
}

class _CarPageState extends State<CarPage> with AutomaticKeepAliveClientMixin  {
  @override
  Widget build(BuildContext context) {
    return Text("购物车");
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
