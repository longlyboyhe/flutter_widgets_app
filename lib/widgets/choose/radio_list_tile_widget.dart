import 'package:flutter/material.dart';

/// create at 
/// by laohe(老贺)
/// describe：RadioListTileWidget

class RadioListTileWidget extends StatefulWidget {

  RadioListTileWidget({Key key}) : super(key: key);

  @override
  _RadioListTileWidgetState createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioListTile")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RadioListTile(
            value: 1,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            groupValue: this.sex,
            title: Text("一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.camera),
            selected: this.sex == 1,
          ),
          RadioListTile(
            value: 2,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            groupValue: this.sex,
            title: Text("一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.palette),
            selected: this.sex == 2,
          ),
        ],
      ),
    );
  }
}