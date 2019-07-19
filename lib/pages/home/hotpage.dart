import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_shop/jsonbean/hot_entry.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'hot_web.dart';

class HotPage extends StatefulWidget {
  @override
  _HotPageState createState() => new _HotPageState();
}


class _HotPageState extends State<HotPage>
    with AutomaticKeepAliveClientMixin {

  List<HotBean> mlistdata = [];
  int curr_page = 10;
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
          "http://c.m.163.com/nc/article/list/T1414142214384/${curr_page}-20.html");
      var data = HotEntry.fromJson(jsonDecode(response.toString()));
      setState(() {
        mlistdata.addAll(data.hotlist);
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
//           return ListTile(
//             subtitle: new Text(mlistdata[i].title),
//           );
          if (i == 0) {
            return row_cell_first(mlistdata[i],width);
          } else {
            return row_cell(mlistdata[i]);
          }
        }
          , itemCount: mlistdata.length,
          
         ),
      );
    }
  }

  row_cell_first(var item,w){
    return new GestureDetector(
        onTap: ()=>{
        Navigator.push(context,new MaterialPageRoute(builder:(BuildContext c){
      return new Hot_Web(url: item.url,title: item.title,image_url: item.imgsrc,);
         }) )
    },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Image.network(item.imgsrc,height: 160,width:w,fit: BoxFit.cover,),
          Padding(padding: EdgeInsets.only(bottom: 8.0),
              child: Text(item.title,style: TextStyle(color: Colors.white,fontSize: 16,),maxLines: 1,overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
  row_cell(var item){

    return GestureDetector(
      onTap: ()=>{
        Navigator.push(context,new MaterialPageRoute(builder:(BuildContext c){
      return new Hot_Web(url: item.url,title: item.title,image_url: item.imgsrc,);
        }) )
      },
      child: Padding(
        child: new Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(item.title,style: TextStyle(fontSize: 16,color: Colors.black),),
                  Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(item.source+"   "+item.mtime,style: TextStyle(fontSize: 12,color: Colors.grey)),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: new Container(
                margin: EdgeInsets.only(left: 4.0),
                color: Colors.grey,
                child: Image.network(item.imgsrc
                  ,width: 100,height: 70,fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(8.0),

      ),
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
