import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/show_list_degee.dart';
import 'package:ungcitkutub/utility/my_style.dart';

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
          MyStyle().mySizeBox(50.0),
          buttonTop(),
          mediumButton(),
          bottomButton(),
        ],
      ),
    );
  }

  Widget buttonTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            onPressed: () => routeToDegree(0),
            child: Text(
              'ปริญญาโท',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void routeToDegree(int index){
    MaterialPageRoute route = MaterialPageRoute(builder: (context) => ShowListDegee(degeeAInt: index,),);
    Navigator.push(context, route);
  }

  Widget mediumButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            onPressed: () => routeToDegree(1),
            child: Text(
              'ปริญญาตรี',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.orange,
            onPressed: () {},
            child: Text(
              'ประกาศนีบัตรวิชาชีพ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
