import 'package:flutter/material.dart';
import 'package:kalkulator/mydata.dart';
class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}
class _ListviewState extends State<Listview> {

  List<String> name = [
    "Amri",
    "Hiba",
    "Alwan",
    "Jati",
    "Wira",
    "Bimo",
    "Andika",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyData(),
                    settings: RouteSettings(
                      arguments: name[index],
                    ),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(name[index],style:  TextStyle(
                    fontSize: 18.0,
                    height: 2,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            );
          }
      ),
    );
  }
}