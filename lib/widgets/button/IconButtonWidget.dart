import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IconButtonWidget实例'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ///普通Icon，无文字
              Icon(
                Icons.qr_code,
              ),
              Divider(height: 20),
              ///普通Icon，有文字
              Icon(
                Icons.backspace,
                color: Colors.blue,
                textDirection: TextDirection.ltr,
              ),
              Divider(height: 20),
              ///加载本地Icon，设置颜色和大小
              ImageIcon(
                AssetImage('images/test.png'),
                color: Colors.red,
                size: 50,
              ),
              Divider(height: 20),
              ///IconButton，设置文字按钮，颜色和大小，点击效果
              IconButton(
                onPressed: () {},
                icon: getTextRich(),
                color: Colors.blue,
                iconSize: 50,
                highlightColor: Color(0x991B5E20),
                splashColor: Color(0x990D47A1),
                disabledColor: Color(0xFF0D47A1),
                tooltip: "I is IconButton tooltip",
              ),
              Divider(height: 20),
              ///IconButton，设置本地图片按钮，大小，点击效果
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/test.png',
                  matchTextDirection: false,
                  fit: BoxFit.fitWidth,
                ),
                iconSize: 50,
                highlightColor: Color(0x991B5E20),
                splashColor: Color(0x990D47A1),
                disabledColor: Color(0xFF0D47A1),
              ),
              Divider(height: 20),
              ///Image.asset，本地图片
              Image.asset(
                'images/test.png',
                matchTextDirection: false,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ));
  }

  Widget getTextRich() {
    List children = new List<TextSpan>();
    children.add(TextSpan(text: "老贺", style: TextStyle(color: Colors.black)));
    children
        .add(TextSpan(text: "IconButton", style: TextStyle(color: Colors.red)));
    children.add(TextSpan(text: "study", style: TextStyle(color: Colors.blue)));
    TextSpan textSpan = new TextSpan(children: children);
    return Text.rich(
      textSpan,
    );
  }
}
