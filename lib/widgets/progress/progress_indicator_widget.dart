import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  ProgressIndicatorWidget({Key key}) : super(key: key);

  @override
  _ProgressIndicatorWidgetState createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProgressIndicatorWidget")),
      body:  Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text("1 直线型进度条"),
            LinearProgressIndicator(),
            Divider(height: 50),
            Text("直线型设置进度值: 0.5"),
            LinearProgressIndicator(
              value: 0.5, // 取值范围在 0~1 之间
            ),
            Divider(height: 50,),
            Text("直线型设置进度值：0.5 ，并且设置颜色的进度条"),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.greenAccent, // 进度条背景颜色
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red), // 设置值的颜色
            ),
            Divider(height: 50,),
            Text("圆形进度条"),
            CircularProgressIndicator(),
            Text("圆形进度条设置值：0.5 ,并且设置颜色"),
            CircularProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.greenAccent, // 进度条背景颜色
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red), // 设置值的颜色
            ),
          ],
        ),
      ),
    );
  }
}