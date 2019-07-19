# flutter_shop



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
###### http://img2.imgtn.bdimg.com/it/u=829044612,3699393036&fm=26&gp=0.jpg
###### 本地图片
在android同目录新建images.并复制图片到此
在pubspec.yaml中添加
```
flutter:

  uses-material-design: true
  assets:
  - images/ic_arrows_right.png
  - images/ic_back.jpg
```
###### 侧滑去掉原来的图标，或者自定义
```
appBar: AppBar(

        centerTitle: true,
        title: Text("乐游原"),
        elevation:0.0,
        leading: Text(""),  //此处进行设置
      ),

      自定义图标：
       leading: Builder(
                 builder: (context) => IconButton(
                       icon: new Icon(Icons.settings),
                       onPressed: () => Scaffold.of(context).openDrawer(),
                     ),
               ),
      ```
###### tab切换防止重复加载，使用  with  AutomaticKeepAliveClientMixin,并重写方法 为true
###### json解析，用工具，然后执行  flutter packages pub run build_runner build