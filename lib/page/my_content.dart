import 'package:flutter/material.dart';

class MyContent extends StatefulWidget {
  @override
  _MyContentState createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หลักสูตร'),
      ),
      body: Column(
        children: <Widget>[
          buttonTop(),
        ],
      ),
    );
  }

  Widget buttonTop() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(width: 250.0,
          child: RaisedButton(
            onPressed: () {},
            child: Text('ปริญญาโท'),
          ),
        ),
      ],
    );
  }
}
