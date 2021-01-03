import 'package:flutter/material.dart';

///
/// project_name：flutter_widgets_app
/// author： laohe(老贺)
/// date： 2021/1/2
///
class OutlineButtonWidget extends StatelessWidget {
  OutlineButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OutlineButtonWidget实例'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //图标线框按钮
              OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.adb,
                    size: 28.0,
                    color: Colors.green,
                  ),
                  label: Text('图标线框按钮')),
              //文字线框按钮
              OutlineButton(
                child: Text('线框按钮'),
                onPressed: () {},
                //按钮背景色-没什么效果
                color: Colors.green,
                //按下时的边框色
                highlightedBorderColor: Colors.orange,
                //按下时的背景色
                highlightColor: Colors.orange,
                //失效时的边框颜色（当onPressed为null时即为失效状态）
                disabledBorderColor: Colors.grey,
                //失效时的文字颜色（当onPressed为null时即为失效状态）
                disabledTextColor: Colors.black,
                //文字颜色
                textColor: Colors.black,
                //按钮主题 ButtonTheme ButtonThemeData ButtonTextTheme ThemeData
                textTheme: ButtonTextTheme.normal,
                //墨汁飞溅的颜色、水波纹的颜色
                splashColor: Colors.red,
                //抗锯齿能力
                clipBehavior: Clip.antiAlias,
                //内边距
                padding:
                    EdgeInsets.only(bottom: 5.0, top: 5.0, left: 20, right: 20),
                //边框样式  shape也能设置，borderSide也能设置，borderSide更适合于OutlineButton。
                borderSide: BorderSide(color: Colors.pink, width: 3.0),
                //边框样式，矩形
                // shape:Border.all(
                //   width: 2.0,
                //   color: Colors.green,
                //   style: BorderStyle.solid
                // ),
                //圆角矩形样式
                // shape: RoundedRectangleBorder(
                //     side: BorderSide(
                //         width: 2.0,
                //         color: Colors.white,
                //         style: BorderStyle.solid),
                //     borderRadius: BorderRadius.only(
                //       topRight: Radius.circular(10.0),
                //       topLeft: Radius.circular(10.0),
                //       bottomLeft: Radius.circular(10.0),
                //       bottomRight: Radius.circular(10.0),
                //     )),
              )
            ],
          ),
        ));
  }
}
