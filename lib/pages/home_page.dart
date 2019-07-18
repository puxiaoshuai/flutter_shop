import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/config/httpHeaders.dart';

import 'home/news.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

Future getHttp() async {
  try {
    Dio dio=new Dio();
    dio.options.headers=httpHeaders;
    Response response = await dio.get("https://time.geekbang.org/serv/v1/column/newAll");
    return response.toString();
  } catch (e) {
    return e.toString();
  }
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin ,SingleTickerProviderStateMixin{
   String  msg="暂无数据";
   bool isscroll=false;
   var tabs=<Tab> [];
   TabController mconroller;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs=<Tab>[
      Tab(text: "Android",),
      Tab(text: "iOS",),
      Tab(text: "休息视频",),
      Tab(text: "拓展资源",),
      Tab(text: "前端",),
      Tab(text: "福利",),

    ];
    if(tabs.length>3){
      setState(() {
        isscroll=true;
      });
    }else{
      setState(() {
        isscroll=false;
      });
    }
    mconroller=new TabController(initialIndex:0,length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(tabs: tabs,controller: mconroller,isScrollable: isscroll,),
      ),
      body: TabBarView(controller: mconroller,
          children: <Widget>[
          NewsPage(type: tabs[0].text,),
          NewsPage(type: tabs[1].text,),
          NewsPage(type: tabs[2].text,),
           NewsPage(type: tabs[3].text,),
         NewsPage(type: tabs[4].text,),
          NewsPage(type: tabs[5].text,),

          ],

    ));
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
