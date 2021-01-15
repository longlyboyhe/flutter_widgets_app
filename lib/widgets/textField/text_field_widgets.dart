import 'package:flutter/material.dart';

/// create at
/// by laohe(老贺)
/// describe：

class TextFieldWidgets extends StatefulWidget {
  TextFieldWidgets({Key key}) : super(key: key);

  @override
  _TextFieldWidgetsState createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldWidgets'),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          Text(
            "1 默认展示",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(),
          ),

          ///默认展示
          Divider(),
          Text(
            "2 多行输入",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(hintText: '多行文本'),
            ),
          ),
          Divider(),
          Text(
            "3 密码输入",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: '密码框'),
            ),
          ),
          Divider(),
          Text(
            "4 游标颜色、粗细，控制输入长度",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                autofocus: true,
                cursorColor: Colors.deepOrange,
                cursorRadius: Radius.circular(20.0),
                cursorWidth: 10.0,
                maxLength: 10,
              )),
          Divider(),
          Text(
            "5 下划线(隐藏)",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
                autofocus: true,
                decoration: InputDecoration(border: InputBorder.none //隐藏下划线
                    )),
          ),
          Divider(),
          Text(
            "6 下划线(改变属性)",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
                autofocus: true,
                decoration: InputDecoration(border: InputBorder.none //隐藏下划线
                    )),
            decoration: BoxDecoration(
                // 下滑线橘色700，宽度3像素
                border: Border(
                    bottom: BorderSide(color: Colors.orange[700], width: 3.0))),
          ),
          Divider(),
          Text(
            "7 圆角输入框",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
            child: TextField(
              autofocus: true,
              cursorColor: Colors.deepOrange,
              cursorRadius: Radius.circular(20.0),
              cursorWidth: 10.0,
              maxLength: 10,
              obscureText: true,
              decoration: InputDecoration(
                //  文本内容的内边距
                  contentPadding: EdgeInsets.all(10.0),
                  // 圆角矩形的输入框样式
                  border: OutlineInputBorder(
                    // 圆角半径 10
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            )
          ),
          Divider(),
          Text(
            "8 带有图标输入框",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: "密码",
                    hintText: "您的登录密码",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                ),
                obscureText: true,
              )
          ),
          Divider(),
          Text(
            "9 监听内容变化，获取输入框的内容",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onEditingComplete:(){
                  print('editing ');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    labelText: "用户名",
                    helperText: '请输入用户名、手机号',
                    hintText: "用户名或手机号",
                    prefixIcon: Icon(Icons.person)
                ),
                textInputAction:TextInputAction.go,
                // 将键盘显示类型设置为文本键盘
                keyboardType: TextInputType.text,
              )
          ),
          Divider(),
          Text(
            "10 改变键盘右下角的功能键",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onEditingComplete:(){
                  print('editing ');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    labelText: "用户名",
                    helperText: '请输入用户名、手机号',
                    hintText: "用户名或手机号",
                    prefixIcon: Icon(Icons.person)
                ),
                textInputAction:TextInputAction.go,
                // 将键盘显示类型设置为文本键盘
                keyboardType: TextInputType.text,
              )
          ),
          Divider(),
          Text(
            "11 改变键盘的输入类型",
            style: TextStyle(color: Colors.black, fontSize: 18.0),
            textAlign: TextAlign.left,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onEditingComplete:(){
                  print('editing ');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    labelText: "用户名",
                    helperText: '请输入用户名、手机号',
                    hintText: "用户名或手机号",
                    prefixIcon: Icon(Icons.person)
                ),
                textInputAction:TextInputAction.go,
                // 将键盘显示类型设置为文本键盘
                keyboardType: TextInputType.text,
              )
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onEditingComplete:(){
                  print('editing ');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: "密码",
                    hintText: "您的登录密码",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                ),
                obscureText: true,
                textInputAction:TextInputAction.go,
                // 将键盘显示类型设置为数字键盘
                keyboardType: TextInputType.number,
              )
          ),
        ],
      )),
    );
  }
}
