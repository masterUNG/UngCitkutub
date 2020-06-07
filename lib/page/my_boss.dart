import 'package:flutter/material.dart';

class MyBoss extends StatefulWidget {
  @override
  _MyBossState createState() => _MyBossState();
}

class _MyBossState extends State<MyBoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คณะผู้บริหาร'),),
    );
  }
}