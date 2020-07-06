//import 'package:citkmutnb/widget/pak1.dart';
import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/pak1.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class Departmentpage extends StatefulWidget {
  @override
  _DepartmentpageState createState() => _DepartmentpageState();
}

class _DepartmentpageState extends State<Departmentpage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak1'), Pak1(nameImage: 'Pak1',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 1',)),
            createimg(('Pak2'), Pak1(nameImage: 'Pak2',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 2',)),
          ],
        ),
        MyStyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak3'), Pak1(nameImage: 'Pak3',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 3',)),
            createimg(('Pak4'), Pak1(nameImage: 'Pak4',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 4',)),
          ],
        ),
        MyStyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak5'), Pak1(nameImage: 'Pak5',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 5',)),
            createimg(('Pak6'), Pak1(nameImage: 'Pak6',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 6',)),
          ],
        ),
        MyStyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak7'), Pak1(nameImage: 'Pak7',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 7',)),
            createimg(('Pak8'), Pak1(nameImage: 'Pak8',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 8',)),
          ],
        ),
        MyStyle().fixSizeBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            createimg(('Pak9'), Pak1(nameImage: 'Pak9',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 1',)),
            createimg(('Pak10'), Pak1(nameImage: 'Pak10',title: 'ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์ 1',)),
          ],
        ),
      ],
    );
  }

  Widget createimg(String nameimg, Widget widget) => GestureDetector(
        onTap: () {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => widget,
          );
          Navigator.push(context, route);
        },
        child: Container(
          child: Image.asset('images/$nameimg.png'),
          width: 300,
          height: 200,
        ),
      );
}
