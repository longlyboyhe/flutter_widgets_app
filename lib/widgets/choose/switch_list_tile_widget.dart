import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：SwitchListTileWidget

class SwitchListTileWidget extends StatefulWidget {
  SwitchListTileWidget({Key key}) : super(key: key);

  @override
  _SwitchListTileWidgetState createState() => _SwitchListTileWidgetState();
}

class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SwitchListTileWidget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SwitchListTile(
            // 是否选中 是否打开
            value: _isCheck,
            // 当打开关闭的时候的回调
            onChanged: (value){
              setState(() {
                _isCheck = value;
              });
            },
            // 选中时 滑块的颜色
            activeColor: Colors.red,
            // 选中时 滑道的颜色
            activeTrackColor: Colors.black,
            // 选中时 滑块的图片
//              activeThumbImage: AssetImage("images/hashiqi.jpg"),
            // 未选中时 滑块的颜色
            inactiveThumbColor: Colors.green,
            // 未选中时 滑道的颜色
            inactiveTrackColor: Colors.amberAccent,
            // 未选中时 滑块的颜色
            inactiveThumbImage: AssetImage("images/test.png"),
            // 标题
            title: Text("标题"),
            // 副标题 在标题下面的
//              subtitle: Text("副标题"),
            // 是不是三行， true 时： subtitle 不能为null， false时可以为 null
//              isThreeLine: true,
            // 如果为 true ，则 text 和 icon 都用 activeColor 时的color
//              selected: true,
            // 是否垂直密集居中
            dense: true,
            // 左边的一个东西
            secondary: Icon(Icons.access_time),
          ),
        ],
      ),
    );
  }
}