import 'package:flutter/material.dart';

///
///
/// Create By WT
/// Create Time 2021/03/01
///
class MyPage extends StatelessWidget {
  String text;

  MyPage(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
