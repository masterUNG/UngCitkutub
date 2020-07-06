import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ungcitkutub/page/show_pdf.dart';
import 'package:ungcitkutub/utility/my_constant.dart';

class ShowListDownload extends StatefulWidget {
  @override
  _ShowListDownloadState createState() => _ShowListDownloadState();
}

class _ShowListDownloadState extends State<ShowListDownload> {
  List<String> fileNames = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllDownload();
  }

  Future<Null> readAllDownload() async {
    String url = '${MyConstant().domain}/cit/getAllDownload.php';
    Response response = await Dio().get(url);
    var result = json.decode(response.data);
    for (var map in result) {
      setState(() {
        fileNames.add(map['file_name']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Download'),
      ),
      body: fileNames.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: fileNames.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (context) => ShowPdf(
                      namePDF: fileNames[index],catigory: 'file_download',
                    ),
                  );
                  Navigator.push(context, route);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    child: Text(fileNames[index]),
                  ),
                ),
              ),
            ),
    );
  }
}
