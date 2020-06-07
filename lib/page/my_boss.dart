import 'package:flutter/material.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class MyBoss extends StatefulWidget {
  @override
  _MyBossState createState() => _MyBossState();
}

class _MyBossState extends State<MyBoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คณะผู้บริหาร'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            row1(),
            MyStyle().mySizeBox(20.0),
            row2(),
            MyStyle().mySizeBox(20.0),
            row3(),
            MyStyle().mySizeBox(20.0),
            row4(),
            MyStyle().mySizeBox(20.0),
            row5(),
            MyStyle().mySizeBox(20.0),
            row6(),
            MyStyle().mySizeBox(20.0),
          ],
        ),
      ),
    );
  }

  Row row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        createImage('persor1'),
      ],
    );
  }

  Row row2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        createImage('persor2'),
        createImage('persor3'),
      ],
    );
  }

  Row row3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        createImage('persor4'),
        createImage('persor5'),
      ],
    );
  }

  Row row4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        createImage('persor6'),
        createImage('persor7'),
      ],
    );
  }

  Row row5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        createImage('persor8'),
        createImage('persor9'),
      ],
    );
  }

  Row row6() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        createImage('persor10'),
        createImage('persor11'),
      ],
    );
  }

  Container createImage(String string) => Container(
        width: 150.0,
        height: 200.0,
        child: Image.asset('images/$string.png'),
      );
}
