import 'package:flutter/material.dart';
import 'package:ungcitkutub/widget/history_widget.dart';
import 'package:ungcitkutub/widget/story.dart';
import 'package:ungcitkutub/widget/sybon.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Text('ประวัติ'),
              Text('ปรัชญา'),
              Text('สัญญาลักษณ์'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HistoryWidget(),
            Story(),
            Sybon(),
          ],
        ),
      ),
    );

   
  }
}
