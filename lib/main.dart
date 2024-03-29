import 'package:flutter/material.dart';
import 'package:flutter_mvvmobx/view/user_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: UserView(),
    );
  }
}
