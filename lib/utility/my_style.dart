import 'package:flutter/material.dart';


class MyStyle {


  Widget myBG(){
    return  Column(mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 200,
                  height:250,
                  child: Image.asset('images/bg.png', fit: BoxFit.scaleDown,),
                ),
              ],
            ),
          ],
        );
  }




  MyStyle();
  
}