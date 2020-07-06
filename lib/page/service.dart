import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/show_list_download.dart';
import 'package:ungcitkutub/utility/my_style.dart';
import 'package:url_launcher/url_launcher.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บริการวิชาการ'),
      ),
      body: Column(
        children: <Widget>[
          MyStyle().mySizeBox(50),
          buttonTop(),
          MyStyle().mySizeBox(15),
          buttonMediumTop(),
        ],
      ),
    );
  }

  Widget buttonTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 320.0,
          height: 40.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            onPressed: () {
              launchWebSite();
            },
            child: Text(
              'คลังข้อสอบ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonMediumTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 320.0,
          height: 40.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => ShowListDownload(),
              );
              Navigator.push(context, route);
            },
            child: Text(
              'ดาวน์โหลด',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Future<Null> launchWebSite() async {
    String url = 'http://cit.kmutnb.ac.th/examination/';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
