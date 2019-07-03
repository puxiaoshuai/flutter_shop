import 'package:flutter/material.dart';
class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => new _MinePageState();
}

class _MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Text("个人中心");
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
