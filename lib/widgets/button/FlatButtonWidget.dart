import 'package:flutter/material.dart';

///
/// project_name：flutter_widgets_app
/// author： laohe(老贺)
/// date： 2021/1/2
///
class FlatButtonWidget extends StatefulWidget {
  @override
  State<FlatButtonWidget> createState() => _FlatButtonWidgetState();
}

class _FlatButtonWidgetState extends State<FlatButtonWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlatButtonWidget实例'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
          child: ListView(
        children: [
          FlatButton(
            onPressed: () {},
            child: Text("普通扁平按钮"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("扁平按钮-带边框"),
            color: Colors.blue,
            textColor: Colors.black,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("扁平按钮-顶端斜角"),
            color: Colors.blue,
            textColor: Colors.white,
            shape: BeveledRectangleBorder(
                side: BorderSide(
                    color: Colors.red, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
          ),
          Container(
            width: 100,
            height: 100,
            child: FlatButton(
                onPressed: () {},
                child: Text("扁平按钮-圆形"),
                color: Colors.blue,
                textColor: Colors.white,
                shape: CircleBorder(
                    side: BorderSide(
                        color: Colors.blue,
                        width: 3.0,
                        style: BorderStyle.solid))),
          ),
          FlatButton(
              onPressed: () {},
              child: Text("扁平按钮-圆角"),
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                      style: BorderStyle.solid))),
          FlatButton(
              onPressed: () {},
              child: Text("扁平按钮-半圆角"),
              color: Colors.blue,
              textColor: Colors.white,
              shape: StadiumBorder(
                  side: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                      style: BorderStyle.solid))),
        ],
      )),
    );
  }
}
