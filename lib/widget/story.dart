import 'package:flutter/material.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        MyStyle().showTitle('ปรัชญา'),
        story1(),
        story2(),
        MyStyle().mySizeBox(20.0),
        MyStyle().showTitle('ปณิธาน'),
        story3(),
        story4(),
      ],
    );
  }

  // Text story1() => Text('');
  Text story1() => Text(
      'ผลิตวิศวกรและนักเทคโนโลยีเฉพาะทางเพื่อพัฒนาอุตสาหกรรมในระดับนานาชาติ');
  Text story2() => Text(
      '(To Produce Engineers and Technologists Specialized in Specific Fields to Develop the Industries toward International Forum)');
  Text story3() =>
      Text('มุ่งมั่นสร้างบัณฑิตเฉพาะทางและนวัตกรที่มีคุณธรรมคู่คุณภาพ');
  Text story4() => Text(
      '(To Produce Specialized Graduates and Innovators with Ethics and Morality)');
  Text story5() => Text('');
  Text story6() => Text('');
  Text story7() => Text('');
  Text story8() => Text('');
  Text story9() => Text('');
  Text story10() => Text('');
}
