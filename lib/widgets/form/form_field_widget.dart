import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {
  FormFieldWidget({Key key}) : super(key: key);

  @override
  _FormFieldWidgetState createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FormWidget")),
      body:  Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              onChanged: () {
                print('change');
              },
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '电话号码',
                    ),
                    validator: (value) {
                      RegExp reg = new RegExp(r'^\d{11}$');
                      if (!reg.hasMatch(value)) {
                        return '请输入11位手机号码';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '用户名',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return '请输入用户名';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          Row(children: <Widget>[
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  _formKey.currentState.reset();
                },
                child: Text('清空'),
              ),
            )
          ]),
          SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text('提交'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('提交成功'),
                        ));
                      }
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
