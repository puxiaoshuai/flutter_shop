import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/jsonbean/news_entry.dart';
class NewsPage extends StatefulWidget  {

   String type;
  NewsPage({Key key,@required this.type});

  @override
  _NewsPageState createState() => new _NewsPageState();
}


class _NewsPageState extends State<NewsPage> with AutomaticKeepAliveClientMixin   {
  NewsEntry newsEntry;
  int curr_page=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews(curr_page);
  }
  void getNews(int page) async {
    try{
      Response response=await Dio().get("http://gank.io/api/data/${widget.type}/10/${page}");
      setState(() {
        newsEntry=NewsEntry.fromJson(jsonDecode(response.toString()));
      });
    }catch(e){

    }
  }

  @override
  Widget build(BuildContext context) {
    
    if(newsEntry==null){
      return Center(
        child: CircularProgressIndicator(),
      );
    }else{
      return new RefreshIndicator(child:
      ListView.builder(itemBuilder: (conent,index){
        return ListTile(
          title: Text("今日要闻中"),

          subtitle: new Text(newsEntry.results[index].desc),
        );
      },
        itemCount: newsEntry.results.length,), onRefresh:
          _pullToRefresh,
      );
    }

  }
  Future _pullToRefresh() async{

      curr_page=1;
      newsEntry.results.clear();
      // getNews(curr_page);
      return null;

  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
