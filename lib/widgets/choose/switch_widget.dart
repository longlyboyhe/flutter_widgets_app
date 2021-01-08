import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：SwitchWidget

class SwitchWidget extends StatefulWidget {
  SwitchWidget({Key key}) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SwitchWidget")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Switch(
              value: this.flag,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  this.flag = value;
                });
              },
            ),
            Text("此时的状态是${this.flag == true ? "已选中" : "未选中"}")
          ],
        )
    );
  }
}