import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/widgets/button/FlatButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/button/IconButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/button/OutLineButtonWidget.dart';
import 'package:flutter_widgets_app/widgets/text/TextWidgets.dart';

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
                padding: EdgeInsets.only(left: 20,right: 20),
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return TextWidgets();
                  }));
                },
                color: Colors.black,
                child: Text('Text Widgets',
                    style: TextStyle(color:Colors.white,fontSize: 14))),
            RaisedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return IconButtonWidget();
              }));
                },
                color: Colors.black,
                child: Text('Button Widgets',
                    style: TextStyle(color:Colors.white,fontSize: 14)))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
