import 'package:flutter/material.dart';
class Draw_Item extends StatefulWidget {
  String title;
  Draw_Item({Key key,@required this.title});
  @override
  _Draw_ItemState createState() => new _Draw_ItemState();
}

class _Draw_ItemState extends State<Draw_Item> {

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        Navigator.pop(context);
        Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("${widget.title}")));
      },
      child:new Column(
        children: <Widget>[
          new Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 0)
                  ,child: new Text(widget.title,style: TextStyle(fontSize: 16,color: Colors.grey),),),
                Image.asset("images/ic_arrows_right.png",width: 20,height: 20,)
              ],
            ),
          ),
          new Container(
            height: 0.3,
            color: Colors.grey,
          )
        ],
      ) ,
    );
  }
}
