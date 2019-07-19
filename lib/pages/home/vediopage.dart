import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/jsonbean/vedio_entry.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_player/video_player.dart';
import 'hot_web.dart';
import 'package:chewie/chewie.dart';


class VedioPage extends StatefulWidget {
  @override
  _VedioPageState createState() => new _VedioPageState();
}


class _VedioPageState extends State<VedioPage>
    with AutomaticKeepAliveClientMixin {

  List<VedioItem> mlistdata = [];
  int curr_page = 0;
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
          "http://c.m.163.com/recommend/getChanListNews?channel=T1457068979049&subtab=&size=10&offset=${curr_page}&fn=1&devId=Zlu9vafplVvQTmVtQz0h%2BiKMeAVybHyVL9jAQ%2Fqhu2zXfWEHTjuSItIWT5Nn4OczIIGNeE0nI41SFrBIaL1THA%3D%3D");
      var data = VedioEntry.fromJson(jsonDecode(response.toString()));
      setState(() {
        mlistdata.addAll(data.vedioitem);
      });
      _refreshController.refreshCompleted();


    } catch (e) {

    }
  }


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
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
          return row_cell(mlistdata[i]);
        }
          , itemCount: mlistdata.length,

         ),
      );
    }
  }


  row_cell(var item){

    return  Stack(
      alignment: Alignment.topCenter,
       children: <Widget>[

         Chewie(
             controller: new ChewieController(
                 aspectRatio: 4/3,
                 autoPlay: false,
                 allowFullScreen: false,
                 placeholder: Image.network(item.cover),
                 looping: false,
                 videoPlayerController: new VideoPlayerController.network(item.mp4Url)

             )
         ),
         Text(item.title,style: TextStyle(color: Colors.white,fontSize: 18)),
       ],
    );

 }
  @override
  void dispose() {
    // TODO: implement dispose
    _refreshController.dispose();
    super.dispose();
  }
  void _pullToRefresh() async {
         await Future.delayed(Duration(seconds: 1),(){
           curr_page = 10;
           mlistdata.clear();
           getNews(curr_page);
           _refreshController.refreshCompleted();
         });
  }

  loadMoreData() async {
     await Future.delayed(Duration(seconds: 1),(){
       this.curr_page=this.curr_page+10;
       getNews(this.curr_page);
       if(this.curr_page<200){
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
