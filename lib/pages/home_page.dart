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
      Tab(text: "热点",),
      Tab(text: "美图",),
      Tab(text: "体育",),
      Tab(text: "搞笑",),
      Tab(text: "汽车",),
      Tab(text: "段子",),
      Tab(text: "吐槽",),
      Tab(text: "视频",),
      Tab(text: "二次元",),

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
          children: tabs
              .map((Tab tab) =>
               NewsPage(type: tab.text+"jajaj ",))
              .toList()),

    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
