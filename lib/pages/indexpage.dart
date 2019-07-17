import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/expend/draw_item.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:flutter_shop/pages/car_page.dart';
import 'package:flutter_shop/pages/category_page.dart';
import 'package:flutter_shop/pages/mime_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => new _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int current_index = 0;
  var current_page;

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text("首页")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text("分类")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text("购物车")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), title: Text("会员中心")),
  ];
  final List<Widget> pages = [HomePage(), CategoryPage(), CarPage(), MinePage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current_page = bottomTabs[current_index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("乐游原"),
        elevation:0.0,
        leading: Text(""),
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
             Image.asset("images/ic_back.jpg"),
            ListTile(
              title: Text("蒲小帅"),
              trailing: Icon(Icons.menu),
            ),
            Draw_Item(title: "个人信息",),
            Draw_Item(title: "我的收藏",),
            Draw_Item(title: "每日一诗",),
            Draw_Item(title: "日志记录",),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        items:
        bottomTabs,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            current_index = index;
            current_page = pages[index];
          });
        },
      ),
      body: IndexedStack(
        index: current_index,
        children: pages,
      ),
    );
  }
}

