import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/widgets/button/FlatButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/button/IconButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/button/OutLineButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/choose/check_box_widget.dart';
import 'package:flutter_widgets_app/widgets/choose/checkbox_list_tile_widget.dart';
import 'package:flutter_widgets_app/widgets/choose/radio_button_widget.dart';
import 'package:flutter_widgets_app/widgets/choose/radio_list_tile_widget.dart';
import 'package:flutter_widgets_app/widgets/choose/switch_list_tile_widget.dart';
import 'package:flutter_widgets_app/widgets/choose/switch_widget.dart';
import 'package:flutter_widgets_app/widgets/form/form_field_widget.dart';
import 'package:flutter_widgets_app/widgets/progress/progress_indicator_widget.dart';
import 'package:flutter_widgets_app/widgets/text/TextWidgets.dart';
import 'package:flutter_widgets_app/widgets/textField/text_field_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget实例大全'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
                padding: EdgeInsets.only(left: 20, right: 20),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TextWidgets();
                  }));
                },
                color: Colors.black,
                child: Text('Text Widgets',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return IconButtonWidget();
                  }));
                },
                color: Colors.black,
                child: Text('Button Widgets',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CheckboxListTileWidget();
                  }));
                },
                color: Colors.black,
                child: Text('选择组件Widgets',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TextFieldWidgets();
                  }));
                },
                color: Colors.black,
                child: Text('TextField Widgets',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return FormFieldWidget();
                  }));
                },
                color: Colors.black,
                child: Text('Form Widgets',
                    style: TextStyle(color: Colors.white, fontSize: 14))),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ProgressIndicatorWidget();
                  }));
                },
                color: Colors.black,
                child: Text('ProgressIndicatorWidget',
                    style: TextStyle(color: Colors.white, fontSize: 14)))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
