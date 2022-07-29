import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kalkulator/mylistview.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({Key? key, required this.name,}) : super(key: key);
  final String name;

  @override
  State<Kalkulator> createState() => _KalkulatorState();


}

class _KalkulatorState extends State<Kalkulator> {

  TextEditingController ctrangka1 = TextEditingController();
  TextEditingController ctrangka2 = TextEditingController();
  num angka1 = 0;
  num angka2 = 0;
  num hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text("Hello ${widget.name}", style: TextStyle(fontSize: 20),),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  angka1 = num.parse(value);
                });
              },
              controller: ctrangka1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Angka Pertama'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  angka2 = num.parse(value);
                });
              },
              controller: ctrangka2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Angka Kedua'
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    hasil = angka1 + angka2;
                  });
                }, child: Text('+')),

                ElevatedButton(onPressed: () {
                  setState(() {
                    hasil = angka1 - angka2;
                  });
                }, child: Text('-')),

                ElevatedButton(onPressed: () {
                  setState(() {
                    hasil = angka1 * angka2;
                  });
                }, child: Text('X')),

                ElevatedButton(onPressed: () {
                  setState(() {
                    hasil =  angka1 / angka2;
                  });
                }, child: Text('/')),
              ]),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              'hasil : $hasil',
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              child: Text('Berpindah'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Listview()));
              },
            ),
          )
        ]),
      ),
    );
  }
}


