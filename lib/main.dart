import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_widgets/views/app/app.dart';
import 'package:flutter_study_widgets/views/app/bloc_wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //滚动性能优化 1.22.0
  GestureBinding.instance.resamplingEnabled = true;
  runApp(BlocWrapper(child: MyAPP()));
}
