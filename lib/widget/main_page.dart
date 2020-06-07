import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/history.dart';
import 'package:ungcitkutub/page/my_boss.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MyStyle().myBG(),
        Column(
          children: <Widget>[
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item1', History()),
                createItem('item2', MyBoss()),
                createItem('item3', History())
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item4', History()),
                createItem('item5', History()),
                createItem('item6', History())
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                createItem('item7', History()),
              ],
            )
          ],
        ),
      ],
    );
  }

  SizedBox mySizebox() {
    return SizedBox(
      height: 24.0,
    );
  }

  //เมธอดที่ทำหน้าที่ ย้ายการทำงานไปหน้า ที่เราคลิกที่ ไอเทม
  Widget createItem(String nameImage, Widget widget) => GestureDetector(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(builder: (context) => widget,);
          Navigator.push(context, route);
        },
        child: Image.asset('images/$nameImage.png'),
      );
}
