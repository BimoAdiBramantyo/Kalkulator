import 'package:flutter/material.dart';
import 'package:kalkulator/mylistview.dart';
class MyData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Data"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text("Nama Saya $routeArgs"),
      ),
    );
  }
}