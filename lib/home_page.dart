import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternavigator/page.dart';

///
///
/// Create By WT
/// Create Time 2021/03/01
///
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _homePages = [];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _homePages
      ..add(MyPage("0"))
      ..add(MyPage("1"))
      ..add(MyPage("2"))
      ..add(MyPage("3"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        centerTitle: true,
      ),
      body: _homePages[_index],
      bottomNavigationBar: BottomAppBar(
        child: buildBottomAppBar(),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  buildBottomAppBar() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (){
              changePage(0);
            },
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.comment), Text("首页")],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              changePage(1);
            },
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.comment), Text("首页1")],
              ),
            ),
          ),
          Container(height: 0,),
          GestureDetector(
            onTap: (){
              changePage(2);
            },
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.comment), Text("首页2")],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              changePage(3);
            },
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.comment), Text("首页3")],
              ),
            ),
          )
        ],
      ),
    );
  }

  void changePage(index) {
     _index = index;
    setState(() {

    });
  }
}
