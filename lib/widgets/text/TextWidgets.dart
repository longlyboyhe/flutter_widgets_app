import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

///* project_name：flutter_widgets_app
///* author： laohe(老贺)
///* date： 2020/12/31
///*/
class TextWidgets extends StatefulWidget {
  @override
  State<TextWidgets> createState() => _TextWidgetsState();
}

class _TextWidgetsState extends State<TextWidgets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Widget实例'),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            Text(
              "红色+黑色删除线+20号",
              style: TextStyle(
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: const Color(0xff000000),
                  fontSize: 20.0),
            ),
            Text(
              "橙色+下划线+21号",
              style: TextStyle(
                  color: const Color(0xffff9900),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xffff9900),
                  fontSize: 21.0),
            ),
            Text(
              "虚线上划线+22号+倾斜",
              style: TextStyle(
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 22.0,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "serif字体+23号",
              style: TextStyle(
                fontFamily: "serif",
                fontSize: 23.0,
              ),
            ),
            Text(
              "monospace字体+24号+加粗",
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "天蓝色+25号+两行跨度",
              style: TextStyle(
                  color: Colors.cyan, fontSize: 25.0, height: 2.0),
            ),
            Text(
              "26号+10个字符间隔",
              style: TextStyle(fontSize: 26.0, letterSpacing: 10.0),
            ),
          Text(
            " 对齐方式：向右对齐  TextAlign.right  ",
            style: TextStyle(color: Colors.blue[400], fontSize: 24.0),
            textAlign: TextAlign.right,
          ),
          Text(
            "对齐方式：向左对齐  TextAlign.left ",
            style: TextStyle(color: Colors.blue[200], fontSize: 24.0),
            textAlign: TextAlign.left,
          ),
          Text(
            "对齐方式：居中对齐 TextAlign.center ",
            style: TextStyle(color: Colors.blue[400], fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          Text(
            "对齐方式： 两端对齐  TextAlign. justify ",
            style: TextStyle(color: Colors.blue[200], fontSize: 24.0),
            textAlign: TextAlign.justify,
          ),
          Text(
            "文本方向：从右到左  TextDirection.rtl ",
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
            textDirection: TextDirection.rtl,
          ),
          Text(
            "文本方向：从左到右  TextDirection.ltr ",
            style: TextStyle(color: Colors.blue, fontSize: 20.0),
            textDirection: TextDirection.ltr,
          ),
            Text(
              "单行显示，不换行。单行显示，不换行。 单行显示，不换行。",
              style: TextStyle(color: Colors.pink, fontSize: 20.0),
              overflow: TextOverflow.ellipsis, //超出用...代替
              softWrap: false, //不换行
//            maxLines: 2, //如果softWrap和maxLines同时赋值，以maxLines为最高优先级。
            ),
            Text(
              "字体10，倍率为2",
              style: TextStyle(color: Colors.yellow[700], fontSize: 10.0),
              textScaleFactor: 2.0,
            ),
            Text.rich(TextSpan(
              text: "one",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                decoration: TextDecoration.underline,
                decorationColor: Colors.purple,
                decorationStyle: TextDecorationStyle.wavy,
              ),
              children: [
                TextSpan(
                    text: "TWO",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.purple,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        var alert = AlertDialog(
                          title: Text("Title"),
                          content: Text("TWO"),
                        );
                        showDialog(context: context, child: alert);
                      }),
                TextSpan(
                    text: "THREE",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black12,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.redAccent,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        var alert = AlertDialog(
                          title: Text("Title"),
                          content: Text("THREE"),
                        );
                        showDialog(context: context, child: alert);
                      }),
                TextSpan(
                    text: "FOUR",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.green,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.yellowAccent,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        var alert = AlertDialog(
                          title: Text("Title"),
                          content: Text("FOUR"),
                        );
                        showDialog(context: context, child: alert);
                      })
              ],
            )),
          ]), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
