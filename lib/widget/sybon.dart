import 'package:flutter/material.dart';
import 'package:ungcitkutub/utility/my_style.dart';

class Sybon extends StatefulWidget {
  @override
  _SybonState createState() => _SybonState();
}

class _SybonState extends State<Sybon> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        showLogo(),
        MyStyle().showTitle('คัตเตอร์'),
        sybon1(),
        MyStyle().mySizeBox(20.0),
        MyStyle().showTitle('Der Scheibenfräser'),
        sybon2()
      ],
    );
  }

  Container showLogo() => Container(
        width: 250.0,
        height: 250.0,
        child: Image.asset('images/logo.png'),
      );

  Text sybon1() => Text(
      'สัญลักษณ์แห่งความหลักแหลม เชี่ยวชาญในการประยุกต์องค์ความรู้ สู่การสร้าง ออกแบบและพัฒนางาน เทคโนโลยี และนวัตกรรม ให้สามารถใช้งานและเกิดประโยชน์ได้อย่างแท้จริงซึ่งเป็นคุณลักษณะและวัฒนธรรมการคิดเป็น ทำเป็น สามารถสร้างงาน สิ่งประดิษฐ์ และนวัตกรรม ให้ใช้ประโยชน์ได้จริงของประชาคมชาว มจพ. มาตั้งแต่ก่อตั้งมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ (มจพ.) ด้วยความร่วมมือทางด้านวิชาการและเศรษฐกิจระหว่างรัฐบาลไทยและรัฐบาลเยอรมันเมื่อวันที่ 19 กุมภาพันธ์ พ.ศ. 2502 จนกระทั่งปัจจุบัน');
  Text sybon2() => Text(
      'Die Entwicklung des Scheibenfräsers steht beispielhaft für die Innovationskraft und Expertise der KMUTNB in technologischer Entwicklung und Anwendung. Diese Kompetenzen, verbunden mit ihrer Nutzbarmachung für die Gesellschaft, markieren das besondere Profil und die Tradition der Universität, die am 19. Februar 1959 als Ergebnis der thai-deutschen Kooperation gegründet wurde.');
}
