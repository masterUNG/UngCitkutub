import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ungcitkutub/page/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Home(), // ส่วนของการเปิดหน้าแรก
    );
  }
}
