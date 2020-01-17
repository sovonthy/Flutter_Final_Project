import 'package:flutter/material.dart';
import 'todoList.dart';
import 'alertDialog.dart';

void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Alert(),
    );
  }
  
}
