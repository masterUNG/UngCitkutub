import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ungcitkutub/utility/my_constant.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class ShowListDegee extends StatefulWidget {
  final int degeeAInt;
  ShowListDegee({Key key, this.degeeAInt}) : super(key: key);
  @override
  _ShowListDegeeState createState() => _ShowListDegeeState();
}

class _ShowListDegeeState extends State<ShowListDegee> {
  List<String> listTitles = ['ปริญญาโท', 'ปริญญาตรี'];
  List<String> listdegree = ['ป.โท', 'ป.ตรี'];
  int index;

  List<String> deparments = List();

  @override
  void initState() {
    super.initState();
    index = widget.degeeAInt;
    readData();
  }

  Future<Null> readData() async {
    try {
      String url =
          '${MyConstant().domain}/cit/getDegreeWhereDegree.php?isAdd=true&degree=${listdegree[index]}';
      print('url = $url');
      Response response = await Dio().get(url);
      print('response = $response');

      if (response.toString() != 'null') {
        var result = json.decode(response.data);
        print('result = $result');
        for (var json in result) {
          setState(() {
            deparments.add(json['department']);
          });
        }
      }
    } catch (e) {
      print('e = ${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index == null ? '' : listTitles[index]),
      ),
      body: deparments.length == 0
          ? MyStyle().showProgress()
          : ListView.builder(
              itemCount: deparments.length,
              itemBuilder: (context, index) => showContent(index),
            ),
    );
  }

  Widget showContent(int index) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.orange,
            ),
            width: 250.0,
            child: ListTile(
              title: Text(
                deparments[index],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down, color: Colors.white,),
            ),
          ),
        ],
      );
}
