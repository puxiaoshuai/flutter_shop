import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/jsonbean/news_entry.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NewsPage extends StatefulWidget {

  String type;

  NewsPage({Key key, @required this.type});

  @override
  _NewsPageState createState() => new _NewsPageState();
}


class _NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin {

  List<Results> mlistdata = [];
  int curr_page = 1;
  RefreshController _refreshController = RefreshController(
      initialRefresh: false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews(curr_page);
  }

  Future getNews(int page) async {
    try {
      Response response = await Dio().get(
          "http://gank.io/api/data/${widget.type}/10/${page}");
      var data = NewsEntry.fromJson(jsonDecode(response.toString()));
      setState(() {
        mlistdata.addAll(data.results);
      });
      _refreshController.refreshCompleted();


    } catch (e) {

    }
  }


  @override
  Widget build(BuildContext context) {
    if (mlistdata.length == 0) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: MaterialClassicHeader(height: 30.0,),

        onRefresh: (){
          _pullToRefresh();
        },
        onLoading: (){
          loadMoreData();
        },
        controller: _refreshController,
        child: ListView.builder(itemBuilder: (c, i) {
           return ListTile(
             subtitle: new Text(mlistdata[i].desc),
           );
        }
          , itemCount: mlistdata.length,
          
         ),
      );
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _refreshController.dispose();
    super.dispose();
  }
  void _pullToRefresh() async {
         await Future.delayed(Duration(seconds: 1),(){
           curr_page = 1;
           mlistdata.clear();
           getNews(curr_page);
           _refreshController.refreshCompleted();
         });
  }

  loadMoreData() async {
     await Future.delayed(Duration(seconds: 1),(){
       this.curr_page++;
       print("页码"+this.curr_page.toString());
       getNews(this.curr_page);
       if(this.curr_page<10){
         _refreshController.loadComplete();
       }else{
         _refreshController.loadNoData();
       }
     });
  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
