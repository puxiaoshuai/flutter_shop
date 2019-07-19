import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_html/flutter_html.dart';
class Hot_Web extends StatefulWidget {
  String url;
  String title;
  String image_url;

  Hot_Web(
      {Key key, @required this.url, @required this.title, @required this.image_url});

  @override
  _Hot_WebState createState() => new _Hot_WebState();
}

class _Hot_WebState extends State<Hot_Web> {
  String html_source;
  Future load_source() async {
    try {
      Response response = await Dio().get(widget.url);
      String data=response.data.toString();
      RegExp exp=new RegExp(r'\d');
      print("=================1");
      Iterable<Match> matchs=exp.allMatches("<article.*?>(.*?)</article>");
      print("长度"+matchs.toList().length.toString());
      for(Match m in matchs){
        print(m.group(0));
      }
    } catch (e) {

    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(

              primary: true,
              //是否预留高度
              forceElevated: false,
              automaticallyImplyLeading: true,
              title: Text(widget.title),


              snap: false,
              //与floating结合使用
              expandedHeight: 200.0,
              //展开高度
              floating: false,
              //是否随着滑动隐藏标题
              pinned: true,
              //是否固定在顶部
              flexibleSpace: FlexibleSpaceBar( //可以展开区域，通常是一个FlexibleSpaceBar
                  background: Image.network(
                    widget.image_url,
                    fit: BoxFit.fill,
                  )),
            ),

          ];
        },
        body: WebviewScaffold(url: widget.url),

    );
  }
}
