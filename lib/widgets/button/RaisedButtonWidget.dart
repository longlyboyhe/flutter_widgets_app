import 'package:flutter/material.dart';

///* project_name：flutter_widgets_app
///* author： laohe
///* date： 2021/1/2
///*/
class RaisedButtonWidget extends StatefulWidget {
  @override
  State<RaisedButtonWidget> createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('按钮RaisedButton Widget实例'),
        ),
        body: Container(
            child: ListView(children: <Widget>[
          RaisedButton(
            child: Text('普通按钮'),
            onHighlightChanged: (bool b) {
              print(b);
            },
            onPressed: () {
              print('普通按钮 点击我了');
            },
          ),
          RaisedButton(
            child: Text('带颜色'),
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.blue[200],
          ),
          RaisedButton(
            child: Text('带颜色带阴影'),
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.blue[200],
            elevation: 15,
          ),
          Container(
            width: 300,
            height: 50,
            child: RaisedButton(
              child: Text('设置宽高'),
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.blue[500],
              elevation: 15,
            ),
          ),
          RaisedButton.icon(
            icon: Icon(Icons.account_box),
            label: Text('我前边有图标'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('圆角按钮'),
            onPressed: () {},
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            width: 100,
            height: 100,
            child: RaisedButton(
                child: Text('圆形按钮'),
                onPressed: () {},
                color: Colors.red,
                shape: CircleBorder(
                    // side: BorderSide(color: Colors.yellow[500])
                    )),
          ),
          RaisedButton(
            child: Text('水波纹'),
            onPressed: () {},
            color: Colors.blue[200],
            splashColor: Colors.yellow[100],
          ),
          RaisedButton(
            child: Text('长按变色'),
            onPressed: () {},
            color: Colors.blue[200],
            highlightColor: Colors.red[500],
          ),
        ])));
  }
}
