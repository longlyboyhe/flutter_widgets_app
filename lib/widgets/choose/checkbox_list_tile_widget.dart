import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：CheckboxListTileWidget

class CheckboxListTileWidget extends StatefulWidget {
  CheckboxListTileWidget({Key key}) : super(key: key);

  @override
  _CheckboxListTileState createState() => _CheckboxListTileState();
}

class _CheckboxListTileState extends State<CheckboxListTileWidget> {
  bool _value01 = false;
  bool _value02 = false;
  @override
  Widget build(BuildContext context) {
    String result01 = _value01?"是":"否";
    String result02 = _value02?"是":"否";
    return Scaffold(
        appBar: AppBar(title: Text("CheckboxListTileWidget")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CheckboxListTile(
              secondary: const Icon(Icons.alarm_on),
              title: Text('每天6：10 响铃:'+result01),
              subtitle: Text('12小时58分钟后响铃'),
              value: _value01,
              onChanged: (bool value) {
                setState(() {
                  _value01 = value;
                });
              },
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.alarm_on),
              title: Text('每天8：00 上课:'+result02),
              subtitle: Text('10小时48分钟后响铃'),
              value: _value02,
              onChanged: (bool value) {
                setState(() {
                  _value02 = value;
                });
              },
            ),
      ],
        )
    );
  }
}