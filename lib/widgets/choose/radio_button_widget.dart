import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：Radio组件
class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}


class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioButtonWidget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("男："),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
              SizedBox(width: 20),
              Text("女："),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("你选择的是${this.sex == 1 ? "男" : "女"}")
            ],
          )
        ],
      ),
    );
  }
}
 