import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประวัติ'),
      ),
      body: Column(
        children: <Widget>[
          showHead(context),
          Expanded(
                      child: Container(width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Text('This is Content'),
            ),
          )
        ],
      ),
    );
  }

  Stack showHead(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120.0,
          color: Colors.grey,
          child: Image.asset('images/head.png'),
        ),
        Container(
          height: 120.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'ประวัติ',
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'ปรัชญา',
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'สัญลักษณ์',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
