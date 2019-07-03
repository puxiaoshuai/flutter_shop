import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/config/httpHeaders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

Future getHttp() async {
  try {
    Response response = await Dio().get("https://time.geekbang.org/serv/v1/column/newAll");
    return response.toString();
  } catch (e) {
    return e.toString();
  }
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
   String  msg="暂无数据";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          child: new Text("点击请求数据",style: TextStyle(fontSize: 18),),
          onTap: () {
            getHttp().then((va) {
              setState(() {
                msg = va.toString();
              });
            });
          },
        ),
        new Text(msg.toString(),maxLines: 5,),

      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
