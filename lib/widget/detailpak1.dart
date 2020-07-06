import 'package:flutter/cupertino.dart';

class Detailpak1 extends StatefulWidget {
  final String category;
  Detailpak1({Key key, this.category}) : super(key: key);
  @override
  _Detailpak1State createState() => _Detailpak1State();
}

class _Detailpak1State extends State<Detailpak1> {
  String category;

  @override
  void initState() {
    super.initState();
    category = widget.category;
  }

  @override
  Widget build(BuildContext context) {
    return Text('This is Catetory ==>> $category');
  }
}
