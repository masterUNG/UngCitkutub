import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:ungcitkutub/utility/my_constant.dart';

class ShowPdf extends StatefulWidget {
  final String namePDF;
  final String catigory;
  ShowPdf({Key key, this.namePDF, this.catigory}) : super(key: key);
  @override
  _ShowPdfState createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdf> {
  String namePDF, catigory;
  PDFDocument pdfDocument;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namePDF = widget.namePDF;
    catigory = widget.catigory;
    loadPDF();
  }

  Future<Null> loadPDF() async {
    try {
      String url = '${MyConstant().domain}/cit/$catigory/$namePDF';
      print('urlPDF ===>> $url');
      var object = await PDFDocument.fromURL(url);
      setState(() {
        pdfDocument = object;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pdfDocument == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(document: pdfDocument),
    );
  }
}
