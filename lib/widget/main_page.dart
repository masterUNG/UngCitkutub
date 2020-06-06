import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[createItem('item1'), createItem('item2'),createItem('item3')],
    );
  }

  Image createItem(String nameImage) => Image.asset('images/$nameImage.png');
}
