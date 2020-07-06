import 'package:flutter/material.dart';
import 'package:ungcitkutub/widget/calendar_page.dart';
import 'package:ungcitkutub/widget/department_page.dart';
import 'package:ungcitkutub/widget/main_page.dart';
import 'package:ungcitkutub/widget/map_page.dart';
import 'package:ungcitkutub/widget/news_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> currentWidget = [
    MainPage(),
    Departmentpage(),
    NewsPage(),
    MapPage(),
    CalendarPage(),
  ];
  int index = 0;

  BottomNavigationBarItem mainBottom() {
    return BottomNavigationBarItem(
      icon: Container(
        width: 48.0,
        height: 48.0,
        child: Image.asset('images/home.png'),
      ),
      activeIcon: Container(
        width: 48.0,
        height: 48.0,
        child: Image.asset('images/ahome.png'),
      ),
      title: Text(
        'หน้าแรก',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem departMentBottom() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        size: 48.0,
        color: Colors.white,
      ),
      title: Text(
        'ภาควิชา',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem newsBottom() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.perm_identity,
        size: 48.0,
        color: Colors.white,
      ),
      title: Text(
        'ข่าวสาร',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem mapBottom() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.map,
        size: 48.0,
        color: Colors.white,
      ),
      title: Text(
        'แผนที่',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem calendarBottom() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.calendar_today,
        size: 48.0,
        color: Colors.white,
      ),
      title: Text(
        'ปฎิทิน',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  List<BottomNavigationBarItem> setItem() {
    return <BottomNavigationBarItem>[
      mainBottom(),
      departMentBottom(),
      newsBottom(),
      mapBottom(),
      calendarBottom()
    ].toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentWidget[index],
      bottomNavigationBar: myBottomNav(),
      appBar: AppBar(
        title: Text('เมนูหลัก'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  BottomNavigationBar myBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.indigo,
      type: BottomNavigationBarType.fixed,
      items: setItem(),
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
    );
  }
}
