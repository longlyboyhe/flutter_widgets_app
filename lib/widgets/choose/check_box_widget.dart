import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：CheckBoxWidget

class CheckBoxWidget extends StatefulWidget {
  CheckBoxWidget({Key key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isCheck;
  bool _isMale;
  bool _isFemale;
  @override
  void initState() {
    super.initState();
    _isCheck = false;
    _isMale = true;
    _isFemale = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBoxWidget")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("1：普通Checkbox isCheck:$_isCheck",
          style: TextStyle(fontWeight: FontWeight.bold)),
        Checkbox(
//          tristate: true,
          /// 这个值不能是null(除非上面 tristate 是true)用来设置此checkbox 是否选中
          value: _isCheck,
          /// 勾选后  勾选框填充的颜色 默认是 ThemeData.toggleableActiveColor
          activeColor: Colors.red,
          /// 对勾的颜色  默认的是白色
          checkColor: Colors.blue,
          /// 是否选中发生变化时的回调， 回调的 bool 值 就是是否选中
          /// true 就是选中
          onChanged: (isCheck) {
            _isCheck = isCheck;
            //改变_CheckBoxState
            setState(() {});
          },
        ),
      Text("2: 用checkbox实现单选 选中:"+getSelected(),
          style: TextStyle(fontWeight: FontWeight.bold)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("男"),
              Checkbox(
                value: _isMale,
                onChanged: (isMan) {
                  setState(() {
                    if (isMan) {
                      _isMale = true;
                      _isFemale = false;
                    }
                  });
                },
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: <Widget>[
              Text("女"),
              Checkbox(
                value: _isFemale,
                onChanged: (isFemale) {
                  setState(() {
                    if (isFemale) {
                      _isFemale = true;
                      _isMale = false;
                    }
                  });
                },
              )
            ],
          )
        ],
      ),
        ],
      ),
    );
  }
  String getSelected(){
    return _isMale==true?"男":"女";
  }

}