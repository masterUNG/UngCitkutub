import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/history.dart';
import 'package:ungcitkutub/page/my_boss.dart';
import 'package:ungcitkutub/page/my_content.dart';
import 'package:ungcitkutub/page/service.dart';
import 'package:ungcitkutub/utility/my_style.dart';
import 'package:url_launcher/url_launcher.dart';

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
                createItem('item1', History(), true, ''),
                createItem('item2', MyBoss(), true, ''),
                createItem('item3', MyContent(), true, '')
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item4', Service(), true, ''),
                createItem('item5', History(), false, 'http://research.cit.kmutnb.ac.th/cit/web/index.php?r=page%2Findex'),
                createItem('item6', History(), false, 'https://grade.icit.kmutnb.ac.th'),
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                createItem('item7', History(), false, 'http://klogic.kmutnb.ac.th:8080/kris/tess/dataQuery.jsp'),
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
  Widget createItem(String nameImage, Widget widget, bool status, String url) =>
      GestureDetector(
        onTap: () {
          if (status) {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => widget,
            );
            Navigator.push(context, route);
          } else {
            launchMyUrl(url);
          }
        },
        child: Image.asset('images/$nameImage.png'),
      );

  Future<Null> launchMyUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
